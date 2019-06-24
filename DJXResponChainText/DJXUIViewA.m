//
//  DJXUIViewA.m
//  DJXResponChainText
//
//  Created by ioser on 2018/12/18.
//  Copyright © 2018年 Lenny. All rights reserved.
//

#import "DJXUIViewA.h"

@implementation DJXUIViewA
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
//        [self removeGestureRecognizer:self.tap];
    }
    return self;
}
- (void)tapInSelf
{
    NSLog(@"tap in current view : %@", NSStringFromClass([self class]));
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event
{
//    [self.nextResponder touchesBegan:touches withEvent:event];
    NSLog(@"touch in %@",[self class]);
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event
{
    
}
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event
{
    
}
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event
{
    
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    if (self.tap == gestureRecognizer) {
        return YES;
    }
    return NO;
}


- (nullable UIView *)hitTest:(CGPoint)point withEvent:(nullable UIEvent *)event   // recursively calls -pointInside:withEvent:. point is in the receiver's coordinate system
{
    UIView *view = [super hitTest:point withEvent:event];
//    NSLog(@"class:%@,method:%s,view:%@",NSStringFromClass([self class]),__func__,view);
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
