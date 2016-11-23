//
//  TestClass.cpp
//  EASTL_ios
//
//  Created by egret0 on 16/11/23.
//  Copyright © 2016年 egret. All rights reserved.
//

#include "TestClass.hpp"
#include <string>

TestClass::TestClass()
: _data(nullptr)
{
    
}

TestClass::TestClass(const char* data)
: _data(nullptr)
{
    setData(data);
}

TestClass::~TestClass()
{
    delete [] _data;
}

void TestClass::setData(const char *data)
{
    if (_data)
    {
        return;
    }
    int len = strlen(data);
    _data = new char[len + 1];
    memcpy(_data, data, (len + 1) * sizeof(char));
}

void TestClass::printData()
{
    printf("%p print data %s\n", this, _data);
}
