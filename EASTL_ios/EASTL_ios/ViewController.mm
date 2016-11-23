//
//  ViewController.m
//  EASTL_ios
//
//  Created by egret0 on 16/11/22.
//  Copyright © 2016年 egret. All rights reserved.
//

#import "ViewController.h"
#include "TestClass.hpp"
#include "EASTL/map.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    eastl::map<int, TestClass*> m;
    
    m.insert(eastl::pair<int, TestClass*>(0, new TestClass("00000")));
    m.insert(eastl::pair<int, TestClass*>(1, new TestClass("11111")));
    m.insert(eastl::pair<int, TestClass*>(2, new TestClass("22222")));
    m.insert(eastl::pair<int, TestClass*>(3, new TestClass("33333")));
    
    m.find(2)->second->printData();
    
    NSLog(@"============ %ld", m.size());
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
