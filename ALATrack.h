//
//  ALASong.h
//  AudioList
//
//  Created by Jeffery Moulds on 5/9/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ALAArtist;
@class ALAAlbum;


@interface ALATrack : NSMutableDictionary

+(id)newTrack;




//-(id)objectForKey:(id)aKey;
//
//-(void)setObject:(id)anObject forKey:(id<NSCopying>)aKey;
//
//-(void)removeObjectForKey:(id)aKey;





@property (nonatomic) ALAArtist * artist;
@property (nonatomic) ALAAlbum * album;


@end
