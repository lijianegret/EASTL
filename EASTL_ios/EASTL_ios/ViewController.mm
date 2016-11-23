//
//  ViewController.m
//  EASTL_ios
//
//  Created by egret0 on 16/11/22.
//  Copyright © 2016年 egret. All rights reserved.
//

#import "ViewController.h"
#include "TestClass.hpp"
#include "EASTL/deque.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    eastl::deque<TestClass*> d;
    
    d.push_back(new TestClass("33333"));
    d.push_back(new TestClass("44444"));
    d.push_back(new TestClass("55555"));
    d.push_front(new TestClass("22222"));
    d.push_front(new TestClass("11111"));
    
    for (int i = 0; i < d.size(); i++)
    {
        d[i]->printData();
    }
    
    NSLog(@"============ %ld", d.size());
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
