//
//  EDSingleton.m
//  01单例模式
//
//  Created by affee on 17/01/2019.
//  Copyright © 2019 affee. All rights reserved.
//

/**
 面向对象应用程序中的单例类(singleton class)总是返回自己的同一个实例。
它提供了对类的对象锁提供的资源的全局访问点。这类设计相关的实际模式成为单例模式。
 
 优点
 系统内存中该类只存在一个对象，节省了系统资源，对于一些需要频繁创建销毁的对象，使用单例模式可以提高系统性能。
 
 缺点
 当想实例化一个单例类的时候，必须要记住使用相应的获取对象的方法，而不是使用new，可能会给其他开发人员造成困扰，特别是看不到源码的时候。
 
 适用场合
 需要频繁的进行创建和销毁的对象；
 创建对象时耗时过多或耗费资源过多，但又经常用到的对象；
 工具类对象；
 频繁访问数据库或文件的对象。
 */

#import "EDSingleton.h"


@implementation EDSingleton
+(instancetype)sharedInstance
{
    static EDSingleton *singleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [[EDSingleton alloc]init];
    });
    return singleton;
}





@end
