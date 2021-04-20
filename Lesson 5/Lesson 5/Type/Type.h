//
//  Type.h
//  Lesson 5
//
//  Created by Alexander Novikov on 20.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Type : NSObject

@property(nonatomic, strong) NSNumber *number;
-(instancetype)initWithNumber:(NSNumber *)number;


@end

NS_ASSUME_NONNULL_END
