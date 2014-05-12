//
//  ALAALASoundCloudRequest.m
//  AudioList
//
//  Created by Jeffery Moulds on 5/9/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import "ALASoundCloudRequest.h"
#import "ALADataSingleton.h"
//#import "ALATrack.h"
#import "ALAArtist.h"
#import "ALAAlbum.h"


#define CLIENT_ID @"client_id=b3fd07bad6454d624feb6f5b306d46f4"
#define USER_NAME @"user745166732"
#define SC_API @"https://api.soundcloud.com"



@implementation ALASoundCloudRequest

{
    NSMutableArray * playList;
}


+(void)updateData

{
// identifies the url that will have the request sent to to.  Done via string.
    NSURL * requestURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@/users/%@/playlists.json?%@", SC_API, USER_NAME, CLIENT_ID]];
// request object -- explanation of what the request will do
    NSURLRequest * request = [NSURLRequest requestWithURL:requestURL];

    
// sets up a queue list of requests do determine order of requests.
    NSOperationQueue * queue = [[NSOperationQueue alloc] init];
 
    
// does the acutal request
    [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {

        
// array of playlists - has dictionary as data inside array.  created from the data above
        NSArray * scInfo = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
//        NSLog(@"%@", scInfo);
        
        for (NSDictionary * playlist in scInfo)
        {
            
            // create new playlist and set things like playlist Title
            
            for (NSDictionary * trackInfo in playlist[@"tracks"])
            {
                
                if(!trackInfo[@"streamable"]) continue;
                
                
                ALATrack * track = [ALATrack newTrack];
                
                track[@"title"] = trackInfo[@"title"];    // does not work unless a subclass dictionary.
//   or             [track setObject:trackInfo[@"title"] forKey:@"title"];
      
                track[@"url"] = trackInfo[@"stream_url"];
             
                [[ALADataSingleton mainData] addNewTrack:track];
            }
            
        }
        
        NSLog(@"%@", [[ALADataSingleton mainData] allTracks]);

        NSNotificationCenter * nCenter = [NSNotificationCenter defaultCenter];
        
        [nCenter postNotificationName:@"dataUpdated" object:nil];

        
        
    }];
}





//+ (NSDictionary *)getSongsWithSoundCloud:(NSString *)songInfo;
//{
////    NSMutableDictionary * artistInfo = [@{} mutableCopy];
//    
//    NSString * soundCloud = [NSString stringWithFormat:@"https://api.soundcloud.com/users/user745166732/playlists.json?client_id=b3fd07bad6454d624feb6f5b306d46f4"];
//    
//    
//    
//    NSURL * url = [NSURL URLWithString:soundCloud];
//    
//    NSURLRequest * request = [NSURLRequest requestWithURL:url];
//    
//    NSURLResponse * response = nil;
//    NSError * error = nil;
//    
//    NSData * responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
//    
//    NSError * jsonError = nil;
//
//    
//    NSArray * soundCloudProfile = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:&jsonError];
//    
//
//    NSLog(@" %@", soundCloudProfile);
//    
//    
//    for (NSDictionary * playList in soundCloudProfile) {
//        NSArray * tracks = playList[@"tracks"];
//            NSLog(@"Tracks %@", playList[@"tracks"]);
//        
//
//        
//        for (NSDictionary * track in tracks) {
//            NSLog(@"Track %@", track[@"title"]);
//
//
////        for (NSDictionary * artist in tracks) {
////            NSLog(@"Artist / User %@", artist[@"user"]);
////            
////    
////        for (NSDictionary * albumList in playList) {
////            NSLog(@"Album Lists %@", albumList[@"playlist"]);
////            }
////        
////            }
//        
//        }
//    }

    
    
    
    
    
//    if(soundCloudProfile[@"playlist"] != nil) userInfo[@"name"] = soundCloudProfile[@"name"];
//    if(soundCloudProfile[@"user"] != nil) userInfo[@"image"] = soundCloudProfile[@"avatar_url"];
//    if(soundCloudProfile[@"track"] != nil) userInfo[@"github"] = soundCloudProfile[@"html_url"];
    

    
//    return artistInfo;
//    return soundCloudProfile;
//
//}








@end
