#include "server.h"

Server::Server()
{
    if(!this->listen(QHostAddress::Any, 8080))
        qDebug() << "Error\n";

    else
        qDebug() << "Server is listening\n";
}

void Server::incomingConnection(qintptr socketDescriptor)
{
    QTcpSocket *socket = new QTcpSocket(this);

    socket->setSocketDescriptor(socketDescriptor);

    connect(socket, &QTcpSocket::readyRead, this, &Server::slotReadyRead);
    connect(socket, &QTcpSocket::disconnected, this, &Server::clientDisconnected);

    sockets.append(socket);
    qDebug() << "Client is connected\n";
}

void Server::slotReadyRead()
{
    QTcpSocket *socket = qobject_cast<QTcpSocket*>(sender());

    if(!socket)
        return;

    QByteArray data = socket->readAll();
    qDebug() << "Message from client: " << data << '\n';

    socket->write(QString("Message is delivered").toUtf8());
}

void Server::clientDisconnected()
{
    QTcpSocket *socket = qobject_cast<QTcpSocket*>(sender());

    if(!socket)
        return;

    sockets.removeOne(socket);
    socket->deleteLater();

    qDebug() << "Client is disconnected\n";
}
