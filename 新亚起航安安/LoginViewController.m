//
//  LoginViewController.m
//  新亚起航安安
//
//  Created by qingyun on 15/9/27.
//  Copyright (c) 2015年 河南青云信息科技有限公司. All rights reserved.
//

#import "LoginViewController.h"
#import "SVProgressHUD.h"
#import "common.h"
#import "AFNetworking.h"
#import "NSJSONSerialization+NSString.h"

@interface LoginViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *passWord;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.userName.delegate = self;
    self.passWord.delegate = self;
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@""] style:UIBarButtonItemStylePlain target:self action:@selector(GoBackViewController)];
    //密码隐藏显示
    self.passWord.secureTextEntry = YES;
    
    //发送通知改变rootview的cell的值
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Login:(id)sender {
    if (self.userName.text.length == 0 || self.passWord.text.length == 0) {
        [SVProgressHUD showErrorWithStatus:@"账户或密码不能为空"];
        
    }else{
        NSDictionary *paras = @{@"commandcode":@"111",@"REQUEST_BODY":@{@"username":self.userName.text,@"password":self.passWord.text}};
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
            NSArray *arr =[dic valueForKey:@"list"];
            
           
            
            BOOL state =arr[0][@"state"];
            if (state == YES) {
                NSLog(@"登录成功");
                
              //  [[NSNotificationCenter defaultCenter ]postNotificationName:@"changeValue" object:nil];
                //
                [[NSNotificationCenter defaultCenter] postNotificationName:@"login" object:nil userInfo:@{@"username":self.userName.text,@"222":@"个人中心"}];
                [self.navigationController popToRootViewControllerAnimated:YES];
                
            }
            
        } failure:^ void(AFHTTPRequestOperation * operation, NSError * error) {
            //
            NSLog(@"%@", error);
        }];
    }
}

//-(BOOL)textFieldShouldReturn:(UITextField *)textField{
//    [self.userName resignFirstResponder];
//    [self.passWord resignFirstResponder];
//    return YES;
//}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    [self.userName resignFirstResponder];
        [self.passWord resignFirstResponder];
        return YES;
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
