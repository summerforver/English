//
//  ViewController.m
//  English
//
//  Created by 王一卓 on 2019/1/24.
//  Copyright © 2019年 王一卓. All rights reserved.
//

#import "ViewController.h"
#import "MainView.h"
#define EWidth [UIScreen mainScreen].bounds.size.width
#define EHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()
@property (nonatomic, strong) MainView *mainView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mainView = [[MainView alloc] initWithFrame:CGRectMake(0, 0, EWidth, EHeight)];
    
    [self.view addSubview:self.mainView];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
