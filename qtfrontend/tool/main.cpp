#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "adapter/qmlmainadapter.h"

int main(int argc, char *argv[])
{
    qmlMainAdapter qmlAdapter{};

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("qmlAdapter", &qmlAdapter);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
