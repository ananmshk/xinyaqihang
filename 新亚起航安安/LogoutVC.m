//
//  LogoutVC.m
//  新亚起航安安
//
//  Created by qingyun on 15/9/27.
//  Copyright (c) 2015年 河南青云信息科技有限公司. All rights reserved.
//

#import "LogoutVC.h"


@interface LogoutVC()

@property (weak, nonatomic) IBOutlet UILabel *phoneNnmber;

@end


@implementation LogoutVC

- (void)viewDidLoad {
    
    //
    
}

- (IBAction)logout:(id)sender {
     //发送通知改变rootview的cell的值
    [[NSNotificationCenter defaultCenter] postNotificationName:@"logoutValue" object:nil];
    
    //返回根控制器
    [self.navigationController popToRootViewControllerAnimated:YES];
    
    
}
@end
