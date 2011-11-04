//
//  AppDelegate.h
//  TableInTable
//
//  Created by Naka Takahiro on 11/11/04.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
@class MainTableViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;
@property (nonatomic, retain) MainTableViewController *mainTableViewController;
@end
