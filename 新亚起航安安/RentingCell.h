//
//  RentingCell.h
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
 
#import <UIKit/UIKit.h>
#import "CellModel.h"

@interface RentingCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *iconimage;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *housetype;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *community;

@property (weak, nonatomic) IBOutlet UILabel *simpleadd;

@property(nonatomic, strong) CellModel *cellModel;
- (void)GetFromTableViewModel:(CellModel *)cellModel;
@end










