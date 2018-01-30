//
//  UIImage+WGAddCorner.h
//  微感科技
//
//  Created by 张冬冬 on 2016/12/28.
//  Copyright © 2016年 张冬冬. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (WGAddCorner)
- (instancetype)drawRectWithRoundedCornerRadius:(CGFloat)radius AndSize:(CGSize)sizeToFit;
@end
