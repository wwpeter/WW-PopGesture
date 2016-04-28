//
//  ViewController.m
//  aaa
//
//  Created by ww on 16/4/28.
//  Copyright © 2016年 ww. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
   
    UIButton *push = [UIButton buttonWithType:UIButtonTypeSystem];
    push.frame = CGRectMake(200, 200, 100, 100);
    [push setTitle:@"push" forState:UIControlStateNormal];
    push.backgroundColor = [UIColor groupTableViewBackgroundColor];
    push.center = self.view.center;
    [push addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:push];
}
- (void)push:(UIButton *)button {
    FirstViewController *controller = [[FirstViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
