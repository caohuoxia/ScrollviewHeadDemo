//
//  ViewController.m
//  ScrollviewHeadDemo
//
//  Created by admin on 2017/8/29.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong)CHXTopSegmentV *topView;
@property(nonatomic, strong)NSArray *titleNames;
@property(nonatomic, strong)NSArray *vcNames;
@end

@implementation ViewController

- (NSArray *)titleNames{
    if (!_titleNames) {
        _titleNames = @[@"待收",@"结清"];
    }
    return _titleNames;
}

- (NSArray *)vcNames{
    if (!_vcNames) {
        _vcNames = @[@"CHXTestVC1",@"CHXTestVC2"];
    }
    return _vcNames;
}

- (CHXTopSegmentV *)topView {
    if (!_topView) {
        _topView = [[CHXTopSegmentV alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 40) titles:self.titleNames controllers:self.vcNames parentVC:self tapView:^(NSInteger tag) {
            //            CGPoint point = CGPointMake(tag * SCREEN_WIDTH ,self.contentScrollView.contentOffset.y);
            //            [self.contentScrollView setContentOffset:point animated:YES];
        }];
    }
    return _topView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.topView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.topView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
