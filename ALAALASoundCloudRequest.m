//
//  ALAALASoundCloudRequest.m
//  AudioList
//
//  Created by Jeffery Moulds on 5/9/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import "ALAALASoundCloudRequest.h"

@implementation ALAALASoundCloudRequest




+ (NSDictionary *)getSongsWithSoundCloud:(NSString *)songInfo;
{
//    NSMutableDictionary * artistInfo = [@{} mutableCopy];
    
    NSString * soundCloud = [NSString stringWithFormat:@"http://api.soundcloud.com/playlists/4252210.json?client_id=65db70dfcdaab4cf033f9a4003a341e1"];
    
    
    NSURL * url = [NSURL URLWithString:soundCloud];
    
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    
    NSURLResponse * response = nil;
    NSError * error = nil;
    
    NSData * responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    NSError * jsonError = nil;

    
    NSDictionary * soundCloudProfile = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:&jsonError];
    

    NSLog(@" %@", soundCloudProfile);
    
    
//    if(soundCloudProfile[@"playlist"] != nil) userInfo[@"name"] = soundCloudProfile[@"name"];
//    if(soundCloudProfile[@"user"] != nil) userInfo[@"image"] = soundCloudProfile[@"avatar_url"];
//    if(soundCloudProfile[@"track"] != nil) userInfo[@"github"] = soundCloudProfile[@"html_url"];
    

    
//    return artistInfo;
    return soundCloudProfile;

}




@end
