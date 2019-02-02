#include <QtGui/QGuiApplication>
#include <QtQml/QQmlApplicationEngine>
#include <QtQml/QQmlContext>
#include <ShogibanModel.hpp>

int main(int argc, char *argv[]) {
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    qmlRegisterUncreatableMetaObject(
        Giban::staticMetaObject,      // static meta object
        "giban",                      // import statement (can be any string)
        1, 0,                         // major and minor version of the import
        "Giban",                      // name in QML (does not have to match C++ name)
        "Error: only enums"           // error in case someone tries to create a MyNamespace object
    );

    QQmlApplicationEngine engine;
    auto *shogiban_model { new ShogibanModel };
    auto *ctxt { engine.rootContext() };

    ctxt->setContextProperty("shogibanModel", shogiban_model);

    engine.load(QUrl::fromLocalFile("C:/Users/Nathan/Documents/Programmation/Giban/qml/main.qml"));
    if (engine.rootObjects().isEmpty())
        return -1;



    return app.exec();
}
