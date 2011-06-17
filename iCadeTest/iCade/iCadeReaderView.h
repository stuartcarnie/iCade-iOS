//
//  iCadeReaderView.h
//  iCadeTest
//
//  Created by Stuart Carnie on 6/16/11.
//  Copyright 2011 Manomio LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCadeState.h"

/*
 UP ON,OFF  = w,e
 RT ON,OFF  = d,c
 DN ON,OFF  = x,z
 LT ON,OFF  = a,q
 A  ON,OFF  = y,t
 B  ON,OFF  = h,r
 C  ON,OFF  = u,f
 D  ON,OFF  = j,n
 E  ON,OFF  = i,m
 F  ON,OFF  = k,p
 G  ON,OFF  = o,g
 H  ON,OFF  = l,v
*/

@protocol iCadeEventDelegate <NSObject>

@optional
- (void)stateChanged:(iCadeState)state;
- (void)buttonDown:(iCadeState)button;
- (void)buttonUp:(iCadeState)button;

@end

@interface iCadeReaderView : UIView<UIKeyInput> {
    UIView                  *inputView;
    iCadeState              _iCadeState;
    id<iCadeEventDelegate>  _delegate;
    
    struct {
        bool stateChanged:1;
        bool buttonDown:1;
        bool buttonUp:1;
    } _delegateFlags;
}

@property (nonatomic, assign) iCadeState iCadeState;
@property (nonatomic, assign) id<iCadeEventDelegate> delegate;

@end
