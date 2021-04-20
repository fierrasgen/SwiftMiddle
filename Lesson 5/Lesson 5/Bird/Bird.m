//
//  Bird.m
//  Lesson 5
//
//  Created by Alexander Novikov on 20.04.2021.
//

#import "Bird.h"

@implementation Bird

-(instancetype)initWithModel: (NSString *)bird {
    self = [super init];
    
    if (self) {
        [bird retain];
        [bird release];
        self.bird = bird;
        NSLog(@"Bird - %@", bird);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc Bird - %@", _bird);
    [_bird release];
    [super dealloc];
}


@end
