#ifndef THRESHOLD_H
#define THRESHOLD_H

#include <QWidget>
#include <QSettings>

namespace Ui {
class Threshold;
}

class Threshold : public QWidget
{
    Q_OBJECT

public:
    explicit Threshold(QWidget *parent = nullptr);
    ~Threshold();

public slots:
    void saveSettings();
    void loadSettings();
    void readsettings();

private:
    Ui::Threshold *ui;
};

#endif // THRESHOLD_H
