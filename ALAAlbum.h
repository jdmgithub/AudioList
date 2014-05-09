//
//  ALAAlbum.h
//  AudioList
//
//  Created by Jeffery Moulds on 5/9/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ALAArtist;

@interface ALAAlbum : NSDictionary

@property (nonatomic) ALAArtist * artist;

@property (nonatomic) NSArray * songList;

@end
