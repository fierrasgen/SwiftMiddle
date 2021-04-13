//
//  ViewController.m
//  Lesson 3
//
//  Created by Alexander Novikov on 09.04.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1-ое задание
    NSArray *array = [NSArray arrayWithObjects: @"Real Madrid", @"Barselona",@"CSKA",@"Lokomotiv",@"Dinamo", nil];
    NSArray *newarray = [NSArray arrayWithObjects: @"Moscow",@"Paris",@"London", nil];
    
    for (NSString *name in array) {
        NSLog(@"%@", name);
    }
    
    while (newarray <= array) {
        NSLog(@"City Array");
        break;
    }
    
    do {
        NSLog(@"Football clubs Array");
    } while (array > newarray);
    
    
    
    
    
    //2-е задание
    NSLog(@"%f", [self calculate:@"+" withFirst:10 and:10]);
    NSLog(@"%f", [self subtraction:@"-" withFirst:25 and:5]);
    NSLog(@"%f", [self multiplication:@"*" withFirst:25 and:5]);
    NSLog(@"%f", [self division:@"/" withFirst:25 and:5]);
    
    
    // 3-е задание
    typedef struct Human Human;
    Human human;
    Human girls;
    human.name = @"Alexander";
    human.age = (long)4;
    human.gander = @"Male";
    girls.name = @"Lyubov";
    girls.age = (long)21;
    girls.gander = @"Female";
    
    NSLog(@"Human: \n name %@, \n age %ld, \n gander %@", human.name, (long)human.age, human.gander);
    NSLog(@"Human: \n name %@, \n age %ld, \n gander %@", girls.name, (long)girls.age, girls.gander);
}


// 2-ое задание

enum Calculates {
    Calculate,
    Subtraction,
    Multiplication,
    Division
};

typedef enum Calculates Calculates;

Calculates calculates = Calculate;
Calculates substraction = Subtraction;
Calculates multiplication = Multiplication;
Calculates division = Division;


- (CGFloat)calculate: (NSString *)calculates withFirst: (NSInteger)value and: (NSInteger)secondValue {
    
    if ( [calculates isEqualToString:@"+"] ){
        return value + secondValue ;
    }
    
    return 0.0;
}

- (CGFloat)subtraction: (NSString *)substraction withFirst: (NSInteger)value and: (NSInteger)secondValue {
    
    if ( [substraction isEqualToString:@"-"] ){
        return value - secondValue ;
    }
    
    return 0.0;
}

- (CGFloat)multiplication: (NSString *)multiplication withFirst: (NSInteger)value and: (NSInteger)secondValue {
    
    if ( [multiplication isEqualToString:@"*"] ){
        return value * secondValue ;
    }
    
    return 0.0;
}

- (CGFloat)division: (NSString *)division withFirst: (NSInteger)value and: (NSInteger)secondValue {
    
    if ( [division isEqualToString:@"/"] ){
        return value / secondValue ;
    }
    
    return 0.0;
}





//3-е задание
struct Human {
    NSString *name;
    NSInteger age;
    NSString *gander;
};

@end
