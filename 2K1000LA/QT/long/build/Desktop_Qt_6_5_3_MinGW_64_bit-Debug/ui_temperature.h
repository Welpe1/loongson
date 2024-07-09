/********************************************************************************
** Form generated from reading UI file 'temperature.ui'
**
** Created by: Qt User Interface Compiler version 6.5.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_TEMPERATURE_H
#define UI_TEMPERATURE_H

#include <QtCharts/QChartView>
#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Temperature
{
public:
    QChartView *graphicsView;

    void setupUi(QWidget *Temperature)
    {
        if (Temperature->objectName().isEmpty())
            Temperature->setObjectName("Temperature");
        Temperature->resize(700, 400);
        graphicsView = new QChartView(Temperature);
        graphicsView->setObjectName("graphicsView");
        graphicsView->setGeometry(QRect(0, 0, 700, 400));

        retranslateUi(Temperature);

        QMetaObject::connectSlotsByName(Temperature);
    } // setupUi

    void retranslateUi(QWidget *Temperature)
    {
        Temperature->setWindowTitle(QCoreApplication::translate("Temperature", "Form", nullptr));
    } // retranslateUi

};

namespace Ui {
    class Temperature: public Ui_Temperature {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_TEMPERATURE_H
