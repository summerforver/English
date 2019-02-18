

//
//  CameraView.m
//  English
//
//  Created by 王一卓 on 2019/2/18.
//  Copyright © 2019年 王一卓. All rights reserved.
//

#import "CameraView.h"


@implementation CameraView

- (instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}
- (void)drawRect:(CGRect)rect {
    UIColor *color = [UIColor redColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    //起点

    
//    [path moveToPoint:CGPointMake(140, 130)];
//    
//    [path addLineToPoint:CGPointMake(50, 400)];
//
//    
    
    [path moveToPoint:CGPointMake(140, 130)];
    [path addQuadCurveToPoint:CGPointMake(140, 400) controlPoint:CGPointMake(160, 260)];
    
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapRound; //线条拐角
    path.lineJoinStyle = kCGLineJoinRound; //终点处理
//    path.lineJoinStyle = kCGLineCapRound;
    
    [path stroke];
    [path fill];
}



@end
