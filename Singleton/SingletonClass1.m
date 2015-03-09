//
//  SingletonClass1.m
//  Singleton
//
//  Created by xvxvxxx on 3/9/15.
//  Copyright (c) 2015 谢伟军. All rights reserved.
//

#import "SingletonClass1.h"
static SingletonClass1 *sharedInstance;
@implementation SingletonClass1
+(SingletonClass1 *)sharedInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[SingletonClass1 alloc]init];
    });
    return sharedInstance;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (sharedInstance == nil) {
            sharedInstance = [super allocWithZone:zone];
        }
    });
    return sharedInstance;
}
@end
