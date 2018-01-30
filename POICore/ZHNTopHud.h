//
//  ZHNTopHud.h
//  ZHNCosmos
//
//  Created by zhn on 2017/10/31.
//  Copyright © 2017年 zhn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,ZHNTopHudMaskType) {
    ZHNTopHudMaskTypeDark,
    ZHNTopHudMaskTypeLight,
};


@interface ZHNTopHud : NSObject

+ (BOOL)isShowing;
// HUD Config
+ (void)setDefaultMaskType:(ZHNTopHudMaskType)type;
+ (void)setHUDTintColor:(UIColor *)HUDTintColor isNeedBlur:(BOOL)needBlur;
+ (void)setTextColor:(UIColor *)textColor;
// Methods
+ (void)showMessage:(NSString *)message withIconImagename:(NSString *)imagename;
+ (void)showWarning:(NSString *)warning;
+ (void)showSuccess:(NSString *)success;
+ (void)showError:(NSString *)error;
+ (void)showLoading:(NSString *)loading;
+ (void)dismissHud;
@end
