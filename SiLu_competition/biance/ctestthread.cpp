#include "testthread.h"
#include <QDateTime>
#include <QJsonArray>
#include <QJsonObject>
#include <QJsonDocument>

CTestThread::CTestThread(QObject *parent)
: QThread(parent)
{
    _init();
}

void CTestThread::run()
{
    sleep(5);
    while (true) {
        // 每 10 秒抄一次电表
        QString topic, message;
        _getTaskCont(topic, message);
        // 打印发送的 MQTT 内容
        printf("send topic %s\n", topic.toStdString().c_str());
        printf("send message %s\n", message.toStdString().c_str());
        emit SendMqttMsg(topic, message);
        sleep(10);
    }
}

void CTestThread::_init()
{
    // 初始化 MQTT 客户端
    m_pclient = new QMqttClient(this);
    connect(m_pclient, &QMqttClient::connected, this, &CTestThread::_on_client_connected);
    connect(m_pclient, &QMqttClient::messageReceived, this, &CTestThread::_on_client_recv);
    connect(this, &CTestThread::SendMqttMsg, this, &CTestThread::_on_client_send);

    m_pclient->setKeepAlive(60);
    m_pclient->setHostname("127.0.0.1");
    m_pclient->setPort(1883);
    m_pclient->setClientId("sys.test.001");
    m_pclient->cleanSession();
    m_pclient->setProtocolVersion(QMqttClient::MQTT_3_1_1);
    m_pclient->connectToHost();
}

void CTestThread::_getTaskCont(QString &topic, QString &message)
{
    topic = "/sys.tasksched/sys.test/S-meter/F-AddRealTask";
    QJsonObject root, data;
    data.insert("port", "1F");
    data.insert("taskID", "1");
    data.insert("taskPatternWord", "81");
    data.insert("portParam", "9600-8-E-1-500-1000");
    data.insert("dstAddr", "000000000031");
    data.insert("protocol", "01");
    data.insert("timeout", "15");
    data.insert("frame", "6831000000000068110433343435E616");

    root.insert("data", data);
    root.insert("token", QString::number(qrand()));
    root.insert("time", QDateTime::currentDateTime().toString("yyyy-MM-ddThh:mm:ss.zzz+0800"));
    QJsonDocument jsonDocument;
    jsonDocument.setObject(root);
    message = jsonDocument.toJson(QJsonDocument::Compact).toStdString().c_str();
}

void CTestThread::_on_client_connected()
{
    // 订阅本 APP 需要接收的 MQTT 内容
    printf("subscribe /sys.test/#\n");
    QString topic = "/sys.test/#";
    m_pclient->subscribe(QMqttTopicFilter(topic));
}

void CTestThread::_on_client_recv(const QByteArray &message, const QMqttTopicName &topic)
{
    // 打印接收到的 MQTT 内容
    printf("recv topic %s\n", topic.name().toStdString().c_str());
    printf("recv message %s\n", message.toStdString().c_str());
}

void CTestThread::_on_client_send(const QString &topic, const QString &message)
{
    m_pclient->publish(topic, message.toUtf8());
}
