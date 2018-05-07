#include "mainwindow.h"
#include <QApplication>
#include <Windows.h>
#include <gtest/gtest.h>
#include <QDebug>
#include <iostream>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    std::cout <<" Running Test 1";
    std::cout <<" Running Test 2";
    std::cout <<" Running Test 3";
    std::cout <<" Running Test 4";
    std::cout <<" Running Test 5";
    std::cout <<" Running Test 6";
    std::cout <<" Running Test Failed";


//    ::testing::InitGoogleTest(&argc, argv);
//    return RUN_ALL_TESTS();
    exit(0);
    return a.exec();
}
