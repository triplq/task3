#include <QCoreApplication>
#include "client.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    Client client;
    client.connectToServer("127.0.0.1", 8080);

    client.sendToServer("Hello! Im ur client!");

    return a.exec();
}
