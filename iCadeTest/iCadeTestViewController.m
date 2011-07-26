/*
 Copyright (C) 2011 by Stuart Carnie
 
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
 */


#import "iCadeTestViewController.h"
#import "iCadeReaderView.h"

@implementation iCadeTestViewController
@synthesize buttonA;
@synthesize buttonB;
@synthesize buttonC;
@synthesize buttonD;
@synthesize buttonE;
@synthesize buttonF;
@synthesize buttonG;
@synthesize buttonH;
@synthesize stick;

- (void)dealloc
{
    [buttonA release];
    [buttonB release];
    [buttonC release];
    [buttonD release];
    [buttonE release];
    [buttonF release];
    [buttonG release];
    [buttonH release];
    [stick release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    iCadeReaderView *control = [[iCadeReaderView alloc] initWithFrame:CGRectZero];
    [self.view addSubview:control];
    control.active = YES;
    control.delegate = self;
    [control release];    
    _stickCenter = stick.center;
}

- (void)viewDidUnload
{
    [self setButtonA:nil];
    [self setButtonB:nil];
    [self setButtonC:nil];
    [self setButtonD:nil];
    [self setButtonE:nil];
    [self setButtonF:nil];
    [self setButtonG:nil];
    [self setButtonH:nil];
    [self setStick:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)setState:(BOOL)state forButton:(iCadeState)button {
    CGPoint center =  stick.center;
    const CGFloat offset = 50.0f;
    
    switch (button) {
        case iCadeButtonA:
            buttonA.selected = state;
            break;
        case iCadeButtonB:
            buttonB.selected = state;
            break;
        case iCadeButtonC:
            buttonC.selected = state;
            break;
        case iCadeButtonD:
            buttonD.selected = state;
            break;
        case iCadeButtonE:
            buttonE.selected = state;
            break;
        case iCadeButtonF:
            buttonF.selected = state;
            break;
        case iCadeButtonG:
            buttonG.selected = state;
            break;
        case iCadeButtonH:
            buttonH.selected = state;
            break;
            
        case iCadeJoystickUp:
            if (state) {
                center.y -= offset;
            } else {
                center.y += offset;
            }
            break;
        case iCadeJoystickRight:
            if (state) {
                center.x += offset;
            } else {
                center.x -= offset;
            }
            break;
        case iCadeJoystickDown:
            if (state) {
                center.y += offset;
            } else {
                center.y -= offset;
            }
            break;
        case iCadeJoystickLeft:
            if (state) {
                center.x -= offset;
            } else {
                center.x += offset;
            }
            break;
            
        default:
            break;
    }
    stick.center = center;

}

- (void)buttonDown:(iCadeState)button {
    [self setState:YES forButton:button];
}

- (void)buttonUp:(iCadeState)button {
    [self setState:NO forButton:button];    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
