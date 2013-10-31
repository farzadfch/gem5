/*
 * Copyright (c) 2013 ARM Limited
 * All rights reserved
 *
 * The license below extends only to copyright in the software and shall
 * not be construed as granting a license to any other intellectual
 * property including but not limited to intellectual property relating
 * to a hardware implementation of the functionality of the software
 * licensed hereunder.  You may use the software subject to the license
 * terms below provided that you ensure that this notice is replicated
 * unmodified and in its entirety in all distributions of the software,
 * modified or unmodified, in source code or in binary form.
 *
 * Copyright (c) 2002-2005 The Regents of The University of Michigan
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met: redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer;
 * redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution;
 * neither the name of the copyright holders nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * Authors: Nathan Binkert
 */

#include <string>

#include "base/callback.hh"
#include "base/hostinfo.hh"
#include "sim/eventq_impl.hh"
#include "sim/sim_events.hh"
#include "sim/sim_exit.hh"
#include "sim/stats.hh"

using namespace std;

SimLoopExitEvent::SimLoopExitEvent()
    : Event(Sim_Exit_Pri, IsExitEvent | AutoSerialize),
      cause(""), code(0), repeat(0)
{
}

SimLoopExitEvent::SimLoopExitEvent(const std::string &_cause, int c, Tick r,
                                   bool serialize)
    : Event(Sim_Exit_Pri, IsExitEvent | (serialize ? AutoSerialize : 0)),
      cause(_cause), code(c), repeat(r)
{
}


//
// handle termination event
//
void
SimLoopExitEvent::process()
{
    // if this got scheduled on a different queue (e.g. the committed
    // instruction queue) then make a corresponding event on the main
    // queue.
    if (!isFlagSet(IsMainQueue)) {
        exitSimLoop(cause, code);
        setFlags(AutoDelete);
    }

    // otherwise do nothing... the IsExitEvent flag takes care of
    // exiting the simulation loop and returning this object to Python

    // but if you are doing this on intervals, don't forget to make another
    if (repeat) {
        assert(isFlagSet(IsMainQueue));
        mainEventQueue.schedule(this, curTick() + repeat);
    }
}


const char *
SimLoopExitEvent::description() const
{
    return "simulation loop exit";
}

void
SimLoopExitEvent::serialize(ostream &os)
{
    paramOut(os, "type", string("SimLoopExitEvent"));
    Event::serialize(os);

    SERIALIZE_SCALAR(cause);
    SERIALIZE_SCALAR(code);
    SERIALIZE_SCALAR(repeat);
}

void
SimLoopExitEvent::unserialize(Checkpoint *cp, const string &section)
{
    Event::unserialize(cp, section);

    UNSERIALIZE_SCALAR(cause);
    UNSERIALIZE_SCALAR(code);
    UNSERIALIZE_SCALAR(repeat);
}

Serializable *
SimLoopExitEvent::createForUnserialize(Checkpoint *cp, const string &section)
{
    return new SimLoopExitEvent();
}

REGISTER_SERIALIZEABLE("SimLoopExitEvent", SimLoopExitEvent)

void
exitSimLoop(const std::string &message, int exit_code, Tick when, Tick repeat,
            bool serialize)
{
    Event *event = new SimLoopExitEvent(message, exit_code, repeat, serialize);
    mainEventQueue.schedule(event, when);
}

//
// constructor: automatically schedules at specified time
//
CountedExitEvent::CountedExitEvent(const std::string &_cause, int &counter)
    : Event(Sim_Exit_Pri), cause(_cause), downCounter(counter)
{
    // catch stupid mistakes
    assert(downCounter > 0);
}


//
// handle termination event
//
void
CountedExitEvent::process()
{
    if (--downCounter == 0) {
        exitSimLoop(cause, 0);
    }
}


const char *
CountedExitEvent::description() const
{
    return "counted exit";
}
