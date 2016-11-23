//
//  TestClass.hpp
//  EASTL_ios
//
//  Created by egret0 on 16/11/23.
//  Copyright © 2016年 egret. All rights reserved.
//

#ifndef TestClass_hpp
#define TestClass_hpp

#include <stdio.h>

class TestClass
{
public:
    TestClass();
    TestClass(const char* data);
    ~TestClass();
    void setData(const char* data);
    void printData();
    
private:
    char* _data;
};

#endif /* TestClass_hpp */
