//
//  TEMPLaunchManager.m
//  Template
//
//  Created by 张冬冬 on 2019/2/18.
//  Copyright © 2019 binary. All rights reserved.
//

#import "TEMPLaunchManager.h"

@implementation TEMPLaunchManager
+ (instancetype)defaultManager {
    static dispatch_once_t onceToken;
    static TEMPLaunchManager *manager = nil;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

- (void)launchInWindow:(UIWindow *)window {
    //NavigationBar 和 TabBar 偏好设置
    
    //设置 window.rootViewController
    window.backgroundColor = [UIColor whiteColor];
    [window makeKeyAndVisible];
}
@end
