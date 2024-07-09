/********************************************************************************
** Form generated from reading UI file 'range.ui'
**
** Created by: Qt User Interface Compiler version 6.5.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_RANGE_H
#define UI_RANGE_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Range
{
public:

    void setupUi(QWidget *Range)
    {
        if (Range->objectName().isEmpty())
            Range->setObjectName("Range");
        Range->resize(400, 300);

        retranslateUi(Range);

        QMetaObject::connectSlotsByName(Range);
    } // setupUi

    void retranslateUi(QWidget *Range)
    {
        Range->setWindowTitle(QCoreApplication::translate("Range", "Form", nullptr));
    } // retranslateUi

};

namespace Ui {
    class Range: public Ui_Range {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_RANGE_H
