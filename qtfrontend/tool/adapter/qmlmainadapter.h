#pragma once

#include <QObject>

class qmlMainAdapter : public QObject
{
    Q_OBJECT
    //Q_PROPERTY(type name get fname set fname signal fname)
    Q_PROPERTY(QString view                READ getView                  WRITE setView                  NOTIFY viewChanged)

public:
    explicit qmlMainAdapter(QObject *parent = nullptr);

    //getter
    QString getView();

    //setter
    void setView(QString view);

    //callable funcs

public slots:
    //qml callable(non propertybound) and connection rdy funcs

signals:
    void viewChanged();

private:

    QString _view = "prototype";

};
