//
//  Config.m
//  oa_assistant
//
//  Created by Apple on 14-5-19.
//  Copyright (c) 2014年 Apple. All rights reserved.
//

#import "Config.h"
#define KEY_USERNAME @"_userName"
#define KEY_PASSWORD @"_userPassword"
@implementation Config
@synthesize _userName;
@synthesize _userPassword;
-(id) initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {
        self._userName = [aDecoder decodeObjectForKey:KEY_USERNAME];
        self._userPassword = [aDecoder decodeObjectForKey:KEY_PASSWORD];
    }
    return self;
}
-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:_userName forKey:KEY_USERNAME];
    [aCoder encodeObject:_userPassword forKey:KEY_PASSWORD];
}

@end
