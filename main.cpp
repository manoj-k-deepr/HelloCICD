#include "mainwindow.h"
#include <QApplication>
#include <Windows.h>
#include <gtest/gtest.h>
#include <QDebug>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    qDebug() <<" Running Test ";
//    ::testing::InitGoogleTest(&argc, argv);
//    return RUN_ALL_TESTS();
    return a.exec();
}
