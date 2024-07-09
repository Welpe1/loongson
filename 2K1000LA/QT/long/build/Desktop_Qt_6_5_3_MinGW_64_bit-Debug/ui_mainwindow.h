/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 6.5.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStackedWidget>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>
#include <homepage.h>
#include <setting.h>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QStackedWidget *stackedWidget;
    Homepage *page;
    Setting *page_2;
    QPushButton *Home;
    QPushButton *Set;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName("MainWindow");
        MainWindow->resize(800, 720);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName("centralwidget");
        stackedWidget = new QStackedWidget(centralwidget);
        stackedWidget->setObjectName("stackedWidget");
        stackedWidget->setGeometry(QRect(0, 100, 800, 600));
        page = new Homepage();
        page->setObjectName("page");
        stackedWidget->addWidget(page);
        page_2 = new Setting();
        page_2->setObjectName("page_2");
        stackedWidget->addWidget(page_2);
        Home = new QPushButton(centralwidget);
        Home->setObjectName("Home");
        Home->setGeometry(QRect(0, 0, 100, 100));
        Home->setStyleSheet(QString::fromUtf8("background-image: url(:/image/homepage.png);\n"
""));
        Set = new QPushButton(centralwidget);
        Set->setObjectName("Set");
        Set->setGeometry(QRect(100, 0, 100, 100));
        Set->setStyleSheet(QString::fromUtf8("image: url(:/image/setting.png);"));
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName("menubar");
        menubar->setGeometry(QRect(0, 0, 800, 17));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName("statusbar");
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        stackedWidget->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
#if QT_CONFIG(tooltip)
        Home->setToolTip(QCoreApplication::translate("MainWindow", "<html><head/><body><p>\344\270\273\351\241\265</p></body></html>", nullptr));
#endif // QT_CONFIG(tooltip)
        Home->setText(QString());
#if QT_CONFIG(tooltip)
        Set->setToolTip(QCoreApplication::translate("MainWindow", "<html><head/><body><p>\350\256\276\347\275\256</p></body></html>", nullptr));
#endif // QT_CONFIG(tooltip)
        Set->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
