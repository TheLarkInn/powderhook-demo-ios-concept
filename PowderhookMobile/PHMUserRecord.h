//
//  PHMUserRecord.h
//  PowderhookMobile
//
//  Created by Cole Voss on 5/16/14.
//  Copyright (c) 2014 SeanLarkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PHMUserRecord : NSObject

@property (readonly, weak) NSMutableString *username;
@property (readonly, weak) NSMutableString *email;
@property (readonly, weak) NSMutableString *first;
@property (readonly, weak) NSMutableString *last;
@property (strong) NSMutableArray *events;
@property (strong) NSMutableArray *listings;
@property (strong) NSMutableArray *followedBy;
@property (strong) NSMutableArray *following;

- (void)insertObject:(PHMUserRecord *)user inFollowedByAtIndex:(NSUInteger)index;
- (void)removeObjectFromFollowedByAtIndex:(NSUInteger)index;
- (void)insertObject:(PHMUserRecord *)user inFollowingAtIndex:(NSUInteger)index;
- (void)removeObjectFromFollowingAtIndex:(NSUInteger)index;

@end
