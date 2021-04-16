//
//  ViewController.m
//  Lesson 4
//
//  Created by Alexander Novikov on 15.04.2021.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    Student *objcOne = [[Student alloc]init];
    Student *objcThree = [Student new];

    objcOne.name = @"Alexander";
    objcOne.surname = @"Novikov";
    objcThree.fullName = [NSString stringWithFormat:@"%@%@", @"Alexander", @"Novikov"];

    NSLog(@"Student Name: %@", objcOne.name);
    NSLog(@"Student Surname: %@", objcOne.surname);
    NSLog(@"Student age: %@", objcOne.age);
    NSLog(@"%@", objcThree.fullName);
}




@end
