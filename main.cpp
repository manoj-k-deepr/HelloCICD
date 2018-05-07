#include "mainwindow.h"
#include <QApplication>
#include <Windows.h>
#include "gtest/gtest.h"
#include <QDebug>
#include <iostream>
#include <limits.h>

double square_root (const double val) {
    return sqrt(val);
}

TEST(SquareRootTest, PositiveNos) {
    EXPECT_EQ (18.0, square_root (324.0));
    EXPECT_EQ (25.4, square_root (645.16));
    EXPECT_EQ (50.3321, square_root (2533.310224));
}

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
    return a.exec();
}
