//
//  Type.m
//  Lesson 5
//
//  Created by Alexander Novikov on 20.04.2021.
//

#import "Type.h"

@implementation Type

-(instancetype)initWithNumber:(NSNumber *)number {
    self = [super init];
    if (self) {
        [number retain];
        [number release];
        self.number = number;
        NSLog(@"Create Bird Type %@", number);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc Bird Type - %@", self.number);
    [self.number retain];
    [self.number release];
    [super dealloc];
}


@end
