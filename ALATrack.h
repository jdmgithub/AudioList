//
//  ALASong.h
//  AudioList
//
//  Created by Jeffery Moulds on 5/9/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALADictionary.h"


@class ALAUser;
@class ALAPLaylist;


@interface ALATrack : ALADictionary

+(id)newTrack;

@property (nonatomic) ALAUser * user;
@property (nonatomic) ALAPLaylist * playList;


@end
