//
//  Message.m
//  Lesson 6
//
//  Created by Alexander Novikov on 23.04.2021.
//

#import "Message.h"

@implementation Message


MessageBlock sum = ^(NSInteger a, NSInteger b, NSInteger c) {
    return a + b + c;
};

MessageBlock substraction = ^(NSInteger a, NSInteger b, NSInteger c) {
    return a - b - c;
};

MessageBlock multiplication = ^(NSInteger a, NSInteger b, NSInteger c) {
    return (a * b) + (a * c);
};

MessageBlock division = ^(NSInteger a, NSInteger b, NSInteger c) {
    return (a / b) - (c / a);
};


+ (NSInteger)beginWithAction:(ActionType)action firstNumber: (NSInteger)first secondNumber: (NSInteger)second thirdNumber: (NSInteger)third{
    switch (action) {
        case ActionTypeSum:
            return sum(first, second, third);
            break;
        case ActionTypeSubstraction:
            return substraction(first, second, third);
            break;
        case ActionTypeMultiplication:
            return multiplication(first, second, third);
            break;
        case ActionTypeDivision:
            return division(first, second, third);
            break;
    }
    return 0;
};



@end
