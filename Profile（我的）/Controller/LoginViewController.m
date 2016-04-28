//
//  LoginViewController.m
//  OurCity
//
//  Created by 郑波波 on 16/4/28.
//  Copyright © 2016年 郑波波. All rights reserved.
//

#import "LoginViewController.h"
#import "SegmentControl.h"
#import "ForgetViewController.h"
#import "RegistViewController.h"



@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *phoneNumber;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *resgisterButton;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"登陆";
    self.edgesForExtendedLayout = 0;
    self.view.backgroundColor = [UIColor whiteColor];
    [self creatUI];
}

- (void)creatUI
{
    SegmentControl *segment = [[SegmentControl alloc]initWithCreatSegmentControlWithTitles:@[@"用户",@"商家"] frame:CGRectMake(0, 0, CMScreenWidth, 64)];
    [self.view addSubview:segment];
    self.bgImageView.image = [UIImage imageNamed:@"gy.jpg"];
    _phoneNumber.layer.masksToBounds = YES;
    _phoneNumber.layer.cornerRadius = 15;
    _phoneNumber.layer.borderWidth = 0.5;
    _phoneNumber.layer.borderColor = [UIColor lightGrayColor].CGColor;
    
    _password.layer.masksToBounds = YES;
    _password.layer.cornerRadius = 15;
    _password.layer.borderWidth = 0.5;
    _password.layer.borderColor = [UIColor lightGrayColor].CGColor;
    
    _loginButton.layer.masksToBounds = YES;
    _loginButton.layer.cornerRadius = 15;
    _resgisterButton.layer.masksToBounds = YES;
    _resgisterButton.layer.cornerRadius = 15;
    
}

- (IBAction)jionUsAction:(id)sender {
    ForgetViewController *forget = [[ForgetViewController alloc]init];
    [self.navigationController pushViewController:forget animated:YES];
}

- (IBAction)loginAction:(id)sender {
    
}

- (IBAction)registerAction:(id)sender {
    RegistViewController *regist = [[RegistViewController alloc]init];
    [self.navigationController pushViewController:regist animated:YES];
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
