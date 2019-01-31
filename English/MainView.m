//
//  MainView.m
//  English
//
//  Created by 王一卓 on 2019/1/28.
//  Copyright © 2019年 王一卓. All rights reserved.
//

#import "MainView.h"
#import <Masonry.h>
#define EWidth [UIScreen mainScreen].bounds.size.width
#define EHeight [UIScreen mainScreen].bounds.size.height
@interface MainView()
@property (nonatomic, strong)UITextField *textFiled;
@property (nonatomic, strong)UIButton *button;
@property (nonatomic, strong)UITextView *textView;
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
    self.textFiled = [[UITextField alloc] initWithFrame:CGRectMake(0, 30, EWidth, 50)];
    self.textFiled.placeholder = @"搜索";
    self.textFiled.layer.masksToBounds = YES;
    self.textFiled.layer.cornerRadius = 20;
    self.textFiled.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:self.textFiled];
    for (int j = 0; j < 3; j ++) {
        for (int i = 0; i < 3; i ++) {
            self.button = [[UIButton alloc] initWithFrame:CGRectMake(i * 120 + 20, 130 + j * 100, 80, 50)];
            self.button.tag = i + j;
            self.button.layer.masksToBounds = YES;
            self.button.layer.cornerRadius = 16;
            if (self.button.tag < 2) {
                [self.button setTitle:@"what" forState:UIControlStateNormal];
            } else if (self.button.tag < 4) {
                [self.button setTitle:@"are" forState:UIControlStateNormal];
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
}

- (void)pressButton:(UIButton *)sender {
    sender.selected = !sender.selected;
    if (sender.selected == YES) {
        NSString *textString = [NSString stringWithFormat:@"%@ ",sender.titleLabel.text];
        self.textView.text = textString;
        NSLog(@"sender.titleLabel.text ---- %@ ----", sender.titleLabel.text);
        NSLog(@"textView.text ---- %@ ----", textString);
    }
}

@end
