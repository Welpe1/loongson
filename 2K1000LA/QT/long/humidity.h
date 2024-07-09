#ifndef HUMIDITY_H
#define HUMIDITY_H

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
class Humidity;
}

class Humidity : public QWidget
{
    Q_OBJECT

public:
    QTimer *timer;
    QChart *chart;
    QSplineSeries *lineSeries1;
    QSplineSeries *lineSeries2;
    QSplineSeries *lineSeries3;
    QSplineSeries *lineSeries4;
    explicit Humidity(QWidget *parent = nullptr);
    ~Humidity();

private slots:
    void Chart_Init();
    void DrawLine();

private:
    Ui::Humidity *ui;
};

#endif // HUMIDITY_H
