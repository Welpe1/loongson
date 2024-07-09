#include "homepage.h"
#include "ui_homepage.h"

all_data Data1;
all_data Data2;
all_data Data3;
all_data Data4;

Homepage::Homepage(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Homepage)
{
    ui->setupUi(this);
    QPixmap pixmap1;
    QPixmap pixmap2;
    pixmap1.load(":/image/temp");
    pixmap2.load(":/image/shi");
    QPixmap scaledPixmap1 = pixmap1.scaled(100, 100, Qt::KeepAspectRatio, Qt::SmoothTransformation);
    QPixmap scaledPixmap2 = pixmap2.scaled(100, 100, Qt::KeepAspectRatio, Qt::SmoothTransformation);
    ui->label->setPixmap(scaledPixmap1);
    ui->label_4->setPixmap(scaledPixmap2);
    QString temperature = QString::number(Data1.temperature);
    QString light = QString::number(Data1.light);
    ui->label_3->setText(temperature);
    ui->label_6->setText(light);

    connect(ui->Page1, &QPushButton::clicked, this, [=](){
        ui->stackedWidget->setCurrentIndex(0);
    });
    connect(ui->Page2, &QPushButton::clicked, this, [=](){
        ui->stackedWidget->setCurrentIndex(1);
    });



    serialPort = new QSerialPort(this);
    timer = new QTimer();
    SerialPort_Init();
    connect(timer, SIGNAL(timeout()), this, SLOT(Receive_Data()));
}

Homepage::~Homepage()
{
    delete ui;
}

void Homepage::Receive_Data()
{
    timer -> stop();
    QString data;
    QList<uint8_t> Rev_data;

    QByteArray RecvBuff = serialPort ->  readAll();
    data = RecvBuff.toHex(' ').trimmed().toUpper();

    QStringList stringList = data.split(" ");
    for(const QString &str : stringList)
    {
        bool ok;
        uint value = str.toUInt(&ok, 16);
        if(ok)
        {
            Rev_data.append(static_cast<uint8_t>(value));
        }
        else
        {
            qDebug()<<"Failed";
        }
    }

    if(Rev_data[0]==0x11&&Rev_data[1]==0x22&&Rev_data[15]==0x0A)
    {
        uint16_t temp;
        temp = ((uint16_t)Rev_data[2]<<8) | Rev_data[3];
        Data1.temperature = (double)temp/340+36.53;
        qDebug()<<Rev_data[2];
        qDebug()<<temp;
        qDebug()<<Data1.temperature;
        temp = ((uint16_t)Rev_data[4]<<8) | Rev_data[5];
        Data1.light = 1-(double)temp/4095;

        temp = ((uint16_t)Rev_data[7]<<8) | Rev_data[8];
        if(Rev_data[6]==0)
            Data1.magneticx = -temp;
        else
            Data1.magneticx = temp;

        temp = ((uint16_t)Rev_data[10]<<8) | Rev_data[11];
        if(Rev_data[9]==0)
            Data1.magneticy = -temp;
        else
            Data1.magneticy = temp;

        temp = ((uint16_t)Rev_data[13]<<8) | Rev_data[14];
        if(Rev_data[12]==0)
            Data1.magneticz = -temp;
        else
            Data1.magneticz = temp;
    }
    qDebug()<<Rev_data;
    Rev_data.clear();
    RecvBuff.clear();
}

void Homepage::serialPortReadyRead_Slot()
{
    timer->start(5);
}

void Homepage::SerialPort_Init()
{
    //serialPort -> setPortName("/dev/ttyS1");
    serialPort -> setPortName("COM4");
    serialPort -> setBaudRate(QSerialPort::Baud9600);
    serialPort -> setDataBits(QSerialPort::Data8);
    serialPort -> setStopBits(QSerialPort::OneStop);
    serialPort -> setParity(QSerialPort::NoParity);
    serialPort -> setFlowControl(QSerialPort::NoFlowControl);

    connect(serialPort,SIGNAL(readyRead()),this,SLOT(serialPortReadyRead_Slot()));
    if(serialPort->open(QIODevice::ReadWrite))
    {
        qDebug()<<"打开成功";
    }
    else
    {
        qDebug()<<"打开失败";
    }
}


void Homepage::on_Page2_2_clicked()
{
    QMessageBox::warning(this,"warning",
                        "温度警告！！！\n"
                        "当前温度：35.7℃！！！\n"
                        "正常范围：25℃-35℃\n");
}

