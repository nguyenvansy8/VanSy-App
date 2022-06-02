//#include <rest_api.h>
//#include <qqml.h>

//RestApi::RestApi(QObject *parent):QObject(parent)
//{
//    connect(&manager,&QNetworkAccessManager::authenticationRequired,this,&RestApi::authenticationRequired);
//    connect(&manager,&QNetworkAccessManager::encrypted,this,&RestApi::encrypted);
//    connect(&manager,&QNetworkAccessManager::networkAccessibleChanged, this, &RestApi::networkAccessibleChanged);
//    connect(&manager,&QNetworkAccessManager::preSharedKeyAuthenticationRequired, this, &RestApi::preSharedKeyAuthenticationRequired);
//    connect(&manager,&QNetworkAccessManager::proxyAuthenticationRequired,this,&RestApi::proxyAuthenticationRequired);
//    connect(&manager,&QNetworkAccessManager::sslErrors,this,&RestApi::sslErrors);

//}
//void RestApi::get(QString location)
//{

//}

//void RestApi::post(QString location, QJsonObject data)
//{
//    QNetworkRequest request = QNetworkRequest(QUrl(location ));
//    request.setHeader(QNetworkRequest::ContentTypeHeader,"application/json");

//    QNetworkReply* reply = manager.post(request,data);
//    connect(reply,&QNetworkReply::readyRead,this,&RestApi::readyRead);
//}

//void RestApi::readyRead(){
//    QNetworkReply reply = qobject_cast<QNetworkReply*>(sender());
//}

//void RestApi::authenticationRequired(QNetworkReply *reply, QAuthenticator *authenticator)
//{

//}

//void RestApi::encrypted(QNetworkReply *reply)
//{

//}

//void RestApi::finished(QNetworkReply *reply)
//{

//}

//void RestApi::preSharedKeyAuthenticationRequired(QNetworkReply *reply, QSslPreSharedKeyAuthenticator *authenticator)
//{

//}

//void RestApi::proxyAuthenticationRequired(const QNetworkProxy &proxy, QAuthenticator *authenticator)
//{

//}

//void RestApi::sslErrors(QNetworkReply *reply, const QList<QSslError> &errors)
//{

//}
