//
//  main.m
//  Lesson 1
//
//  Created by Alexander Novikov on 25.03.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int first = 0;
        int second = 0;
       

        printf("First number: ");
        scanf("%d", &first);
        printf("Second number: ");
        scanf("%d", &second);
//        NSLog(@"%d", first + second);
//        NSLog(@"%d", first * second);
//        NSLog(@"%d", first / second);
//        NSLog(@"%d", first % second);
//        NSLog(@"%d", first - second);
        NSLog(@" Addition - %d, Multiplication - %d, Division - %d, Remainder of the division - %d, Subtraction - %d",
              first + second,
              first * second,
              first / second,
              first % second,
              first - second);
        
        int one = 0;
        int two = 0;
        int three = 0;
        printf("one: ");
        scanf("%d", &one);
        printf("two: ");
        scanf("%d", &two);
        printf("three: ");
        scanf("%d", &three);
        
        NSLog(@" Average number - %d", (one + two + three) / 3);
        
    }
    return 0;
}



