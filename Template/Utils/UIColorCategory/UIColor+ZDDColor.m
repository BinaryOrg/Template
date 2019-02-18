//
//  UIColor+ZDDColor.m
//  

#import "UIColor+ZDDColor.h"

@implementation UIColor (ZDDColor)

+ (UIColor *)ztw_grayColor {
    return [self colorWithRed:84 green:84 blue:84];
}

+ (UIColor *)ztw_redColor {
    return [self colorWithRed:231 green:76 blue:60];
}

+ (UIColor *)ztw_yellowColor {
    return [self colorWithRed:241 green:196 blue:15];
}

+ (UIColor *)ztw_greenColor {
    return [self colorWithRed:46 green:204 blue:113];
}

+ (UIColor *)ztw_blueColor {
    return [self colorWithRed:52 green:152 blue:219];
}

+ (UIColor *)ztw_purpleColor {
    return [self colorWithRed:68 green:87 blue:169];
}


#pragma mark - Private class methods

+ (UIColor *)colorWithRed:(NSUInteger)red
                    green:(NSUInteger)green
                     blue:(NSUInteger)blue {
    
    return [UIColor colorWithRed:(float)(red/255.f)
                           green:(float)(green/255.f)
                            blue:(float)(blue/255.f)
                           alpha:1.f];
}

+ (UIColor *)ztw_colorWithRed:(NSUInteger)red
                       green:(NSUInteger)green
                        blue:(NSUInteger)blue
                       alpha:(CGFloat)alpha {
    
    return [UIColor colorWithRed:(float)(red/255.f)
                           green:(float)(green/255.f)
                            blue:(float)(blue/255.f)
                           alpha:alpha];
}


@end
