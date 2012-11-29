//
//  main.m
//  observer
//
//  Created by gaoweiwei on 12-11-29.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"
#import "firstObserver.h"
#import "secondObserver.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        Subject *sub = [Subject defaultSubject];
        firstObserver *observer1 = [[firstObserver alloc] init];
        [sub addObserver:observer1];
        [observer1 release];
        secondObserver *observer2 = [[[secondObserver alloc] init] autorelease];
        [sub addObserver:observer2];
        [sub broadCast:nil];
    }
    return 0;
}

