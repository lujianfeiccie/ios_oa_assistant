//
//  ViewController.m
//  oa_assistant
//
//  Created by Apple on 14-5-19.
//  Copyright (c) 2014年 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Config* config = [[Config alloc]init];
    config._userName = @"lujianfei";
    config._userPassword = @"mypassword";
    
    app = [[UIApplication sharedApplication] delegate];
   /* [app setConfig:config];
    Config* config2 = [app getConfig];
    NSLogExt(@"%@ %@",config2._userName,config2._userPassword);*/
    httpRequestTool = [[ HttpRequestTool alloc]init];
    httpRequestTool.delegate = self;

    [httpRequestTool doPost:@"http://www.yi-yan-tang.com/demo/post0get.php" params:@"id=520&name=nima"];
}
-(void) onMsgReceive :(NSData*) msg :(NSError*) error
{
    NSString *str = [[NSString alloc] initWithData:msg encoding:NSUTF8StringEncoding];
    NSLogExt(@"%@",str);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
