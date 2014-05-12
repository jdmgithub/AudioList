//
//  ALAAlbum.m
//  AudioList
//
//  Created by Jeffery Moulds on 5/9/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import "ALAPLaylist.h"

@implementation ALAPLaylist


+(id)newPlaylist
{
    return [[ALAPLaylist alloc] init];
    
}

- (NSMutableArray *)tracks
{

    if (_tracks == nil) _tracks = [@[] mutableCopy];
    return _tracks;


}


@end
