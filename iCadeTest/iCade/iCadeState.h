//
//  iCadeState.h
//  iCadeTest
//
//  Created by Stuart Carnie on 6/16/11.
//  Copyright 2011 Manomio LLC. All rights reserved.
//

typedef enum iCadeState {
    iCadeJoystickNone       = 0x000,
    iCadeJoystickUp         = 0x001,
    iCadeJoystickRight      = 0x002,
    iCadeJoystickDown       = 0x004,
    iCadeJoystickLeft       = 0x008,
    
    iCadeJoystickUpRight    = iCadeJoystickUp   | iCadeJoystickRight,
    iCadeJoystickDownRight  = iCadeJoystickDown | iCadeJoystickRight,
    iCadeJoystickUpLeft     = iCadeJoystickUp   | iCadeJoystickLeft,
    iCadeJoystickDownLeft   = iCadeJoystickDown | iCadeJoystickLeft,
    
    iCadeButtonA            = 0x010,
    iCadeButtonB            = 0x020,
    iCadeButtonC            = 0x040,
    iCadeButtonD            = 0x080,
    iCadeButtonE            = 0x100,
    iCadeButtonF            = 0x200,
    iCadeButtonG            = 0x400,
    iCadeButtonH            = 0x800,
    
} iCadeState;
