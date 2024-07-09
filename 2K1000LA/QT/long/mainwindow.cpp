#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{

    this->setAutoFillBackground(true);
    QPixmap pix = QPixmap(":/image/back.png").scaled(this->size());
    QPalette palette;
    palette.setBrush(QPalette::Window, QBrush(pix));
    this->setPalette(palette);

    ui->setupUi(this);
    this->setWindowTitle("龙芯工业");
    connect(ui->Home, &QPushButton::clicked, this, [=](){
        ui->stackedWidget->setCurrentIndex(0);
    });
    connect(ui->Set, &QPushButton::clicked, this, [=](){
        ui->stackedWidget->setCurrentIndex(1);
    });
}

MainWindow::~MainWindow()
{
    delete ui;
}
