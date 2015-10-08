//
//  RentingVC.m
//  新亚起航安安
//
//  Created by qingyun on 15/9/28.
//  Copyright (c) 2015年 河南青云信息科技有限公司. All rights reserved.
//

#import "RentingVC.h"
#import "NSJSONSerialization+NSString.h"
#import "AFNetworking.h"
#import "common.h"
#import "CellModel.h"
#import "RentingCell.h"
@interface RentingVC ()<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong)NSArray *dataArray;
//@property(nonatomic,strong)NSArray *datas;
@end

@implementation RentingVC
-(void)viewDidLoad{
    [super viewDidLoad];
    //
   //self.navigationController.navigationBar.hidden = YES;
    
    UISearchBar *search = [[UISearchBar alloc]initWithFrame:CGRectMake(110, 7, 150, 30)];
   [self.navigationController.navigationBar addSubview:search];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self loaddata];
   
    
    
}

#pragma mark - tableview delegata data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    RentingCell *cell = [tableView dequeueReusableCellWithIdentifier:@"rentingcell" forIndexPath:indexPath];
    
   // cell.title.text =_datas[indexPath.row][@"title"];
    
    [cell GetFromTableViewModel:self.dataArray[indexPath.row]];
    return cell;
}
- (IBAction)area:(id)sender {
}

- (IBAction)price:(id)sender {
}
- (IBAction)more:(id)sender {
}
-(void)loaddata{
    NSDictionary *paras = @{@"commandcode":@"108",@"REQUEST_BODY":@{@"city":@"昆明"}};
    //序列化为字符串
    NSString *parsString = [NSJSONSerialization stringWithJSONObject:paras];
    //完整的提交数据
    NSDictionary *paramenters = @{@"HEAD_INFO":parsString};
    
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [manager GET:kURL parameters:paramenters success:^ void(AFHTTPRequestOperation * operation, id responseObject) {
        //
       NSLog(@"%@", responseObject);
        NSDictionary *dic =[responseObject valueForKey:@"RESPONSE_BODY"];
       // _datas = dic[@"list"];
        NSArray *data =[dic valueForKey:@"list"];
        NSLog(@"%@",data);
        NSMutableArray *models = [NSMutableArray array];
        for (NSDictionary *dict1 in data) {
            CellModel *model = [[CellModel alloc]initWithDictionary:dict1];
            [models addObject:model];
            self.dataArray = models;
            [self.tableView reloadData];
        }
        


    } failure:^ void(AFHTTPRequestOperation * operation, NSError * error) {
        //
        NSLog(@"%@", error);
    }];


}

@end
