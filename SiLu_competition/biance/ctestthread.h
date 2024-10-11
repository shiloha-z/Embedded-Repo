#ifndef CTESTTHREAD_H
#define CTESTTHREAD_H

#include <QThread>
#include <qmqttclient.h>

class CTestThread : public QThread
{
    Q_OBJECT
public:
    CTestThread(QObject *parent = nullptr);

signals:
    void SendMqttMsg(const QString &topic, const QString &message);

protected:
    // 测试线程
    void run();
    // 初始化 MQTT 客户端
    void _init();
    // 获取抄表任务 topic 以及内容
    void _getTaskCont(QString &topic, QString &message);

protected slots:
    void _on_client_connected();
    // 接收 MQTT 报文
    void _on_client_recv(const QByteArray &message, const QMqttTopicName &topic);
    // 发送 MQTT 报文
    void _on_client_send(const QString &topic, const QString &message);

protected:
    QMqttClient *m_pclient; // MQTT 客户端
};

#endif // CTESTTHREAD_H
