#ifndef CLIENT_H
#define CLIENT_H

#include <QTcpSocket>

class Client : public QObject
{
public:
    Client();
    void sendToServer(const QString& message);
    void connectToServer(const QString& host, quint16 port);

private:
    QTcpSocket* socket;

private slots:
    void slotReadyRead();
    void slotConnected();
    void slotDisconnected();

};

#endif // CLIENT_H
