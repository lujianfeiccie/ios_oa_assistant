//
//  HttpRequestTool.m
//  oa_assistant
//
//  Created by Apple on 14-5-19.
//  Copyright (c) 2014年 Apple. All rights reserved.
//
#import "HttpRequestTool.h"

@interface HttpRequestTool()
@end

@implementation HttpRequestTool

@synthesize delegate;

-(void)doGet :(NSString*) url{
    if(url==nil ||
       delegate == nil){
        return;
    }
    NSError *error = Nil;
    //加载一个NSURL对象

    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    
    //将请求的url数据放到NSData对象中
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:&error];
    
    if (delegate!=Nil) {
        [delegate onMsgReceive:response:error];
    }

}
-(void)doPost :(NSString*) url params :(NSString*) params
{
    if(url==nil ||
       delegate == nil){
        return;
    }
    NSError *error = Nil;
    //加载一个NSURL对象
    
    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    
    [request addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    NSString *msgLength = [NSString stringWithFormat:@"%d", [params length]];
    [request addValue:msgLength forHTTPHeaderField:@"Content-Length"];
    [request setHTTPMethod:@"POST"];
    //设置参数
    [request setHTTPBody: [params dataUsingEncoding:NSUTF8StringEncoding]];
    
    //将请求的url数据放到NSData对象中
    NSData *response = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:&error];
    
    if (delegate!=nil) {
        [delegate onMsgReceive:response:error];
    }

}
@end
