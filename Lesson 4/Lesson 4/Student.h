//
//  Student.h
//  Lesson 4
//
//  Created by Alexander Novikov on 15.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

    @property (nonatomic, strong, readonly) NSString *age;
    @property (nonatomic, strong) NSString *name;
    @property (nonatomic, strong) NSString *surname;
    @property (nonatomic, strong) NSString *fullName;

//- (instancetype)initFullName:(NSString *)fullname;

@end

NS_ASSUME_NONNULL_END
