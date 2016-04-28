//
//  ConvenienceVC.m
//  同城帮
//
//  Created by 郑波波 on 16/4/24.
//  Copyright © 2016年 郑波波. All rights reserved.
//

#import "HomeViewController.h"
#import "SuperMarketTableVC.h"
#import "SnickTableVC.h"
#import "PlayTableViewController.h"
#import "KTVTableViewController.h"
#import "TeamBuyTableViewController.h"
#import "NoticeViewController.h"
#import "FixTableViewController.h"
#import "HireTableViewController.h"
#import "JionUsTableViewController.h"


@interface HomeViewController ()


@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.edgesForExtendedLayout = 0;
}


- (IBAction)superMarket:(UIButton *)sender {
    SuperMarketTableVC *market = [[SuperMarketTableVC alloc]init];
    [self.navigationController pushViewController:market animated:YES];
}

- (IBAction)snick:(id)sender {
    SnickTableVC *snick = [[SnickTableVC alloc]init];
    [self.navigationController pushViewController:snick animated:YES];
}

- (IBAction)play:(UIButton *)sender {
    PlayTableViewController *play = [[PlayTableViewController alloc]init];
    [self.navigationController pushViewController:play animated:YES];
}

- (IBAction)teamBuy:(id)sender {
    TeamBuyTableViewController *team = [[TeamBuyTableViewController alloc]init];
    [self.navigationController pushViewController:team animated:YES];
}

- (IBAction)KTV:(id)sender {
    KTVTableViewController *ktv = [[KTVTableViewController alloc]init];
    [self.navigationController pushViewController:ktv animated:YES];
}

- (IBAction)fixElectlic:(id)sender {
    FixTableViewController *fix = [[FixTableViewController alloc]init];
    [self.navigationController pushViewController:fix animated:YES];
}

- (IBAction)notice:(id)sender {
    NoticeViewController *notice = [[NoticeViewController alloc]init];
    [self.navigationController pushViewController:notice animated:YES];
}

- (IBAction)Hire:(id)sender {
    HireTableViewController *hire = [[HireTableViewController alloc]init];
    [self.navigationController pushViewController:hire animated:YES];
}

- (IBAction)jionUs:(id)sender {
    JionUsTableViewController *jion = [[JionUsTableViewController alloc]init];
    [self.navigationController pushViewController:jion animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
