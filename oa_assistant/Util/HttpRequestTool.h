//
//  HttpRequestTool.h
//  oa_assistant
//
//  Created by Apple on 14-5-19.
//  Copyright (c) 2014年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

//接口定义
@protocol HttpRequestToolDelegate <NSObject>
@required
-(void) onMsgReceive :(NSData*) msg :(NSError*) error;
@end

@interface HttpRequestTool : NSObject{
    id<HttpRequestToolDelegate> delegate;
}
@property(nonatomic,retain) id delegate;
-(void)doGet :(NSString*) url;
-(void)doPost :(NSString*) url params :(NSString*) params;
@end