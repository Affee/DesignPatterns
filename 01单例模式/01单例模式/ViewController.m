//
//  ViewController.m
//  01单例模式
//
//  Created by affee on 17/01/2019.
//  Copyright © 2019 affee. All rights reserved.
//

#import "ViewController.h"
#import "EDSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    EDSingleton *singleton = [[EDSingleton alloc]init];
    EDSingleton *singleton1 = [EDSingleton sharedInstance];
    EDSingleton *singleton2 = [singleton copy];
    EDSingleton *singleton3 = [singleton mutableCopy];

    
    
//    条件满足的额情况下
    NSLog(@"singleton=%p\nsingleton1=%p\nsingleton2=%p\nsingleton3=%p\n",singleton,singleton1,singleton2,singleton3);
}


@end
