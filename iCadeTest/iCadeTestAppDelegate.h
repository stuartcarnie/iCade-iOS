//
//  iCadeTestAppDelegate.h
//  iCadeTest
//
//  Created by Stuart Carnie on 6/16/11.
//  Copyright 2011 Manomio LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iCadeTestViewController;

@interface iCadeTestAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet iCadeTestViewController *viewController;

@end
