//
//  ALASong.m
//  AudioList
//
//  Created by Jeffery Moulds on 5/9/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import "ALATrack.h"

@implementation ALATrack

{
    NSMutableDictionary * dict;


}

+(id)newTrack
{
    return [[ALATrack alloc] init];
}



 -(id)init
{
    self = [super init];
    if (self) {
        dict = [@{} mutableCopy];
    }
    return self;
}



-(id)objectForKey:(id)aKey
{
    return dict[aKey];
}



-(void)setObject:(id)anObject forKey:(id<NSCopying>)aKey
{
    dict[aKey] = anObject;
    
}



-(void)removeObjectForKey:(id)aKey
{
    [dict removeObjectForKey:aKey];

}



-(NSUInteger)count
{
    return [dict count];

}


- (NSEnumerator *)keyEnumerator
{
    return [dict keyEnumerator];

}





@end