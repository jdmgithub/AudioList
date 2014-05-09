//
//  ALASingleton.h
//  AudioList
//
//  Created by Jeffery Moulds on 5/8/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ALASingleton : NSObject

+(ALASingleton *)mainData;


@property (nonatomic) NSMutableArray * albumList;

@property (nonatomic) NSMutableDictionary * albumInfo;

@property (nonatomic) NSInteger likesUpdate;

@property (nonatomic) NSInteger dislikesUpdate;

-(NSMutableArray *)allAlbumLists;
-(NSMutableDictionary *)allAlbumInfo;


@end
