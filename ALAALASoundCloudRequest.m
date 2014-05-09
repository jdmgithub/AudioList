//
//  ALAALASoundCloudRequest.m
//  AudioList
//
//  Created by Jeffery Moulds on 5/9/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import "ALAALASoundCloudRequest.h"
#import "ALASingleton.h"
#import "ALASong.h"
#import "ALAArtist.h"
#import "ALAAlbum.h"

@implementation ALAALASoundCloudRequest

{
    NSMutableArray * playList;

}


+ (NSDictionary *)getSongsWithSoundCloud:(NSString *)songInfo;
{
//    NSMutableDictionary * artistInfo = [@{} mutableCopy];
    
    NSString * soundCloud = [NSString stringWithFormat:@"https://api.soundcloud.com/users/user745166732/playlists.json?client_id=b3fd07bad6454d624feb6f5b306d46f4"];
    
    
    
    NSURL * url = [NSURL URLWithString:soundCloud];
    
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    
    NSURLResponse * response = nil;
    NSError * error = nil;
    
    NSData * responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    NSError * jsonError = nil;

    
    NSArray * soundCloudProfile = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:&jsonError];
    

    NSLog(@" %@", soundCloudProfile);
    
    
    for (NSDictionary * playList in soundCloudProfile) {
        NSArray * tracks = playList[@"tracks"];
        
        for (NSDictionary * track in tracks) {
            NSLog(@"%@", track[@"title"]);
        }
    }
    
    
    
    
    
    
//    if(soundCloudProfile[@"playlist"] != nil) userInfo[@"name"] = soundCloudProfile[@"name"];
//    if(soundCloudProfile[@"user"] != nil) userInfo[@"image"] = soundCloudProfile[@"avatar_url"];
//    if(soundCloudProfile[@"track"] != nil) userInfo[@"github"] = soundCloudProfile[@"html_url"];
    

    
//    return artistInfo;
    return soundCloudProfile;

}








@end
