#include "threshold.h"
#include "ui_threshold.h"

QList<double> Threshold_value;

Threshold::Threshold(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Threshold)
{
    ui->setupUi(this);
    loadSettings();
    ui->Temp_H->setSingleStep(0.1);
    ui->Temp_L->setSingleStep(0.1);
    ui->Shi_H->setSingleStep(0.1);
    ui->Shi_L->setSingleStep(0.1);
    ui->Temp_H->setDecimals(1);
    ui->Temp_L->setDecimals(1);
}

Threshold::~Threshold()
{
    delete ui;
    saveSettings();
}


void Threshold::saveSettings()
{
    QSettings Temp_H("Loongnix", "Temp_H");
    QSettings Temp_L("Loongnix", "Temp_L");
    QSettings Shi_H("Loongnix", "Shi_H");
    QSettings Shi_L("Loongnix", "Shi_L");
    Temp_H.setValue("doubleSpinBoxValue", ui->Temp_H->value());
    Temp_L.setValue("doubleSpinBoxValue", ui->Temp_L->value());
    Shi_H.setValue("doubleSpinBoxValue", ui->Shi_H->value());
    Shi_L.setValue("doubleSpinBoxValue", ui->Shi_L->value());
}

void Threshold::loadSettings()
{
    double value;
    QSettings Temp_H("Loongnix", "Temp_H");
    QSettings Temp_L("Loongnix", "Temp_L");
    QSettings Shi_H("Loongnix", "Shi_H");
    QSettings Shi_L("Loongnix", "Shi_L");
    value = Temp_H.value("doubleSpinBoxValue", 0.0).toDouble();
    ui->Temp_H->setValue(value);
    value = Temp_L.value("doubleSpinBoxValue", 0.0).toDouble();
    ui->Temp_L->setValue(value);
    value = Shi_H.value("doubleSpinBoxValue", 0.0).toDouble();
    ui->Shi_H->setValue(value);
    value = Shi_L.value("doubleSpinBoxValue", 0.0).toDouble();
    ui->Shi_L->setValue(value);

}

void Threshold::readsettings()
{
    Threshold_value[0]=ui->Temp_H->value();
    Threshold_value[1]=ui->Temp_L->value();
    Threshold_value[2]=ui->Shi_H->value();
    Threshold_value[3]=ui->Shi_L->value();
}
