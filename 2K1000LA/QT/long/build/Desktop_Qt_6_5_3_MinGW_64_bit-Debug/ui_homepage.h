/********************************************************************************
** Form generated from reading UI file 'homepage.ui'
**
** Created by: Qt User Interface Compiler version 6.5.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_HOMEPAGE_H
#define UI_HOMEPAGE_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStackedWidget>
#include <QtWidgets/QWidget>
#include <humidity.h>
#include <temperature.h>

QT_BEGIN_NAMESPACE

class Ui_Homepage
{
public:
    QLabel *label;
    QLabel *label_6;
    QLabel *label_4;
    QLabel *label_3;
    QPushButton *Page1;
    QPushButton *Page2;
    QLabel *label_5;
    QStackedWidget *stackedWidget;
    Temperature *page;
    Humidity *page_2;
    QLabel *label_2;
    QPushButton *Page2_2;
    QPushButton *Page2_3;

    void setupUi(QWidget *Homepage)
    {
        if (Homepage->objectName().isEmpty())
            Homepage->setObjectName("Homepage");
        Homepage->resize(800, 600);
        label = new QLabel(Homepage);
        label->setObjectName("label");
        label->setGeometry(QRect(10, 400, 100, 100));
        label_6 = new QLabel(Homepage);
        label_6->setObjectName("label_6");
        label_6->setGeometry(QRect(330, 440, 71, 51));
        label_4 = new QLabel(Homepage);
        label_4->setObjectName("label_4");
        label_4->setGeometry(QRect(200, 400, 100, 100));
        label_3 = new QLabel(Homepage);
        label_3->setObjectName("label_3");
        label_3->setGeometry(QRect(120, 440, 71, 51));
        Page1 = new QPushButton(Homepage);
        Page1->setObjectName("Page1");
        Page1->setGeometry(QRect(0, 0, 100, 71));
        Page2 = new QPushButton(Homepage);
        Page2->setObjectName("Page2");
        Page2->setGeometry(QRect(0, 70, 100, 71));
        Page2->setStyleSheet(QString::fromUtf8(""));
        label_5 = new QLabel(Homepage);
        label_5->setObjectName("label_5");
        label_5->setGeometry(QRect(200, 500, 100, 30));
        QFont font;
        font.setFamilies({QString::fromUtf8("\345\256\213\344\275\223")});
        font.setPointSize(15);
        font.setBold(true);
        label_5->setFont(font);
        label_5->setAlignment(Qt::AlignCenter);
        stackedWidget = new QStackedWidget(Homepage);
        stackedWidget->setObjectName("stackedWidget");
        stackedWidget->setGeometry(QRect(100, 0, 700, 400));
        page = new Temperature();
        page->setObjectName("page");
        stackedWidget->addWidget(page);
        page_2 = new Humidity();
        page_2->setObjectName("page_2");
        stackedWidget->addWidget(page_2);
        label_2 = new QLabel(Homepage);
        label_2->setObjectName("label_2");
        label_2->setGeometry(QRect(10, 500, 100, 30));
        label_2->setFont(font);
        label_2->setAlignment(Qt::AlignCenter);
        Page2_2 = new QPushButton(Homepage);
        Page2_2->setObjectName("Page2_2");
        Page2_2->setGeometry(QRect(0, 140, 100, 71));
        Page2_2->setStyleSheet(QString::fromUtf8(""));
        Page2_3 = new QPushButton(Homepage);
        Page2_3->setObjectName("Page2_3");
        Page2_3->setGeometry(QRect(0, 210, 100, 71));
        Page2_3->setStyleSheet(QString::fromUtf8(""));

        retranslateUi(Homepage);

        stackedWidget->setCurrentIndex(1);


        QMetaObject::connectSlotsByName(Homepage);
    } // setupUi

    void retranslateUi(QWidget *Homepage)
    {
        Homepage->setWindowTitle(QCoreApplication::translate("Homepage", "Form", nullptr));
        label->setText(QCoreApplication::translate("Homepage", "TextLabel", nullptr));
        label_6->setText(QCoreApplication::translate("Homepage", "TextLabel", nullptr));
        label_4->setText(QCoreApplication::translate("Homepage", "TextLabel", nullptr));
        label_3->setText(QCoreApplication::translate("Homepage", "TextLabel", nullptr));
#if QT_CONFIG(tooltip)
        Page1->setToolTip(QCoreApplication::translate("Homepage", "<html><head/><body><p>\346\270\251\345\272\246</p></body></html>", nullptr));
#endif // QT_CONFIG(tooltip)
        Page1->setText(QCoreApplication::translate("Homepage", "\346\270\251\345\272\246", nullptr));
#if QT_CONFIG(tooltip)
        Page2->setToolTip(QCoreApplication::translate("Homepage", "<html><head/><body><p>\346\271\277\345\272\246</p></body></html>", nullptr));
#endif // QT_CONFIG(tooltip)
        Page2->setText(QCoreApplication::translate("Homepage", "\346\271\277\345\272\246", nullptr));
        label_5->setText(QCoreApplication::translate("Homepage", "\346\271\277\345\272\246", nullptr));
        label_2->setText(QCoreApplication::translate("Homepage", "\346\270\251\345\272\246", nullptr));
#if QT_CONFIG(tooltip)
        Page2_2->setToolTip(QCoreApplication::translate("Homepage", "<html><head/><body><p>\346\271\277\345\272\246</p></body></html>", nullptr));
#endif // QT_CONFIG(tooltip)
        Page2_2->setText(QCoreApplication::translate("Homepage", "\345\205\211\347\205\247\345\274\272\345\272\246", nullptr));
#if QT_CONFIG(tooltip)
        Page2_3->setToolTip(QCoreApplication::translate("Homepage", "<html><head/><body><p>\346\271\277\345\272\246</p></body></html>", nullptr));
#endif // QT_CONFIG(tooltip)
        Page2_3->setText(QCoreApplication::translate("Homepage", "\347\243\201\345\234\272\345\274\272\345\272\246", nullptr));
    } // retranslateUi

};

namespace Ui {
    class Homepage: public Ui_Homepage {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_HOMEPAGE_H
