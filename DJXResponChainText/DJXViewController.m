//
//  ViewController.m
//  DJXResponChainText
//
//  Created by ioser on 2018/12/18.
//  Copyright © 2018年 Lenny. All rights reserved.
//

#import "DJXViewController.h"
#import "DJXUIViewA.h"
#import "DJXUIViewB.h"
#import "DJXUIViewC.h"
//#import "DJXUIViewD.h"
//#import "DJXUIButtonE.h"
#import "DJXUIButtonF.h"


@interface DJXViewController ()

@end

@implementation DJXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DJXUIViewA *viewA = [[DJXUIViewA alloc] initWithFrame:self.view.bounds];
//    viewA.backgroundColor = [UIColor redColor];
    [self.view addSubview:viewA];
    
    DJXUIViewB *viewB = [[DJXUIViewB alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 100)];
    viewB.backgroundColor = [UIColor greenColor];
    [viewA addSubview:viewB];
    
    DJXUIViewC *viewC = [[DJXUIViewC alloc] initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 100)];
    viewC.backgroundColor = [UIColor blueColor];
    [viewA addSubview:viewC];
    
//    DJXUIViewD *viewD = [[DJXUIViewD alloc] initWithFrame:CGRectMake(0, 110, self.view.frame.size.width, 50)];
//    viewD.backgroundColor = [UIColor yellowColor];
//    [viewC addSubview:viewD];

//    DJXUIButtonE *buttonE = [DJXUIButtonE buttonWithType:UIButtonTypeCustom];
//    [buttonE setTitle:@"DJXUIButtonE" forState:UIControlStateNormal];
//    buttonE.frame = CGRectMake(0, 400, self.view.frame.size.width, 50);
//    buttonE.backgroundColor = [UIColor grayColor];
//    [viewA addSubview:buttonE];
    
    DJXUIButtonF *buttonF = [DJXUIButtonF buttonWithType:UIButtonTypeCustom];
    [buttonF setTitle:@"DJXUIButtonF" forState:UIControlStateNormal];
    buttonF.frame = CGRectMake(0, 480, self.view.frame.size.width, 50);
    buttonF.backgroundColor = [UIColor brownColor];
    [viewA addSubview:buttonF];
    // Do any additional setup after loading the view, typically from a nib.
}

- (BOOL)canBecomeFirstResponder   // default is NO
{
    BOOL ret = [super canBecomeFirstResponder];
    return ret;
}
- (BOOL)becomeFirstResponder
{
    BOOL ret = [super becomeFirstResponder];
    return ret;
}
- (BOOL)canResignFirstResponder   // default is YES
{
    BOOL ret = [super canResignFirstResponder];
    return ret;
}
- (BOOL)resignFirstResponder
{
    BOOL ret = [super resignFirstResponder];
    return ret;
}
- (BOOL)isFirstResponder
{
    BOOL ret = [super isFirstResponder];
    return ret;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event
{
    NSLog(@"touch in viewController");
}

- (void)unUseCodeTest
{
    NSLog(@"这是一条无用的代码，你怎么找出我来");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
