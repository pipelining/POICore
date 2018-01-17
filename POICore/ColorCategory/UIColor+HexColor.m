//
//  UIColor+HexColor.m
//  家装
//
//  Created by 张冬冬 on 2016/11/23.
//  Copyright © 2016年 张冬冬. All rights reserved.
//

#import "UIColor+HexColor.h"

@implementation UIColor (HexColor)
+ (UIColor *)colorwithHexString:(NSString *)hexStr;{
    unsigned int hexint = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexStr];
    [scanner setCharactersToBeSkipped:[NSCharacterSet characterSetWithCharactersInString:@"#"]];
    [scanner scanHexInt:&hexint];
    UIColor *color = [UIColor colorWithRed:((CGFloat) ((hexint & 0xFF0000) >> 16))/255
                                     green:((CGFloat) ((hexint & 0xFF00) >> 8))/255
                                      blue:((CGFloat) (hexint & 0xFF))/255
                                     alpha:1];
     
    return color;
}
@end
