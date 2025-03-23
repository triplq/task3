#include "client.h"

Client::Client()
{
    socket = new QTcpSocket(this);

    connect(socket, &QTcpSocket::connected, this, &Client::slotConnected);
    connect(socket, &QTcpSocket::readyRead, this, &Client::slotReadyRead);
    connect(socket, &QTcpSocket::disconnected, this, &Client::slotDisconnected);
}

void Client::slotConnected()
{
    qDebug() << "Connected\n";
}

void Client::slotDisconnected()
{
    qDebug() << "Disconnected\n";
}

void Client::slotReadyRead()
{
    QByteArray data = socket->readAll();

    qDebug() << "Message from server: " << data << '\n';
}

void Client::sendToServer(const QString &message)
{
    socket->write(message.toUtf8());

    qDebug() << "Message is send\n";
}

void Client::connectToServer(const QString &host, quint16 port)
{
    socket->connectToHost(host, port);
}
