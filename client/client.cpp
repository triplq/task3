#include "client.h"

Client::Client()
{
    socket = new QTcpSocket(this);
    connect(socket, &QTcpSocket::connected, this, &Client::slotOnConnected);
    connect(socket, &QTcpSocket::readyRead, this, &Client::slotReadyRead);
    connect(socket, &QTcpSocket::disconnected, this, &Client::slotOnDisconnected);
}

void Client::slotOnConnected()
{
    qDebug() << "Connected\n";
}

void Client::slotOnDisconnected()
{
    qDebug() << "Disconnected\n";
}

void Client::connectToServer(const QString &host, quint16 port)
{
    socket->connectToHost(host, port);
}

void Client::slotReadyRead()
{
    QByteArray data = socket->readAll();
    qDebug() << "Message from a server: " << data;
}

void Client::sendToServer(const QString &message)
{
    if(socket)
    {
        socket->write(message.toUtf8());
        qDebug() << "Message is send\n";
    }
    else
        qDebug() << "Not connected here\n";
}
