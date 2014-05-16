//
//  PHMUserRecord.m
//  PowderhookMobile
//
//  Created by Sean Larkin on 5/16/14.
//  Copyright (c) 2014 SeanLarkin. All rights reserved.
//

#import "PHMUserRecord.h"

@implementation PHMUserRecord

- (PHMUserRecord *)init
{
    self = [super init];
    if (self) {
        _followedBy = [NSMutableArray array];
        _following  = [NSMutableArray array];
    }
    return self;
}

//KVC methods (good practice for bindings even if iOS)
- (void)insertObject:(PHMUserRecord *)user inFollowedByAtIndex:(NSUInteger)index
{
    [self.followedBy insertObject:user atIndex:index];
}

- (void)removeObjectFromFollowedByAtIndex:(NSUInteger)index
{
    [self.followedBy removeObjectAtIndex:index];
}

- (void)insertObject:(PHMUserRecord *)user inFollowingAtIndex:(NSUInteger)index
{
    [self.following insertObject:user atIndex:index];
}

-(void)removeObjectFromFollowingAtIndex:(NSUInteger)index
{
    [self.following removeObjectAtIndex:index];
}

@end
