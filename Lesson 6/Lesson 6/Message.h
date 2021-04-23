//
//  Message.h
//  Lesson 6
//
//  Created by Alexander Novikov on 23.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


typedef NSInteger (^MessageBlock) (NSInteger a, NSInteger b, NSInteger c);

typedef enum ActionType {
    ActionTypeSum,
    ActionTypeSubstraction,
    ActionTypeMultiplication,
    ActionTypeDivision,
} ActionType ;



@interface Message : NSObject

+ (NSInteger)beginWithAction:(ActionType)action firstNumber: (NSInteger)first secondNumber: (NSInteger)second thirdNumber: (NSInteger)third;

@end

NS_ASSUME_NONNULL_END
