//
//  KNNavViewViewController.m
//  KnysCl
//
//  Created by cloud on 16/11/7.
//  Copyright © 2016年 cnknys. All rights reserved.
//

#import "KNNavViewController.h"
#import "UIBarButtonItem+KNBarButtonItem.h"


@interface KNNavViewController ()

@end

@implementation KNNavViewController

//当执行该类的第一个方法之前执行,并且只执行一次
+(void)initialize {
    //获取当前的导航条---获取到正在显示的导航条
    UINavigationBar *navBar = [UINavigationBar appearance];

    //设置文字颜色
    [navBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]}];
    //获取当前的导航按钮---获取到正在显示的导航按钮
     UIBarButtonItem *item = [UIBarButtonItem appearance];
    item.tintColor = [UIColor whiteColor];
    [item setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:16]} forState:UIControlStateNormal];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(back) image:@"NavBack" highImage:@"NavBack"];
    }
    if ( [self respondsToSelector:@selector(interactivePopGestureRecognizer)] && animated == YES )
    {
        self.interactivePopGestureRecognizer.enabled = NO;
    }
    
    [super pushViewController:viewController animated:animated];
}

- (void)back{
    [self popViewControllerAnimated:YES];
}

//设置电池兰高亮显示
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
