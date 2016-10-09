//
//  YLTabBarController.m
//  SinaWeibo
//
//  Created by 姚乐 on 16/10/9.
//  Copyright © 2016年 yaole. All rights reserved.
//

#import "YLTabBarController.h"
#import "YLTabBar.h"

@interface YLTabBarController ()

@end

@implementation YLTabBarController

-(instancetype)init {
    if (self=[super init]){
        [self setupUI];
    }
    return self;
}

-(void)setupUI{
    
    UIViewController *vc1 = [[UIViewController alloc]init];
    vc1.view.backgroundColor = [UIColor redColor];
    vc1.tabBarItem.title = @"首页";
    vc1.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];
    vc1.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_home_selected"];
    [self addChildViewController:vc1];
    
    UIViewController *vc2 = [[UIViewController alloc]init];
    vc2.view.backgroundColor = [UIColor grayColor];
    vc2.tabBarItem.title = @"消息";
    vc2.tabBarItem.image = [UIImage imageNamed:@"tabbar_message_center"];
    vc2.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_message_center_selected"];
    [self addChildViewController:vc2];
    
    UIViewController *vc3 = [[UIViewController alloc]init];
    vc3.view.backgroundColor = [UIColor blueColor];
    vc3.tabBarItem.title = @"发现";
    vc3.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
    vc3.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_discover_selected"];
    [self addChildViewController:vc3];
    
    UIViewController *vc4 = [[UIViewController alloc]init];
    vc4.view.backgroundColor = [UIColor yellowColor];
    vc4.tabBarItem.title = @"我";
    vc4.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile"];
    vc4.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_profile_selected"];
    [self addChildViewController:vc4];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    YLTabBar *tabBar = [[YLTabBar alloc]init];
    [self setValue:tabBar forKeyPath:@"tabBar"];
    
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
