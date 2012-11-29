//
//  Subject.h
//  observer
//
//  Created by gaoweiwei on 12-11-29.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocal.h"
@interface Subject : NSObject<SubjectProtocal>
{
    NSMutableArray *observerArray;
}
+(id) defaultSubject;
@property (retain, nonatomic) NSMutableArray *observerArray;
@end