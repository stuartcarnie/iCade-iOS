//
//  iCadeTestViewController.h
//  iCadeTest
//
//  Created by Stuart Carnie on 6/16/11.
//  Copyright 2011 Manomio LLC. All rights reserved.
//

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
