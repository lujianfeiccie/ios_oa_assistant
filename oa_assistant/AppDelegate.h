//
//  AppDelegate.h
//  oa_assistant
//
//  Created by Apple on 14-5-19.
//  Copyright (c) 2014年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Config.h"
#import "NSLogExt.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(void) setConfig : (Config*) config;
-(Config*) getConfig;
@end
