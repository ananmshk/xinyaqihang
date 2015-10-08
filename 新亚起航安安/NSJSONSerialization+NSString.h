//
//  NSJSONSerialization+NSString.h
//  新亚起航安安
//
//  Created by qingyun on 15/9/27.
//  Copyright (c) 2015年 河南青云信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSJSONSerialization (NSString)
//将JSON object 转化为string

+(NSString *)stringWithJSONObject:(id)obj;

@end
