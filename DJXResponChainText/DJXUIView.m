//
//  DJXUIView.m
//  DJXResponChainText
//
//  Created by ioser on 2018/12/18.
//  Copyright © 2018年 Lenny. All rights reserved.
//

#import "DJXUIView.h"

@implementation DJXUIView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, (self.frame.size.height - 20)/2, self.frame.size.width, 20)];
        label.text = NSStringFromClass([self class]);
        label.textColor = [UIColor blackColor];
        label.textAlignment = NSTextAlignmentCenter;
        [self addSubview:label];
        self.label = label;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapInSelf)];
        [self addGestureRecognizer:tap];
        tap.delegate = self;
        self.tap = tap;
        
    }
    return self;
}

- (void)tapInSelf
{
    NSLog(@"tap in current view : %@", NSStringFromClass([self class]));
}
//
//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event
//{
//    NSLog(@"touch in %@",[self class]);
//}

//- (nullable UIView *)hitTest:(CGPoint)point withEvent:(nullable UIEvent *)event   // recursively calls -pointInside:withEvent:. point is in the receiver's coordinate system
//{
//    NSLog(@"class:%@,method:%s",NSStringFromClass([self class]),__func__);
//    UIView *view = [super hitTest:point withEvent:event];
//    return view;
//}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
