//
//  TEMPLaunchManager.m
//  Template
//
//  Created by 张冬冬 on 2019/2/18.
//  Copyright © 2019 binary. All rights reserved.
//

#import "TEMPLaunchManager.h"
#import "UIColor+ZDDColor.h"

#import "ZDDOneTabController.h"
#import "ZDDTwoTabController.h"
#import "ZDDThreeTabController.h"
#import "ZDDFourTabController.h"

#import "ZDDThemeConfiguration.h"

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
    ZDDThemeConfiguration *theme = [ZDDThemeConfiguration defaultConfiguration];

//    只需要在这里修改如下5个主题颜色即可，注意颜色搭配和理性:
//    theme.naviTitleColor =
//    theme.naviTintColor =
//    theme.themeColor =
//    theme.normalTabColor =
//    theme.selectTabColor =
    
    //NavigationBar 和 TabBar 偏好设置
    NSDictionary *dict = [NSDictionary dictionaryWithObject:theme.naviTitleColor forKey:NSForegroundColorAttributeName];
    [UINavigationBar appearance].titleTextAttributes = dict;
    [[UINavigationBar appearance] setTintColor:theme.naviTintColor];
    [[UINavigationBar appearance] setBarTintColor:theme.themeColor];
    [[UITabBar appearance] setBarTintColor:theme.themeColor];
    [[UITabBar appearance] setTintColor:theme.selectTabColor];
    [[UITabBar appearance] setUnselectedItemTintColor:theme.normalTabColor];
    BOOL isDark = [theme.themeColor isDarkColor];
    [UIApplication sharedApplication].statusBarStyle = isDark ? UIStatusBarStyleLightContent : UIStatusBarStyleDefault;
    
    ZDDOneTabController *one = [[ZDDOneTabController alloc] initWithTabImageName:@"tab_now_nor"
                                                               selectedImageName:@"tab_now_press"
                                                                           title:@"G"];
    ZDDTwoTabController *two = [[ZDDTwoTabController alloc] initWithTabImageName:@"tab_see_nor"
                                                               selectedImageName:@"tab_see_press"
                                                                           title:@"O"];
    ZDDThreeTabController *three = [[ZDDThreeTabController alloc] initWithTabImageName:@"tab_qworld_nor"
                                                                     selectedImageName:@"tab_qworld_press"
                                                                                 title:@"D"];
    ZDDFourTabController *four = [[ZDDFourTabController alloc] initWithTabImageName:@"tab_recent_nor"
                                                                  selectedImageName:@"tab_recent_press"
                                                                              title:@"Z"];
    
    UINavigationController *n1 = [[UINavigationController alloc] initWithRootViewController:one];
    UINavigationController *n2 = [[UINavigationController alloc] initWithRootViewController:two];
    UINavigationController *n3 = [[UINavigationController alloc] initWithRootViewController:three];
    UINavigationController *n4 = [[UINavigationController alloc] initWithRootViewController:four];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[
                                         n1,
                                         n2,
                                         n3,
                                         n4
                                         ];
    window.rootViewController = tabBarController;
    window.backgroundColor = [UIColor whiteColor];
    [window makeKeyAndVisible];
}
@end
