#ifndef QMLMAINADAPTER_H
#define QMLMAINADAPTER_H

#include <QObject>

class qmlMainAdapter : public QObject
{
    Q_OBJECT
    //Q_PROPERTY(type name get fname set fname signal fname)
public:
    explicit qmlMainAdapter(QObject *parent = nullptr);

    //getter
    //setter
    //callable funcs

public slots:
    //qml callable(non propertybound) and connection rdy funcs

signals:

};

#endif // QMLMAINADAPTER_H
