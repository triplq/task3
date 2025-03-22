#ifndef SERVER_H
#define SERVER_H

#include <QTcpServer>
#include <QTcpSocket>
#include <QVector>

class Server : public QTcpServer
{
    Q_OBJECT
private:
    QVector<QTcpSocket*> sockets;

public:
    Server();

public slots:
    void incomingConnection(qintptr socketDescriptor);
    void slotReadyRead();
    void clientDisconnected();
};

#endif // SERVER_H
