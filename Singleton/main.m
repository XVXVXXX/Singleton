//
//  main.m
//  Singleton
//
//  Created by xvxvxxx on 3/9/15.
//  Copyright (c) 2015 谢伟军. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SingletonClass.h"
#import "SingletonClass1.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //@synchronized(self)
        SingletonClass *test11 = [SingletonClass sharedInstance];
        SingletonClass *test12 = [SingletonClass sharedInstance];
        SingletonClass *test13 = [[SingletonClass alloc]init];
        SingletonClass *test14 = [[SingletonClass alloc]init];
        NSLog(@"Hello, World!");
        //dispatch_once
        SingletonClass1 *test21 = [SingletonClass1 sharedInstance];
        SingletonClass1 *test22 = [SingletonClass1 sharedInstance];
        SingletonClass1 *test23 = [[SingletonClass1 alloc]init];
        SingletonClass1 *test24 = [[SingletonClass1 alloc]init];
        if (test11 && test12 && test13 && test14) {
            NSLog(@"Hello, World!2");
        }
    }
    return 0;
}
