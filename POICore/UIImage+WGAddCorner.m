//
//  UIImage+WGAddCorner.m
//  微感科技
//
//  Created by 张冬冬 on 2016/12/28.
//  Copyright © 2016年 张冬冬. All rights reserved.
//

#import "UIImage+WGAddCorner.h"

@implementation UIImage (WGAddCorner)

- (instancetype)drawRectWithRoundedCornerRadius:(CGFloat)radius AndSize:(CGSize)sizeToFit {
    CGRect rect = CGRectMake(0, 0, sizeToFit.width, sizeToFit.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [UIScreen mainScreen].scale);
    CGContextAddPath(UIGraphicsGetCurrentContext(), [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius].CGPath);
    CGContextClip(UIGraphicsGetCurrentContext());
    [self drawInRect:rect];
    CGContextDrawPath(UIGraphicsGetCurrentContext(), kCGPathFillStroke);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
