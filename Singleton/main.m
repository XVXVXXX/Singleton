//
//  main.m
//  Singleton
//
//  Created by xvxvxxx on 3/9/15.
//  Copyright (c) 2015 谢伟军. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SingletonClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        SingletonClass *test1 = [SingletonClass sharedInstance];
        SingletonClass *test2 = [SingletonClass sharedInstance];
        SingletonClass *test3 = [[SingletonClass alloc]init];
        SingletonClass *test4 = [[SingletonClass alloc]init];
        NSLog(@"Hello, World!");
    }
    return 0;
}
