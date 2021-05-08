//
//  ViewController.m
//  Lesson 8
//
//  Created by Alexander Novikov on 07.05.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

// Метод, который вызывается сразу после загрузки
- (void)viewDidLoad {
    [super viewDidLoad];
    printf("Загрузка произошла, ");
}

// Метод до отображения на экране
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    printf("Экран не отобразился, ");
}

// Метод после отображения на экране
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    printf("Экран отобразился");
}

// Метод до закрытия контроллера
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    printf("Контроллер еще не закрылся");
}

// Метод после закрытия контроллера
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    printf("Контроллер закрылся");
}

// Метод для обработки поворота экрана
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    printf("Экран повернулся");
}



@end
