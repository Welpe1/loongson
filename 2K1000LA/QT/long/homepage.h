#ifndef HOMEPAGE_H
#define HOMEPAGE_H

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

struct all_data{
    double temperature;
    double light;
    double magneticx;
    double magneticy;
    double magneticz;
};
extern all_data Data1;
extern all_data Data2;
extern all_data Data3;
extern all_data Data4;

namespace Ui {
class Homepage;
}

class Homepage : public QWidget
{
    Q_OBJECT

public:
    QTimer *timer;
    QSerialPort *serialPort;
    QSplineSeries *lineSeries;
    explicit Homepage(QWidget *parent = nullptr);
    ~Homepage();

public slots:
    void SerialPort_Init();
    void serialPortReadyRead_Slot();
    void Receive_Data();

private slots:
    void on_Page2_2_clicked();

private:
    Ui::Homepage *ui;
};

#endif // HOMEPAGE_H
