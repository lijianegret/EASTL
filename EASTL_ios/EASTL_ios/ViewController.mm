//
//  ViewController.m
//  EASTL_ios
//
//  Created by egret0 on 16/11/22.
//  Copyright © 2016年 egret. All rights reserved.
//

#import "ViewController.h"
#include "TestClass.hpp"
#include "EASTL/set.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    eastl::set<TestClass*> s;
    
    s.insert(new TestClass("00000"));
    
//    for (int i = 0; i < d.size(); i++)
//    {
//        d[i]->printData();
//    }
    
    NSLog(@"============ %ld", s.size());
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
