//
//  DJXUIButtonF.m
//  DJXResponChainText
//
//  Created by ioser on 2018/12/18.
//  Copyright © 2018年 Lenny. All rights reserved.
//

#import "DJXUIButtonF.h"

@implementation DJXUIButtonF

+ (UIButton *)buttonWithType:(UIButtonType)type
{
    DJXUIButtonF *button = [super buttonWithType:type];
    [button addEvents];
    return button;
}

- (void)addEvents
{
    [self addTarget:nil action:@selector(didClickAction) forControlEvents:UIControlEventTouchUpInside];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapInSelf)];
    [self addGestureRecognizer:tap];
}

- (void)didClickAction
{
    NSLog(@"click in %@",NSStringFromClass([self class]));
}

- (void)tapInSelf
{
    NSLog(@"tap in %@",NSStringFromClass([self class]));
}

//
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
