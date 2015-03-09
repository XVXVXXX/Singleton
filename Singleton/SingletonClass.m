//
//  SingletonClass.m
//  Singleton
//
//  Created by xvxvxxx on 3/9/15.
//  Copyright (c) 2015 谢伟军. All rights reserved.
//

#import "SingletonClass.h"
static SingletonClass *sharedInstance;
@implementation SingletonClass
+(SingletonClass *)sharedInstance{
    @synchronized(self){
        if (sharedInstance == nil) {
            sharedInstance = [[SingletonClass alloc]init];
        }
    }
    return sharedInstance;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    @synchronized(self){
        if (sharedInstance == nil) {
            sharedInstance = [super allocWithZone:zone];
        }
    }
    return sharedInstance;
}
@end
