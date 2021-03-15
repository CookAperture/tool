#ifndef QMLPROTOTYPEADAPTER_H
#define QMLPROTOTYPEADAPTER_H

#include <QObject>

class qmlPrototypeAdapter : public QObject
{
    Q_OBJECT
public:
    explicit qmlPrototypeAdapter(QObject *parent = nullptr);

signals:

};

#endif // QMLPROTOTYPEADAPTER_H
