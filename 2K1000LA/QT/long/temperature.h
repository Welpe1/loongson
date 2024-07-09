#ifndef TEMPERATURE_H
#define TEMPERATURE_H

#include <QWidget>
#include <QString>
#include <QtSerialPort>
#include <QtSerialPort/QSerialPort>
#include <QTimer>
#include <QMessageBox>
#include <QtCharts/QtCharts>
#include <QtCharts/QSplineSeries>
#include <QtCharts/QChartView>
#include <QValueAxis>
#include <QTimer>
#include <QList>
#include <QDateTime>
#include <QDebug>
#include <QDateTimeAxis>

namespace Ui {
class Temperature;
}

class Temperature : public QWidget
{
    Q_OBJECT

public:
    QTimer *timer;
    QChart *chart;
    QSplineSeries *lineSeries1;
    QSplineSeries *lineSeries2;
    QSplineSeries *lineSeries3;
    QSplineSeries *lineSeries4;
    explicit Temperature(QWidget *parent = nullptr);
    ~Temperature();

public slots:
    void Chart_Init();
    void DrawLine();

private:
    Ui::Temperature *ui;
};

#endif // TEMPERATURE_H
