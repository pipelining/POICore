//
//  UIImageView+WGAddCorner.m
//  微感科技
//
//  Created by 张冬冬 on 2016/12/28.
//  Copyright © 2016年 张冬冬. All rights reserved.
//

#import "UIImageView+WGAddCorner.h"
#import "UIImage+WGAddCorner.h"
@implementation UIImageView (WGAddCorner)
- (void)addCornerWithRadius:(CGFloat)radius {
    self.image = [self.image drawRectWithRoundedCornerRadius:radius AndSize:self.bounds.size];
}
@end
