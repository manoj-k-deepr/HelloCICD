#include "mainwindow.h"
#include <QApplication>
#include <Windows.h>
#include <gtest/gtest.h>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    ::testing::InitGoogleTest(&argc, argv);

    return RUN_ALL_TESTS();
    return a.exec();
}
