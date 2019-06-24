//
//  DJXUIButtonE.m
//  DJXResponChainText
//
//  Created by ioser on 2018/12/18.
//  Copyright © 2018年 Lenny. All rights reserved.
//

#import "DJXUIButtonE.h"

@implementation DJXUIButtonE

+ (UIButton *)buttonWithType:(UIButtonType)type
{
    DJXUIButtonE *button = [super buttonWithType:type];
    [button addEvents];
    return button;
}

- (void)addEvents
{
    [self addTarget:self action:@selector(didClickAction) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didClickAction
{
    NSLog(@"click in %@",NSStringFromClass([self class]));
}


//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event
//{
//    NSLog(@"touch in %@",[self class]);
//}

- (nullable UIView *)hitTest:(CGPoint)point withEvent:(nullable UIEvent *)event   // recursively calls -pointInside:withEvent:. point is in the receiver's coordinate system
{
    UIView *view = [super hitTest:point withEvent:event];
    NSLog(@"class:%@,method:%s,view:%@",NSStringFromClass([self class]),__func__,view);

    return view;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(nullable UIEvent *)event  // default returns YES if point is in bounds
{
    BOOL ret  = [super pointInside:point withEvent:event];
    NSLog(@"class:%@,method:%s,ret:%@",NSStringFromClass([self class]),__func__,@(ret));
    return ret;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
