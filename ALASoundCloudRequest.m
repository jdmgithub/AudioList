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
#import "ALAUser.h"
#import "ALAPLaylist.h"


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
            
            ALAPLaylist * playlistTwo = [ALAPLaylist newPlaylist];
            
            playlistTwo[@"title"] = playlist[@"title"];

//            NSLog(@"Playlist :  %@", playlistTwo);
            

            
            [[ALADataSingleton mainData] addNewPlaylist:playlistTwo];
            
            for (NSDictionary * trackInfo in playlist[@"tracks"])
            {
                
                if(!trackInfo[@"streamable"]) continue;
                
                
                ALATrack * track = [ALATrack newTrack];
                
                track.playList = playlistTwo;
                
                track[@"title"] = trackInfo[@"title"];
//                        or
//                [track setObject:trackInfo[@"title"] forKey:@"title"];

                
                track[@"url"] = trackInfo[@"stream_url"];
             
                [playlistTwo.tracks addObject:track];
                
                [[ALADataSingleton mainData] addNewTrack:track];
        
                 

            NSDictionary * userInfo = playlist[@"user"];

                ALAUser * user = [ALAUser newUser];
                
                user[@"user"] = userInfo[@"username"];
                
//                NSLog(@"User Info :  %@", userInfo);
            
                track.user = user;

                [[ALADataSingleton mainData] addNewUser:user];
            


            }
            
            
            
            
        }
        
        NSLog(@"%@", [[ALADataSingleton mainData] allUsers]);

        NSNotificationCenter * nCenter = [NSNotificationCenter defaultCenter];
        
        [nCenter postNotificationName:@"dataUpdated" object:nil];

        
        
    }];
}









@end
