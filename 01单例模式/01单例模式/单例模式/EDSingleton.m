//
//  EDSingleton.m
//  01单例模式
//
//  Created by affee on 17/01/2019.
//  Copyright © 2019 affee. All rights reserved.
//

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
