# iCADE-iOS
Project which demonstrates using the iCADE, iControlPad and Gametel with iOS devices.

## Demo
Pair up you iCADE, iControlPad or Gametel controller, run the project and you're off.

## Usage
To use in your own app, copy the following 3 files from the iCade folder:

* `iCadeReaderView.h`, `iCadeReaderView.m` and `iCadeState.h`

Add an instance of `iCadeReaderView` to your main game view.  Set `view.active = YES` to ensure 
the view receives events from the controller.  In addition, when active, the view will 
automatically handle `didEnterBackground` and `didBecomeActive` notifications, to avoid loss of events.  
You can either read the `iCadeReaderView.iCadeState` property to determine the current state, or 
implement the `iCadeEventDelegate` protocol on your target to receive appropriate notifications.

## Hardware Compatibility
* [iCADE](http://www.thinkgeek.com/electronics/retro-gaming/e762/), 
* [iControlPad](http://icontrolpad.com/home) with [firmware revision 2.0](http://icontrolpad.com/support)
* [Gametel](http://gametelcontroller.com/index.php/support/developer)

### Mapping
Lists the mapping between various controllers.  Directional controls are the same.  It is recommended 
you use the latest [v2.3](http://boards.openpandora.org/index.php?/topic/5137-new-icp-test-firmware-v21/page__view__findpost__p__125398) iControlPad firmware and start the device by holding down A+B+Y then START.  This firmware will be official soon.

8 buttons are mapped as follows:

	iCADE    iControlPad (2.1a, 2.3), Gametel
	A        SELECT
	B        LEFT SHOULDER
	C        START
	D        RIGHT SHOULDER
	E        Y
	F        A
	G        B
	H        X
	
The iCADE button layout is:

	A C E G
	B D F H

## License
Copyright (C) 2011, 2012 by Stuart Carnie

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.


