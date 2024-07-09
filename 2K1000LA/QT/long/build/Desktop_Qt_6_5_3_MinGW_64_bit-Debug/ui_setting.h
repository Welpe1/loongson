/********************************************************************************
** Form generated from reading UI file 'setting.ui'
**
** Created by: Qt User Interface Compiler version 6.5.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SETTING_H
#define UI_SETTING_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStackedWidget>
#include <QtWidgets/QWidget>
#include <range.h>
#include <threshold.h>

QT_BEGIN_NAMESPACE

class Ui_Setting
{
public:
    QPushButton *Page2;
    QPushButton *Page1;
    QStackedWidget *stackedWidget;
    Threshold *page_3;
    Range *page_4;

    void setupUi(QWidget *Setting)
    {
        if (Setting->objectName().isEmpty())
            Setting->setObjectName("Setting");
        Setting->resize(800, 600);
        Page2 = new QPushButton(Setting);
        Page2->setObjectName("Page2");
        Page2->setGeometry(QRect(0, 70, 100, 71));
        Page2->setStyleSheet(QString::fromUtf8(""));
        Page1 = new QPushButton(Setting);
        Page1->setObjectName("Page1");
        Page1->setGeometry(QRect(0, 0, 100, 71));
        stackedWidget = new QStackedWidget(Setting);
        stackedWidget->setObjectName("stackedWidget");
        stackedWidget->setGeometry(QRect(100, 0, 700, 400));
        page_3 = new Threshold();
        page_3->setObjectName("page_3");
        stackedWidget->addWidget(page_3);
        page_4 = new Range();
        page_4->setObjectName("page_4");
        stackedWidget->addWidget(page_4);

        retranslateUi(Setting);

        stackedWidget->setCurrentIndex(0);


        QMetaObject::connectSlotsByName(Setting);
    } // setupUi

    void retranslateUi(QWidget *Setting)
    {
        Setting->setWindowTitle(QCoreApplication::translate("Setting", "Form", nullptr));
#if QT_CONFIG(tooltip)
        Page2->setToolTip(QCoreApplication::translate("Setting", "<html><head/><body><p>\346\271\277\345\272\246</p></body></html>", nullptr));
#endif // QT_CONFIG(tooltip)
        Page2->setText(QCoreApplication::translate("Setting", "\345\235\220\346\240\207\350\275\264\350\256\276\347\275\256", nullptr));
#if QT_CONFIG(tooltip)
        Page1->setToolTip(QCoreApplication::translate("Setting", "<html><head/><body><p>\346\270\251\345\272\246</p></body></html>", nullptr));
#endif // QT_CONFIG(tooltip)
        Page1->setText(QCoreApplication::translate("Setting", "\351\230\210\345\200\274\350\256\276\347\275\256", nullptr));
    } // retranslateUi

};

namespace Ui {
    class Setting: public Ui_Setting {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SETTING_H
