//
//  ViewController.m
//  EASTL_ios
//
//  Created by egret0 on 16/11/22.
//  Copyright © 2016年 egret. All rights reserved.
//

#import "ViewController.h"
#include "vector.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    int a = 1;
//    char* str = (char*)::operator new(100);
    eastl::vector<int> v;
//    v.push_back(0);
    v.push_back(a);
    for (int i = 2; i < 10000; i++)
    {
        v.push_back(i);
    }
    NSLog(@"============ %ld", v.size());
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
