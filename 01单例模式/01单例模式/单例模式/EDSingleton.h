//
//  EDSingleton.h
//  01单例模式
//
//  Created by affee on 17/01/2019.
//  Copyright © 2019 affee. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EDSingleton : NSObject
+(instancetype)sharedInstance;

@end

NS_ASSUME_NONNULL_END
