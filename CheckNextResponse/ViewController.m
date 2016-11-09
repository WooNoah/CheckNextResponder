//
//  ViewController.m
//  CheckNextResponse
//
//  Created by tb on 16/11/9.
//  Copyright © 2016年 com.tb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


/**
 *  判断响应链中是否有给定的View，如果有，则返回该View的指针
 */
- (UIResponder *)checkNextResponderIsKindOfViewController : (Class)viewClass{
    UIResponder *reResponder = nil ;
    
    for (UIView* next = self.view.superview ; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        //        WDLog(@"%@",nextResponder);
        if ([nextResponder isKindOfClass: viewClass ]) {
            reResponder = nextResponder ;
            
            break;
        }
    }
    
    return reResponder ;
}

@end
