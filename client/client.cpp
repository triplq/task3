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
    if(socket->state() == QTcpSocket::ConnectedState)
    {
        QByteArray data = socket->readAll();

        qDebug() << "Message from server: " << data << '\n';
    }
    else
        qDebug() << "Issues with connection\n";
}

void Client::sendToServer(const QString &message)
{
    if(socket->state() == QTcpSocket::ConnectedState)
    {
        socket->write(message.toUtf8());

        qDebug() << "Message is send\n";
    }
    else
        qDebug() << "Issues with connection\n";
}

void Client::connectToServer(const QString &host, quint16 port)
{
    socket->connectToHost(host, port);
}
