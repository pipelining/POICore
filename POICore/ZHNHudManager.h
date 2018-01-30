//
//  ZHNHudManager.h
//  ZHNCosmos
//
//  Created by zhn on 2017/11/1.
//  Copyright © 2017年 zhn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZHNHudManager : NSObject
+ (BOOL)isShowing;
+ (void)showLoading:(NSString *)loading;
+ (void)showSuccess:(NSString *)success;
+ (void)showError:(NSString *)error;
+ (void)showWarning:(NSString *)warning;
+ (void)dismiss;
@end
