#ifndef SERVER_H
#define SERVER_H

#include <QTcpSocket>
#include <QTcpServer>
#include <QVector>

class Server : public QTcpServer
{
    Q_OBJECT

public:
    Server();

private slots:
    void incomingConnection(qintptr socketDescriptor) override;
    void slotReadyRead();
    void slotClientDisonnected();

 private:
    QVector<QTcpSocket*> sockets;

};

#endif // SERVER_H
