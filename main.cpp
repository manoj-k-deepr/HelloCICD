#include "mainwindow.h"
#include <QApplication>
#include <Windows.h>
#include <gtest/gtest.h>
#include <QDebug>
#include <iostream>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    std::cout <<" Running Test 1\n";
    std::cout <<" Running Test 2\n";
    std::cout <<" Running Test 3\n";
    std::cout <<" Running Test 4\n";
    std::cout <<" Running Test 5\n";
    std::cout <<" Running Test 6\n";
    std::cout <<" Running Test Failed\n";


//    ::testing::InitGoogleTest(&argc, argv);
//    return RUN_ALL_TESTS();
    exit(0);
    return a.exec();
}
