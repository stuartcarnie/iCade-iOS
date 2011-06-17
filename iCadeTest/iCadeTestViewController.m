//
//  iCadeTestViewController.m
//  iCadeTest
//
//  Created by Stuart Carnie on 6/16/11.
//  Copyright 2011 Manomio LLC. All rights reserved.
//

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
    [control becomeFirstResponder];
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
