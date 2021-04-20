//
//  Bird.h
//  Lesson 5
//
//  Created by Alexander Novikov on 20.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

@property(nonatomic, strong) NSString *bird;
-(instancetype)initWithModel: (NSString *)bird;

@end

NS_ASSUME_NONNULL_END
