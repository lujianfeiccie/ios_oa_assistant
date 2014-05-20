//
//  Config.h
//  oa_assistant
//
//  Created by Apple on 14-5-19.
//  Copyright (c) 2014年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Config : NSObject <NSCoding>
{
    NSString *_userName;
    NSString *_userPassword;
}
@property (nonatomic,retain)  NSString *_userName;
@property (nonatomic,retain)  NSString *_userPassword;
@end
