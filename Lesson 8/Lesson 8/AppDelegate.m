//
//  AppDelegate.m
//  Lesson 8
//
//  Created by Alexander Novikov on 07.05.2021.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

// Метод перехода в неактивное состояние
- (void)applicationWillResignActive:(UIApplication *)application {
    printf("Переход в неактивное состояние");
}

// Метод перехода в активное состояние
- (void)applicationDidBecomeActive:(UIApplication *)application {

}

// Метод перехода приложения в Background
- (void)applicationDidEnterBackground:(UIApplication *)application {

}

// Метод перехода приложения из Background в Foreground
- (void)applicationWillEnterForeground:(UIApplication *)application {

}

// Метод который отражает закрытие приложения пользователем
- (void)applicationWillTerminate:(UIApplication *)application {

}






#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
