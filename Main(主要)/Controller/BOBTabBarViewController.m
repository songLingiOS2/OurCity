//
//  HWTabBarViewController.m
//  黑马微博2期
//
//  Created by apple on 14-10-7.
//  Copyright (c) 2014年 heima. All rights reserved.
//

#import "BOBTabBarViewController.h"
#import "ContvenienceViewController.h"
#import "HomeViewController.h"
#import "PublishViewController.h"
#import "ProfileViewController.h"
#import "BOBNavigationController.h"

@interface BOBTabBarViewController ()

@end

@implementation BOBTabBarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1.初始化子控制器
    HomeViewController *home = [[HomeViewController alloc] init];
    [self addChildVc:home title:@"首页" image:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
    
    ContvenienceViewController *messageCenter = [[ContvenienceViewController alloc] init];
    [self addChildVc:messageCenter title:@"便民" image:@"tabbar_message_center" selectedImage:@"tabbar_message_center_selected"];
    
    PublishViewController *discover = [[PublishViewController alloc] init];
    [self addChildVc:discover title:@"发布" image:@"tabbar_discover" selectedImage:@"tabbar_discover_selected"];
    
    ProfileViewController *profile = [[ProfileViewController alloc] init];
    [self addChildVc:profile title:@"我的" image:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
}

/**
 *  添加一个子控制器
 *
 *  @param childVc       子控制器
 *  @param title         标题
 *  @param image         图片
 *  @param selectedImage 选中的图片
 */
- (void)addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    // 设置子控制器的文字
    childVc.title = title; // 同时设置tabbar和navigationBar的文字
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 设置文字的样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = TCColor(123, 123, 123);
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor colorWithRed:1.000 green:0.069 blue:0.000 alpha:1.000];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
//    childVc.view.backgroundColor = HWRandomColor;
    
    // 先给外面传进来的小控制器 包装 一个导航控制器
    BOBNavigationController *nav = [[BOBNavigationController alloc] initWithRootViewController:childVc];
    
    // 添加为子控制器
    [self addChildViewController:nav];
}

@end
