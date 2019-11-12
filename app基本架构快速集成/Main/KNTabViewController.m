//
//  KNTabViewController.m
//  KnysCl
//
//  Created by cloud on 16/11/7.
//  Copyright © 2016年 cnknys. All rights reserved.
//

#import "KNTabViewController.h"
#import "KNHomeController.h"
#import "KNActivityController.h"
#import "KNBuyCarController.h"
#import "KNMineController.h"
#import "KNNavViewController.h"

@interface KNTabViewController ()

@end

@implementation KNTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //整体架构搭建
    [self setUpConstruct];
}


#pragma mark - 整体架构
- (void)setUpConstruct {
    
    KNHomeController *home = [KNHomeController new];
    [self addChildVc:home title:@"首页" image:@"common_tab_btn_home_60_n" selectedImage:@"common_tab_btn_home_60_s"];

    KNActivityController *activity = [KNActivityController new];
    [self addChildVc:activity title:@"活动" image:@"common_tab_btn_huodong_60_n" selectedImage:@"common_tab_btn_huodong_60_s"];
    
    KNBuyCarController *buyCar = [KNBuyCarController new];
    [self addChildVc:buyCar title:@"购物车" image:@"common_tab_btn_gouwuche_60_n" selectedImage:@"common_tab_btn_gouwuche_60_s"];
    
    KNMineController *mine = [KNMineController new];
    [self addChildVc:mine title:@"我的" image:@"common_tab_btn_me_60_n" selectedImage:@"common_tab_btn_me_60_s"];
    
}

#pragma mark - 添加子控制器
- (void)addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage {
    // 设置子控制器的文字
    childVc.tabBarItem.title = title; // 设置tabbar的文字
    childVc.navigationItem.title = title; // 设置navigationBar的文字
    // 设置子控制器的图片
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 设置文字的样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor colorWithRed:36/255.0 green:55/255.0 blue:107/255.0 alpha:1.0];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    // 先给外面传进来的小控制器 包装 一个导航控制器
    KNNavViewController *nav = [[KNNavViewController alloc] initWithRootViewController:childVc];
    nav.navigationBar.barTintColor = [UIColor whiteColor];
    // 添加为子控制器
    [self addChildViewController:nav];
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
