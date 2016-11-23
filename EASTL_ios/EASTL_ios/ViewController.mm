//
//  ViewController.m
//  EASTL_ios
//
//  Created by egret0 on 16/11/22.
//  Copyright © 2016年 egret. All rights reserved.
//

#import "ViewController.h"
#include "TestClass.hpp"
#include "vector.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    eastl::vector<TestClass*> v;
    
    v.push_back(new TestClass());
    v.push_back(new TestClass("11111"));
    v.push_back(new TestClass());
    v.back()->setData("22222");
    v.front()->setData("00000");
    
    for (int i = 0; i < v.size(); i++)
    {
        v[i]->printData();
    }
    
    NSLog(@"============ %ld", v.size());
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
