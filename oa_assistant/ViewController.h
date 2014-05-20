//
//  ViewController.h
//  oa_assistant
//
//  Created by Apple on 14-5-19.
//  Copyright (c) 2014年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "HttpRequestTool.h"
@interface ViewController : UIViewController<HttpRequestToolDelegate>
{
    AppDelegate* app;
    HttpRequestTool* httpRequestTool;
}
@end
