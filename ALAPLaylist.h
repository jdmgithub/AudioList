//
//  ALAAlbum.h
//  AudioList
//
//  Created by Jeffery Moulds on 5/9/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import "ALADictionary.h"

@class ALAUser;

@interface ALAPLaylist : ALADictionary



+(id)newPlaylist;

@property (nonatomic) NSMutableArray * tracks;

@end
