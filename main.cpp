#include "mainwindow.h"
#include <QApplication>
#include <Windows.h>
#include <gtest/gtest.h>
#include <QDebug>
#include <iostream>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    std::cout <<" Running Test ";
//    ::testing::InitGoogleTest(&argc, argv);
//    return RUN_ALL_TESTS();
    exit(0);
    return a.exec();
}
