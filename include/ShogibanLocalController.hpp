#ifndef SHOGIBANLOCALCONTROLLER_HPP
#define SHOGIBANLOCALCONTROLLER_HPP

#include <QObject>

class ShogibanLocalController : public QObject
{
    Q_OBJECT
public:
    explicit ShogibanLocalController(QObject *parent = nullptr);

signals:

public slots:
};

#endif // SHOGIBANLOCALCONTROLLER_HPP