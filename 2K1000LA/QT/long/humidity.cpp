#include "humidity.h"
#include "ui_humidity.h"
#include "homepage.h"

Humidity::Humidity(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Humidity)
{
    ui->setupUi(this);
    timer = new QTimer();
    timer ->start(1000);
    Chart_Init();
    connect(timer, SIGNAL(timeout()), this, SLOT(DrawLine()));
}

Humidity::~Humidity()
{
    delete ui;
}

void Humidity::Chart_Init()
{
    timer -> stop();
    chart = new QChart();
    lineSeries1 = new QSplineSeries();
    lineSeries2 = new QSplineSeries();

    lineSeries1 -> setName("湿度1");
    QPen pen1(Qt::red, 4);
    lineSeries1->setPen(pen1);
    chart->addSeries(lineSeries1);

    lineSeries2 -> setName("湿度2");
    QPen pen2(Qt::blue, 4);
    lineSeries2->setPen(pen2);
    chart->addSeries(lineSeries2);

    QDateTimeAxis  *axisX = new QDateTimeAxis;
    QValueAxis *axisY = new QValueAxis();

    axisX->setFormat("hh:mm:ss");
    axisY->setRange(0,100);
    axisX->setTickCount(11);
    axisY->setTickCount(11);
    axisX->setTitleText("时间");
    chart->addAxis(axisX, Qt::AlignBottom);
    chart->addAxis(axisY, Qt::AlignLeft);
    chart->setAxisX(axisX,lineSeries1);

    lineSeries1->attachAxis(axisX);
    lineSeries2->attachAxis(axisX);
    lineSeries1->attachAxis(axisY);
    lineSeries2->attachAxis(axisY);

    ui->graphicsView->setChart(chart);
    ui->graphicsView->setRenderHint(QPainter::Antialiasing);
    timer->start(1000);
}

void Humidity::DrawLine()
{
    QDateTime currentTime = QDateTime::currentDateTime();
    chart->axisX()->setMin(QDateTime::currentDateTime().addSecs(-10*1));
    chart->axisX()->setMax(QDateTime::currentDateTime().addMSecs(0));

    lineSeries1->append(currentTime.toMSecsSinceEpoch(), 70+rand()%2);
    lineSeries2->append(currentTime.toMSecsSinceEpoch(), 68+rand()%2);

}

