//
//  DJXUIView.h
//  DJXResponChainText
//
//  Created by ioser on 2018/12/18.
//  Copyright © 2018年 Lenny. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DJXUITapGestureRecognizer.h"

@interface DJXUIView : UIView<UIGestureRecognizerDelegate>
@property (nonatomic, strong) UILabel *label;

@property (nonatomic, strong) DJXUITapGestureRecognizer *tap;

@end
