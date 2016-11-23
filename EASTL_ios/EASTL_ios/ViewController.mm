//
//  ViewController.m
//  EASTL_ios
//
//  Created by egret0 on 16/11/22.
//  Copyright © 2016年 egret. All rights reserved.
//

#import "ViewController.h"
#include "TestClass.hpp"
#include "EASTL/stack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    eastl::stack<TestClass*> s;
    
    s.push(new TestClass());
    s.top()->setData("00000");
    s.push(new TestClass("11111"));
    s.push(new TestClass("22222"));
    s.pop();
    
    NSLog(@"============ %ld", s.size());
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
