//
//  NSJSONSerialization+NSString.m
//  新亚起航安安
//
//  Created by qingyun on 15/9/27.
//  Copyright (c) 2015年 河南青云信息科技有限公司. All rights reserved.
//

#import "NSJSONSerialization+NSString.h"

@implementation NSJSONSerialization (NSString)
+(NSString *)stringWithJSONObject:(id)obj{
    //转化为二进制数据
    NSError *error;
    NSData *data = [NSJSONSerialization dataWithJSONObject:obj options:0 error:&error];
    //将二进制数据转化为字符串
    
    NSString *result = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return result;
}
@end
