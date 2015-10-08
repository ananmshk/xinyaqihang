//
//  Model.m
//  新亚起航安安
//
//  Created by qingyun on 15/9/29.
//  Copyright (c) 2015年 河南青云信息科技有限公司. All rights reserved.
//
/*
 *housetype
 *community
 *iconurl;
 *nid;
 *price;
 simpleadd;
 *title;
 */

#import "CellModel.h"

@implementation CellModel
-(instancetype)initWithDictionary:(NSDictionary *)dict{
    if (self = [super init]) {
        self.title = dict[@"title"];
        self.price = [dict[@"price"] stringValue];
        self.housetype = dict[@"housetype"];
        self.community = dict[@"community"];
        self.nid = dict[@"nid"];
        self.simpleadd = dict[@"simpleadd"];
      _iconurl = dict[@"iconurl"];
    }
    return self;
    
}
@end
