//
//  ViewController.m
//  Lesson 6
//
//  Created by Alexander Novikov on 22.04.2021.
//

#import "ViewController.h"
#import "Message.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_queue_t mainQueue = dispatch_get_main_queue();
    NSOperationQueue *mainsQueue = [NSOperationQueue mainQueue];
    NSOperationQueue *currentQueue = [NSOperationQueue currentQueue];
    

   
    NSInteger resultSum = [Message beginWithAction:ActionTypeSum firstNumber:5 secondNumber:5 thirdNumber:10];
    NSInteger resultSub = [Message beginWithAction:ActionTypeSubstraction firstNumber:5 secondNumber:5 thirdNumber:10];
    NSInteger resultMul = [Message beginWithAction:ActionTypeMultiplication firstNumber:5 secondNumber:5 thirdNumber:10];
    NSInteger resultDiv = [Message beginWithAction:ActionTypeDivision firstNumber:5 secondNumber:5 thirdNumber:10];
    
    
    dispatch_async(mainQueue, ^{
        NSLog(@"%ld Result Sum", (long)resultSum);
    });
    
    dispatch_async(globalQueue, ^{
    NSLog(@"%ld Result Sub", (long)resultSub);
    });
    
    [currentQueue addOperationWithBlock:^{
        NSLog(@"%ld Result Mul", (long)resultMul);
    }];
    
    [mainsQueue addOperationWithBlock:^{
    NSLog(@"%ld Restult Div", (long)resultDiv);
    }];
    
}

@end
