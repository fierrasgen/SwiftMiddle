//
//  Flock.m
//  Lesson 5
//
//  Created by Alexander Novikov on 20.04.2021.
//

#import "Flock.h"

@implementation Flock

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Create bird");
    }
    return self;
}

- (void)configWithType:(Bird *)bird andType:(NSArray *)types {
    [bird retain];
    [bird release];
    _bird = bird;
    NSLog(@"Add bird for Flock");
    
    [types retain];
    [types release];
    _types = types;
    for (Type *type in types) {
        NSLog(@"Add type (%@) for Flock", type.number);
    }
}
- (void)remove {
    NSLog(@"Remove bird and type from Flock");
    for (Type *type in _types) {
        [type release];
    }
    [_types release];
    [_bird release];
}
- (void)dealloc {
    [self remove];
    NSLog(@"Dealloc Flock");
    [super dealloc];
}



@end
