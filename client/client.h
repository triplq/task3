#ifndef CLIENT_H
#define CLIENT_H

#include <QTcpSocket>

class Client : public QObject
{
    Q_OBJECT
private:
    QTcpSocket* socket;
public:
    Client();
    void sendToServer(const QString& message);
    void connectToServer(const QString& host, quint16 port);

public slots:
    void slotReadyRead();
    void slotOnConnected();
    void slotOnDisconnected();
};

#endif // CLIENT_H
