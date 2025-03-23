#include "server.h"

Server::Server()
{
    if(!this->listen(QHostAddress::Any, 8080))
        qDebug() << "Not listening\n";

    else
        qDebug() << "Server is listnening\n";
}

void Server::incomingConnection(qintptr socketDescriptor)
{
    QTcpSocket *socket = new QTcpSocket(this);
    socket->setSocketDescriptor(socketDescriptor);

    connect(socket, &QTcpSocket::readyRead, this, &Server::slotReadyRead);
    connect(socket, &QTcpSocket::disconnected, this, &Server::slotClientDisonnected);

    if(socket)
    {
        qDebug() << "Connected\n";

        for(auto& socket : sockets)
        {
            socket->write("One more client is connected");
        }

        sockets.append(socket);
    }

    else
        qDebug() << "Not connected";

}

void Server::slotReadyRead()
{
    QTcpSocket *socket = qobject_cast<QTcpSocket*>(sender());
    if(socket)
    {
        QByteArray data = socket->readAll();

        qDebug() << "Message from client: " << data.toStdString() << '\n';

        socket->write("Message is captured");
    }
}

void Server::slotClientDisonnected()
{
    QTcpSocket *socket = qobject_cast<QTcpSocket*>(sender());

    sockets.removeOne(socket);
    socket->deleteLater();

    for(auto& socket : sockets)
    {
        socket->write("One client is disconnected");
    }
}
