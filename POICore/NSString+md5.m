//
//  NSString+md5.m
//  微感科技
//
//  Created by 张冬冬 on 2016/12/27.
//  Copyright © 2016年 张冬冬. All rights reserved.
//

#import "NSString+md5.h"
#import <CommonCrypto/CommonDigest.h>
@implementation NSString (md5)
- (NSString *)md5String
{
    const char *str = [(NSString *)self UTF8String];
    
    unsigned char result[CC_MD5_DIGEST_LENGTH] = {0};
    CC_MD5(str, (CC_LONG)strlen(str), result);
    
    NSMutableString *ret = [NSMutableString string];
    
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [ret appendFormat:@"%02x", result[i]];
    }
    
    return ret;
}
@end
