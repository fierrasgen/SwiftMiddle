//
//  Student.m
//  Lesson 4
//
//  Created by Alexander Novikov on 15.04.2021.
//

#import "Student.h"

@implementation Student



- (instancetype)init {
    self = [super init];
    if (self) {
        self.name = @"Name";
        self.surname = @"Surname";
        self.fullName = @"FullName";
    }
    return self;
}

- (NSString *)age {
    return @"25";
}

- (void)setAge:(NSString *)age {
    age = age;
}



//- (instancetype)initFullName:(NSString *)fullname {
//    self = [super init];
//    if (self) {
//        self.fullName = @"FullName";
////        fullname = [NSString stringWithFormat:@"%@%@", _name, _surname];
//    }
//    return self;
//}


@end
