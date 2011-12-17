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

#import <UIKit/UIKit.h>
#import "iCadeReaderView.h"

@interface iCadeTestViewController : UIViewController<iCadeEventDelegate> {

    UIButton *buttonA;
    UIButton *buttonB;
    UIButton *buttonC;
    UIButton *buttonD;
    UIButton *buttonE;
    UIButton *buttonF;
    UIButton *buttonG;
    UIButton *buttonH;
    UIImageView *stick;

    CGPoint _stickCenter;
}
@property (nonatomic, retain) IBOutlet UIButton *buttonA;
@property (nonatomic, retain) IBOutlet UIButton *buttonB;
@property (nonatomic, retain) IBOutlet UIButton *buttonC;
@property (nonatomic, retain) IBOutlet UIButton *buttonD;
@property (nonatomic, retain) IBOutlet UIButton *buttonE;
@property (nonatomic, retain) IBOutlet UIButton *buttonF;
@property (nonatomic, retain) IBOutlet UIButton *buttonG;
@property (nonatomic, retain) IBOutlet UIButton *buttonH;

@property (nonatomic, retain) IBOutlet UIImageView *stick;
@end
