//
//  FirstViewController.m
//  aaa
//
//  Created by ww on 16/4/28.
//  Copyright © 2016年 ww. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *push = [UIButton buttonWithType:UIButtonTypeSystem];
    push.frame = CGRectMake(200, 200, 100, 100);
    [push setTitle:@"push" forState:UIControlStateNormal];
    push.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [push addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:push];
}

- (void)push:(UIButton *)button {
    SecondViewController *controller = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
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
