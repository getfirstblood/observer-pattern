//
//  Subject.m
//  observer
//
//  Created by gaoweiwei on 12-11-29.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import "Subject.h"
static Subject *subject;
@implementation Subject
@synthesize observerArray;
+(id) defaultSubject
{
    if(nil == subject)
        subject = [[Subject alloc] init];
    return subject;
}
- (id)init
{
    self = [super init];
    if (self) {
        self.observerArray = [[[NSMutableArray alloc] init] autorelease];
    }
    return self;
}
-(void) addObserver:(id<ObserverProtocal>)observer
{
    [self.observerArray addObject:observer];
}
-(void) removeObserver:(id<ObserverProtocal>)observer
{
    [self.observerArray removeObject:observer];
}
-(void) broadCast:(id)org
{
    for (int i = 0; i < [self.observerArray count]; i++) {
        [[self.observerArray objectAtIndex:i] update];
    }
}
@end
