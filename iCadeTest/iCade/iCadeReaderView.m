//
//  iCadeReaderView.m
//  iCadeTest
//
//  Created by Stuart Carnie on 6/16/11.
//  Copyright 2011 Manomio LLC. All rights reserved.
//

#import "iCadeReaderView.h"

static const char *ON_STATES  = "wdxayhujikol";
static const char *OFF_STATES = "eczqtrfnmpgv";

@implementation iCadeReaderView

@synthesize iCadeState=_iCadeState, delegate=_delegate;

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    inputView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
    
    return self;
}

- (BOOL)canBecomeFirstResponder { 
    return YES; 
}

//- (void) drawRect:(CGRect)rect 
//{
// This space intentionally left blank. Woot.
//}

- (UIView*) inputView {
    return inputView;
}

- (void)setDelegate:(id<iCadeEventDelegate>)delegate {
    _delegate = delegate;
    if (!_delegate) return;
    
    _delegateFlags.stateChanged = [_delegate respondsToSelector:@selector(stateChanged:)];
    _delegateFlags.buttonDown = [_delegate respondsToSelector:@selector(buttonDown:)];
    _delegateFlags.buttonUp = [_delegate respondsToSelector:@selector(buttonUp:)];
}

#pragma mark -
#pragma mark UIKeyInput Protocol Methods

- (BOOL)hasText {
    return NO;
}

- (void)insertText:(NSString *)text {
    
    char ch = [text characterAtIndex:0];
    char *p = strchr(ON_STATES, ch);
    bool stateChanged = false;
    if (p) {
        int index = p-ON_STATES;
        _iCadeState |= (1 << index);
        stateChanged = true;
        if (_delegateFlags.buttonDown) {
            [_delegate buttonDown:(1 << index)];
        }
    } else {
        p = strchr(OFF_STATES, ch);
        if (p) {
            int index = p-OFF_STATES;
            _iCadeState &= ~(1 << index);
            stateChanged = true;
            if (_delegateFlags.buttonUp) {
                [_delegate buttonUp:(1 << index)];
            }
        }
    }

    if (stateChanged && _delegateFlags.stateChanged) {
        [_delegate stateChanged:_iCadeState];
    }
    
    static int cycleResponder = 0;
    if (++cycleResponder > 20) {
        // necessary to clear a buffer that accumulates internally
        cycleResponder = 0;
        [self resignFirstResponder];
        [self becomeFirstResponder];
    }
}

- (void)deleteBackward {
    // This space intentionally left blank to complete protocol. Woot.
}

@end
