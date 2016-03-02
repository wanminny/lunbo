//
//  ViewController.m
//  lunbo
//
//  Created by wan on 16/3/2.
//  Copyright © 2016年 wan. All rights reserved.
//

#import "ViewController.h"
#import <SDCycleScrollView/SDCycleScrollView.h>

@interface ViewController ()<SDCycleScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    SDCycleScrollView *cyle = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200) delegate:self placeholderImage:[UIImage imageNamed:@"default"]];
    
    /*!
     *  @author wan, 16-03-02 12:03:05
     *
     *  @brief 可以加载本地或者远程图片均可以 【或者两种混合都可】
     *
     *  @since <#version number#>
     */
    cyle.imageURLStringsGroup = @[@"http://www.86wan.com/uploads/2014/0207/20140207100133846.jpg",
                                  @"http://img.25pp.com/uploadfile/bizhi/ipad3/2014/0930/20140930091109953_ipadm.jpg",
                                  @"2"
                                  ];
    
    
//    @[
//      @"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a4b3d7085dee3d6d2293d48b252b5910/0e2442a7d933c89524cd5cd4d51373f0830200ea.jpg",
//      @"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a41eb338dd33c895a62bcb3bb72e47c2/5fdf8db1cb134954a2192ccb524e9258d1094a1e.jpg",
//      @"http://c.hiphotos.baidu.com/image/w%3D400/sign=c2318ff84334970a4773112fa5c8d1c0/b7fd5266d0160924c1fae5ccd60735fae7cd340d.jpg"
//      ];
    cyle.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
    cyle.currentPageDotColor = [UIColor greenColor];
    cyle.titlesGroup =@[@"第一张图片",@"第2张图片",@"第3张图片-导航控制器",@"第土豆张图片"];
    cyle.autoScrollTimeInterval = 1.5;
    
    [self.view addSubview:cyle];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - <SDCycleScrollViewDelegate>

- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"%zd",index);
    NSLog(@"%s",__func__);
    if(index == 0)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.baidu.com"]];
    }
    if(index == 1)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.sina.com.cn"]];
    }
    if(index == 2)
    {
        [self presentViewController:[[UIViewController alloc] init] animated:YES completion:^{
            
        }];
    }
    if(index == 3)
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://tudou.com"]];
    }
    
}

@end
