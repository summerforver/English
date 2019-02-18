//
//  MainView.m
//  English
//
//  Created by 王一卓 on 2019/1/28.
//  Copyright © 2019年 王一卓. All rights reserved.
//

#import "MainView.h"
#import "CameraView.h"
#import <Masonry.h>
#define EWidth [UIScreen mainScreen].bounds.size.width
#define EHeight [UIScreen mainScreen].bounds.size.height
@interface MainView()
//@property (nonatomic, strong)UITextField *textFiled;
@property (nonatomic, strong)UISearchBar *searchBar;
@property (nonatomic, strong)UIButton *button;
@property (nonatomic, strong)UITextView *textView;
@property (nonatomic, strong)NSMutableArray *mutableArray;
@property (nonatomic, strong) CAShapeLayer *CurvedLineLayer;
@end
@implementation MainView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}
- (void)initView {
//    self.textFiled = [[UITextField alloc] initWithFrame:CGRectMake(0, 30, EWidth, 50)];
//    self.textFiled.placeholder = @"搜索";
//    self.textFiled.layer.masksToBounds = YES;
//    self.textFiled.layer.cornerRadius = 20;
//    self.textFiled.backgroundColor = [UIColor lightGrayColor];
//    [self addSubview:self.textFiled];
    self.searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 30, EWidth, 50)];
    [self addSubview:self.searchBar];
    for (int j = 0; j < 3; j ++) {
        for (int i = 0; i < 3; i ++) {
            self.button = [[UIButton alloc] initWithFrame:CGRectMake(i * 120 + 20, 130 + j * 100, 80, 50)];
            if (i == 1) {
                self.button.tag = 5 + i + j;
            } else if (i == 2) {
                self.button.tag = 10 + i + j;
            } else {
                self.button.tag = i + j;
            }
            self.button.layer.masksToBounds = YES;
            self.button.layer.cornerRadius = 16;
            if (self.button.tag == 0) {
                [self.button setTitle:@"what" forState:UIControlStateNormal];
            } else if (self.button.tag == 1) {
                [self.button setTitle:@"are" forState:UIControlStateNormal];
            }else if (self.button.tag == 2) {
                [self.button setTitle:@"where" forState:UIControlStateNormal];
            } else if (self.button.tag == 6) {
                [self.button setTitle:@"is" forState:UIControlStateNormal];
            } else if (self.button.tag == 7) {
                [self.button setTitle:@"how" forState:UIControlStateNormal];
            } else if (self.button.tag == 8) {
                [self.button setTitle:@"it" forState:UIControlStateNormal];
            } else if (self.button.tag == 12) {
                [self.button setTitle:@"if" forState:UIControlStateNormal];
            } else if (self.button.tag == 13) {
                [self.button setTitle:@"why" forState:UIControlStateNormal];
            } else {
                [self.button setTitle:@"you" forState:UIControlStateNormal];
            }
            self.button.titleLabel.textColor = [UIColor whiteColor];
            self.button.titleLabel.textAlignment = NSTextAlignmentCenter;
            self.button.titleLabel.font = [UIFont systemFontOfSize:20.0];
            self.button.backgroundColor = [UIColor orangeColor];
            [self.button addTarget:self action:@selector(pressButton:) forControlEvents:UIControlEventTouchUpInside];
            
            [self addSubview:self.button];
            
        }
    }
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 500, EWidth, 60)];
    self.textView.layer.masksToBounds = YES;
    self.textView.layer.cornerRadius = 14;
    self.textView.font = [UIFont systemFontOfSize:24.0];
    self.textView.textColor = [UIColor whiteColor];
    self.textView.backgroundColor = [UIColor blueColor];
    [self addSubview:self.textView];
    
    self.mutableArray = [[NSMutableArray alloc] init];
}

- (void)pressButton:(UIButton *)sender {
    sender.selected = !sender.selected;
    NSString *textString = [NSString stringWithFormat:@"%@ ",sender.titleLabel.text];
    if (sender.selected == YES) {
        [self.mutableArray addObject:textString];
        int i = 0;
        int j = 0;
        CameraView *cView = [[CameraView alloc] initWithFrame:CGRectMake(i * 120 + 50, 150 + j * 100, 2, 380)];
        cView.backgroundColor = [UIColor redColor];
        [self addSubview:cView];
       
        sender.selected = NO;
    }
    NSLog(@"%@", self.mutableArray);
    NSString *string = [[NSString alloc] init];
    string = [self.mutableArray componentsJoinedByString:@" "];

    self.textView.text = string;
}


@end
