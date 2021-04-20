//
//  Flock.h
//  Lesson 5
//
//  Created by Alexander Novikov on 20.04.2021.
//

#import <Foundation/Foundation.h>
#import "Bird.h"
#import "Type.h"

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject

@property (nonatomic, strong) Bird *bird;
@property (nonatomic, strong) NSArray *types;
- (void)configWithType:(Bird *)bird andType:(NSArray *)types;


@end

NS_ASSUME_NONNULL_END
