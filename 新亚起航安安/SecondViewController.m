//
//  SecondViewController.m
//  新亚起航安安
//
//  Created by qingyun on 15/9/29.
//  Copyright (c) 2015年 河南青云信息科技有限公司. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UISearchBar *search = [[UISearchBar alloc]initWithFrame:CGRectMake(110, 7, 150, 30)];
    
    [self.navigationController.navigationBar addSubview:search];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)area:(id)sender {
}
- (IBAction)price:(id)sender {
}
- (IBAction)more:(id)sender {
}
- (IBAction)city:(id)sender {
}
- (IBAction)map:(id)sender {
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
