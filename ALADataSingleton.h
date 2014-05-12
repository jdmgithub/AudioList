//
//  ALASingleton.h
//  AudioList
//
//  Created by Jeffery Moulds on 5/8/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALATrack.h"
#import "ALAUser.h"
#import "ALAPLaylist.h"

@interface ALADataSingleton : NSObject

+(ALADataSingleton *)mainData;


-(void)addNewTrack:(ALATrack *)track;
-(NSArray *)allTracks;


-(void)addNewUser:(ALAUser *)user;
-(NSArray *)allUsers;

-(void)addNewPlaylist:(ALAPLaylist *)playlist;
-(NSArray *)allPlaylists;




//@property (nonatomic) NSMutableArray * albumList;
//
//@property (nonatomic) NSMutableDictionary * albumInfo;
//
//@property (nonatomic) NSInteger likesUpdate;
//
//@property (nonatomic) NSInteger dislikesUpdate;

//-(NSMutableArray *)allAlbumLists;
//-(NSMutableDictionary *)allAlbumInfo;


@end
