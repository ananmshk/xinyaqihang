//
//  Model.h
//  新亚起航安安
//
//  Created by qingyun on 15/9/29.
//  Copyright (c) 2015年 河南青云信息科技有限公司. All rights reserved.
//
/*
 "RESPONSE_BODY" =     {
 list =         (
 {
 camera = N;
 cid = FI0000000302;
 community = "\U4e91\U5357\U6620\U8c61\U4e3b\U9898\U6587\U5316\U5c0f\U533a";
 housetype = "2\U5ba42\U5385";
 iconurl = "<null>";
 nid = "LS003388    ";
 price = 1900;
 simpleadd = "\U5317\U8fb0\U7247\U533a";
 temprownumber = 1;
 title = "\U4f18\U8d28\U623f\U6e90";
 },
 */
#import <Foundation/Foundation.h>

@interface CellModel : NSObject
@property(nonatomic, copy)NSString *housetype;
@property(nonatomic, copy)NSString *community;
@property(nonatomic, copy)NSString *iconurl;
@property(nonatomic, copy)NSString *nid;
@property(nonatomic, copy)NSString *price;
@property (nonatomic, copy)NSString *simpleadd;
@property (nonatomic, copy)NSString *title;



-(instancetype)initWithDictionary:(NSDictionary *)dict;

@end
