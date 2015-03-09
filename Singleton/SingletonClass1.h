//
//  SingletonClass1.h
//  Singleton
//
//  Created by xvxvxxx on 3/9/15.
//  Copyright (c) 2015 谢伟军. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonClass1 : NSObject
+(SingletonClass1 *)sharedInstance;
+(instancetype)allocWithZone:(struct _NSZone *)zone;
@end
