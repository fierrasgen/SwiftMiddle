//
//  ViewController.m
//  Lesson 5
//
//  Created by Alexander Novikov on 20.04.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Flock *flock = [Flock new];
    
    Type *vorobei = [[Type alloc] initWithNumber:@1];
    Type *golub = [[Type alloc] initWithNumber:@2];
    Type *gus = [[Type alloc] initWithNumber:@3];
    Type *kanareika = [[Type alloc] initWithNumber:@4];
    
    NSArray *types = [[NSArray alloc] initWithObjects:vorobei,golub,gus,kanareika, nil];
    
    Bird *bird = [[Bird alloc] initWithModel:@"x1"];
    
    [flock configWithType:bird andType:types];
    [flock release];
}


@end
