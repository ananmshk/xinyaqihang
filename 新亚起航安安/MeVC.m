//
//  MeVC.m
//  新亚起航安安
//
//  Created by qingyun on 15/9/25.
//  Copyright (c) 2015年 河南青云信息科技有限公司. All rights reserved.
//

#import "MeVC.h"

@interface MeVC ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property(nonatomic, weak) NSString *phone;
@end

@implementation MeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout =UIRectEdgeNone;
    

   
    //接收通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(cellValueChange) name:@"logoutValue" object:nil];

    //接收通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(username:) name:@"login" object:nil];
    



    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


-(void)cellValueChange{
    self.label.text = @"登陆/注册";
    self.image.image = [UIImage imageNamed:@"登陆注册"];
    
}
-(void)username:(NSDictionary *)user{
    NSDictionary *dic1=[user valueForKey:@"userInfo"];
   NSString *Str1=[dic1 valueForKey:@"username"];
    NSString *str2 =[dic1 valueForKey:@"222"];

    self.label.text=str2;
     self.image.image = [UIImage imageNamed:@"输入账号图标"];
    NSLog(@"12345678%@",Str1);
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return 5;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    UIViewController *vc;
    if (indexPath.row == 0 && [cell.textLabel.text isEqualToString:@"登陆/注册"]) {
        vc = [self.storyboard instantiateViewControllerWithIdentifier:@"login"];
        [self.navigationController pushViewController:vc animated:YES]; 
    }else if(indexPath.row == 0 &&[cell.textLabel.text isEqualToString:@"个人中心"]) {
        vc = [self.storyboard instantiateViewControllerWithIdentifier:@"logout"];
        
        [self.navigationController pushViewController:vc animated:YES];
       
    }
    
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


@end
