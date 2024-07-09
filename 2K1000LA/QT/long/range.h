#ifndef RANGE_H
#define RANGE_H

#include <QWidget>

namespace Ui {
class Range;
}

class Range : public QWidget
{
    Q_OBJECT

public:
    explicit Range(QWidget *parent = nullptr);
    ~Range();

private:
    Ui::Range *ui;
};

#endif // RANGE_H
