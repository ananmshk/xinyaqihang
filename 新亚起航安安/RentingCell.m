//
//  RentingCell.m
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
#import "RentingCell.h"
#import "CellModel.h"
#import "UIImageView+WebCache.h"
#import "common.h"

@implementation RentingCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)GetFromTableViewModel:(CellModel *)cellModel{
    self.title.text = cellModel.title;
    self.price.text = cellModel.price ;
    self.housetype.text = cellModel.housetype;
    self.community.text = cellModel.community;
    self.simpleadd.text = cellModel.simpleadd;
    
   // NSString *url = cellModel.iconurl;
    NSString *urlstring= cellModel.iconurl;
    NSString *imaurlstr = kIMURL;
    NSString *url = [urlstring stringByAppendingString:imaurlstr];
    
    
    [self.iconimage sd_setImageWithURL:[NSURL URLWithString:url]];
    
}
@end







