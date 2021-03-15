#include "qmlmainadapter.h"

qmlMainAdapter::qmlMainAdapter(QObject *parent) : QObject(parent)
{

}

QString qmlMainAdapter::getView()
{
    return _view;
}

void qmlMainAdapter::setView(QString view)
{
    _view = view;
}
