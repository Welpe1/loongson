#include "setting.h"
#include "ui_setting.h"

Setting::Setting(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Setting)
{
    ui->setupUi(this);
    connect(ui->Page1, &QPushButton::clicked, this, [=](){
        ui->stackedWidget->setCurrentIndex(0);
    });
    connect(ui->Page2, &QPushButton::clicked, this, [=](){
        ui->stackedWidget->setCurrentIndex(1);
    });
}

Setting::~Setting()
{
    delete ui;
}
