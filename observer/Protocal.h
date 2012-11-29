//
//  Header.h
//  observer
//
//  Created by gaoweiwei on 12-11-29.
//  Copyright (c) 2012年 gaoweiwei. All rights reserved.
//

#ifndef observer_Header_h
#define observer_Header_h

@protocol ObserverProtocal <NSObject>
-(void) update;
@end


@protocol SubjectProtocal <NSObject>

-(void) addObserver:(id<ObserverProtocal>)observer;
-(void) removeObserver:(id<ObserverProtocal>)observer;
-(void) broadCast:(id)org;
@end


#endif
