//
//  ViewController.m
//  Lesson 2
//
//  Created by Alexander Novikov on 28.03.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self letters: @"г"];
   
    
    
    //2-е задание
    NSLog(@"%f", [self calculate:@"+" withFirst:10 and:10]);
    NSLog(@"%f", [self Subtraction:@"-" withFirst:25 and:5]);
    NSLog(@"%f", [self Multiplication:@"*" withFirst:25 and:5]);
    NSLog(@"%f", [self Division:@"/" withFirst:25 and:5]);
}

NSString *alphabet = @"a,b,c,d,e,f,j,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z";



//1-е задание

- (void)letters: (NSString *)letter {
    if (letter == alphabet){
        NSLog(@"It's true");
    } else {
        NSLog(@"It's false");
    }
}



//2-е задание
- (CGFloat)calculate: (NSString *)operator withFirst: (NSInteger)value and: (NSInteger)secondValue {
    
    if ( [operator isEqualToString:@"+"] ){
        return value + secondValue ;
    }
    
    return 0.0;
}

- (CGFloat)Subtraction: (NSString *)operator withFirst: (NSInteger)value and: (NSInteger)secondValue {
    
    if ( [operator isEqualToString:@"-"] ){
        return value - secondValue ;
    }
    
    return 0.0;
}

- (CGFloat)Multiplication: (NSString *)operator withFirst: (NSInteger)value and: (NSInteger)secondValue {
    
    if ( [operator isEqualToString:@"*"] ){
        return value * secondValue ;
    }
    
    return 0.0;
}

- (CGFloat)Division: (NSString *)operator withFirst: (NSInteger)value and: (NSInteger)secondValue {
    
    if ( [operator isEqualToString:@"/"] ){
        return value / secondValue ;
    }
    
    return 0.0;
}

@end
