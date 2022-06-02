//#ifndef REST_API_H
//#define REST_API_H
//#include <QObject>
//#include <QString>
//#include <QNetworkAccessManager>
//#include <QNetworkReply>
//#include <QNetworkRequest>
//#include <QAuthenticator>
//#include <QNetworkProxy>
//#include <qqml.h>

//class RestApi : public QObject
//{
//    Q_OBJECT
//public:
//    explicit RestApi (QObject *parent = nullptr);
//signals:

//public slots:
//    void get(QString location);
//    void post(QString location, QJsonObject data);

//private slots:
//    void authenticationRequired(QNetworkReply *reply, QAuthenticator *authenticator);
//    void encrypted(QNetworkReply *reply);
//    void finished(QNetworkReply *reply);
//    void preSharedKeyAuthenticationRequired(QNetworkReply *reply, QSslPreSharedKeyAuthenticator *authenticator);
//    void proxyAuthenticationRequired(const QNetworkProxy &proxy, QAuthenticator *authenticator);
//    void sslErrors(QNetworkReply *reply, const QList<QSslError> &errors);
//private:
//    QNetworkAccessManager manager;

//};
//#endif // REST_API_H
