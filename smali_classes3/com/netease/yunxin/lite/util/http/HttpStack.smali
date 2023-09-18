.class public Lcom/netease/yunxin/lite/util/http/HttpStack;
.super Ljava/lang/Object;
.source "HttpStack.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpStack"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeable"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 53
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static configHttps(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "urlConnection",
            "verifyHost"
        }
    .end annotation

    .line 280
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnLollipopMR1OrHigher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-static {p0, p1}, Lcom/netease/yunxin/lite/util/http/HttpStack;->configHttpsOnPreLollipop(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    return-void

    .line 285
    :cond_0
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_1

    return-void

    .line 288
    :cond_1
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    :try_start_0
    const-string v0, "TLS"

    .line 290
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 291
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 292
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 293
    new-instance v0, Lcom/netease/yunxin/lite/util/http/-$$Lambda$HttpStack$HqMToc0IJwxHyYhiVSqZDEBKxjo;

    invoke-direct {v0, p1}, Lcom/netease/yunxin/lite/util/http/-$$Lambda$HttpStack$HqMToc0IJwxHyYhiVSqZDEBKxjo;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 302
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "configHttps error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HttpStack"

    invoke-static {p1, p0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static configHttpsOnPreLollipop(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "urlConnection",
            "verifyHost"
        }
    .end annotation

    .line 308
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnLollipopMR1OrHigher()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 314
    :cond_1
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 316
    :try_start_0
    new-instance v0, Lcom/netease/yunxin/lite/util/http/PreLollipopTLSSocketFactory;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/util/http/PreLollipopTLSSocketFactory;-><init>()V

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 317
    new-instance v0, Lcom/netease/yunxin/lite/util/http/HttpStack$1;

    invoke-direct {v0, p1}, Lcom/netease/yunxin/lite/util/http/HttpStack$1;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while setting TLS 1.2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HttpStack"

    invoke-static {p1, p0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 61
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p0
.end method

.method public static doGet(Ljava/lang/String;Ljava/util/Map;[BI)Lcom/netease/yunxin/lite/util/http/HttpStackResponse;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "headers",
            "body",
            "timeoutMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI)",
            "Lcom/netease/yunxin/lite/util/http/HttpStackResponse;"
        }
    .end annotation

    const-string v0, "HttpStack"

    const/4 v1, 0x0

    .line 127
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string p0, "GET"

    .line 128
    invoke-static {v2, p0, p1, p2, p3}, Lcom/netease/yunxin/lite/util/http/HttpStack;->openConnection(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[BI)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 130
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide p2

    .line 131
    new-instance v2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;

    invoke-direct {v2}, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    :try_start_2
    iput p1, v2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->code:I

    .line 134
    iput-wide p2, v2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->lastModified:J

    .line 135
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    .line 136
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 138
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 139
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 140
    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const-string p3, "httpversion"

    .line 141
    :goto_1
    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->headers:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/http/HttpStack;->readFully(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, v2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->result:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_4

    .line 153
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object p0, v1

    .line 146
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "http get error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "http get error header: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->headers:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    if-eqz p0, :cond_3

    .line 153
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v2, v1

    :cond_4
    :goto_3
    return-object v2

    :catchall_1
    move-exception p1

    move-object v1, p0

    :goto_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 155
    :cond_5
    throw p1
.end method

.method public static doGetSNI(Ljava/lang/String;Ljava/util/Map;[BILjava/lang/String;Ljava/lang/String;)Lcom/netease/yunxin/lite/util/http/HttpStackResponse;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "headers",
            "body",
            "timeoutMs",
            "ip",
            "host"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netease/yunxin/lite/util/http/HttpStackResponse;"
        }
    .end annotation

    const-string v6, "GET"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 118
    invoke-static/range {v0 .. v6}, Lcom/netease/yunxin/lite/util/http/HttpStack;->doHttpMethod(Ljava/lang/String;Ljava/util/Map;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/yunxin/lite/util/http/HttpStackResponse;

    move-result-object p0

    return-object p0
.end method

.method private static doHttpMethod(Ljava/lang/String;Ljava/util/Map;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/yunxin/lite/util/http/HttpStackResponse;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "headers",
            "body",
            "timeoutMs",
            "ip",
            "host",
            "method"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netease/yunxin/lite/util/http/HttpStackResponse;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "HttpStack"

    if-eqz p0, :cond_10

    .line 338
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    if-eqz p5, :cond_10

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 344
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v3, "https"

    .line 345
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 346
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "doPost failed, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not https"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    if-eqz p4, :cond_2

    .line 350
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replace host:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to ip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 354
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p4

    check-cast p4, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_2
    move-object p4, v0

    .line 357
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p4, "Host"

    .line 358
    invoke-virtual {v2, p4, p5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v2, p6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v2, p3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 361
    invoke-virtual {v2, p3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 p4, 0x0

    .line 362
    invoke-virtual {v2, p4}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    const/4 p6, 0x1

    .line 363
    invoke-virtual {v2, p6}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 364
    invoke-virtual {v2, p4}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p1, :cond_3

    .line 366
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 367
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 370
    :cond_3
    new-instance p4, Lcom/netease/yunxin/lite/util/http/TlsSniSocketFactory;

    invoke-direct {p4, v2}, Lcom/netease/yunxin/lite/util/http/TlsSniSocketFactory;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 371
    invoke-virtual {v2, p4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 373
    new-instance p4, Lcom/netease/yunxin/lite/util/http/HttpStack$2;

    invoke-direct {p4, v2}, Lcom/netease/yunxin/lite/util/http/HttpStack$2;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {v2, p4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 399
    invoke-static {p2}, Lcom/netease/yunxin/lite/util/ArrayUtils;->isEmpty([B)Z

    move-result p4

    if-nez p4, :cond_5

    .line 400
    invoke-virtual {v2, p6}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 401
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p4

    if-eqz p1, :cond_4

    const-string p6, "gzip"

    const-string v3, "Content-Encoding"

    .line 402
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_4

    .line 403
    new-instance p6, Ljava/util/zip/GZIPOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p6, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p4, p6

    .line 405
    :cond_4
    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write([B)V

    .line 406
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    .line 407
    invoke-static {p4}, Lcom/netease/yunxin/lite/util/http/HttpStack;->closeQuietly(Ljava/io/Closeable;)V

    .line 410
    :cond_5
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p4

    .line 411
    invoke-static {p4}, Lcom/netease/yunxin/lite/util/http/HttpStack;->needRedirect(I)Z

    move-result p6

    if-eqz p6, :cond_9

    const-string p4, "Location"

    .line 413
    invoke-virtual {v2, p4}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_6

    const-string p4, "location"

    .line 415
    invoke-virtual {v2, p4}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_6
    const-string p6, "http://"

    .line 417
    invoke-virtual {p4, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_7

    const-string p6, "https://"

    invoke-virtual {p4, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_7

    .line 419
    new-instance p6, Ljava/net/URL;

    invoke-direct {p6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_7
    move-object v3, p4

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p5

    .line 422
    invoke-static/range {v3 .. v8}, Lcom/netease/yunxin/lite/util/http/HttpStack;->doPostSNI(Ljava/lang/String;Ljava/util/Map;[BILjava/lang/String;Ljava/lang/String;)Lcom/netease/yunxin/lite/util/http/HttpStackResponse;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_8

    .line 448
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_8
    return-object p0

    .line 425
    :cond_9
    :try_start_3
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getLastModified()J

    move-result-wide p0

    .line 426
    new-instance p2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;

    invoke-direct {p2}, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 427
    :try_start_4
    iput p4, p2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->code:I

    .line 428
    iput-wide p0, p2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->lastModified:J

    .line 429
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    .line 430
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 432
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 433
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 434
    invoke-virtual {v2, p3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p3, :cond_a

    goto :goto_3

    :cond_a
    const-string p3, "httpversion"

    .line 435
    :goto_3
    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 437
    :cond_b
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->headers:Ljava/lang/String;

    .line 438
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/yunxin/lite/util/http/HttpStack;->readFully(Ljava/io/InputStream;)[B

    move-result-object p0

    iput-object p0, p2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->result:[B

    .line 439
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "doPost: response:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_e

    .line 448
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v0, p2

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v0, p4

    goto :goto_6

    :catch_2
    move-exception p0

    move-object v2, p4

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    move-object v2, v0

    .line 441
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "http post error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_c

    .line 444
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "http post error header: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->headers:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_c
    if-eqz v2, :cond_d

    .line 448
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_d
    move-object p2, v0

    :cond_e
    :goto_5
    return-object p2

    :catchall_2
    move-exception p0

    move-object v0, v2

    :goto_6
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 450
    :cond_f
    throw p0

    .line 339
    :cond_10
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal argument, path:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ip:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", host:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static doPost(Ljava/lang/String;)Lcom/netease/yunxin/lite/util/http/HttpStackResponse;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xbb8

    .line 160
    invoke-static {p0, v0, v0, v1}, Lcom/netease/yunxin/lite/util/http/HttpStack;->doPost(Ljava/lang/String;Ljava/util/Map;[BI)Lcom/netease/yunxin/lite/util/http/HttpStackResponse;

    move-result-object p0

    return-object p0
.end method

.method public static doPost(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/yunxin/lite/util/http/HttpStackResponse;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "body"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded;charset=utf-8"

    .line 165
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 v1, 0xbb8

    invoke-static {p0, v0, p1, v1}, Lcom/netease/yunxin/lite/util/http/HttpStack;->doPost(Ljava/lang/String;Ljava/util/Map;[BI)Lcom/netease/yunxin/lite/util/http/HttpStackResponse;

    move-result-object p0

    return-object p0
.end method

.method public static doPost(Ljava/lang/String;Ljava/util/Map;[BI)Lcom/netease/yunxin/lite/util/http/HttpStackResponse;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "headers",
            "body",
            "timeoutMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI)",
            "Lcom/netease/yunxin/lite/util/http/HttpStackResponse;"
        }
    .end annotation

    const-string v0, "HttpStack"

    const/4 v1, 0x0

    .line 175
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string p0, "POST"

    .line 176
    invoke-static {v2, p0, p1, p2, p3}, Lcom/netease/yunxin/lite/util/http/HttpStack;->openConnection(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[BI)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 178
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide p2

    .line 179
    new-instance v2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;

    invoke-direct {v2}, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    :try_start_2
    iput p1, v2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->code:I

    .line 181
    iput-wide p2, v2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->lastModified:J

    .line 182
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    .line 183
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 185
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 186
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 187
    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const-string p3, "httpversion"

    .line 188
    :goto_1
    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->headers:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/http/HttpStack;->readFully(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, v2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->result:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_4

    .line 200
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object p0, v1

    .line 193
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "http post error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "http post error header: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v1, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->headers:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    if-eqz p0, :cond_3

    .line 200
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v2, v1

    :cond_4
    :goto_3
    return-object v2

    :catchall_1
    move-exception p1

    move-object v1, p0

    :goto_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 202
    :cond_5
    throw p1
.end method

.method public static doPostSNI(Ljava/lang/String;Ljava/util/Map;[BILjava/lang/String;Ljava/lang/String;)Lcom/netease/yunxin/lite/util/http/HttpStackResponse;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "headers",
            "body",
            "timeoutMs",
            "ip",
            "host"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/netease/yunxin/lite/util/http/HttpStackResponse;"
        }
    .end annotation

    const-string v6, "POST"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 112
    invoke-static/range {v0 .. v6}, Lcom/netease/yunxin/lite/util/http/HttpStack;->doHttpMethod(Ljava/lang/String;Ljava/util/Map;[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/yunxin/lite/util/http/HttpStackResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$configHttps$0(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "verifyHost",
            "hostname",
            "session"
        }
    .end annotation

    .line 294
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 295
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0

    .line 298
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {v0, p0, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static multipartPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/netease/yunxin/lite/util/http/MultipartWriter;)Lcom/netease/yunxin/lite/util/http/HttpStackResponse;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "BOUNDARY",
            "LINE_FEED",
            "headers",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/yunxin/lite/util/http/MultipartWriter;",
            ")",
            "Lcom/netease/yunxin/lite/util/http/HttpStackResponse;"
        }
    .end annotation

    const-string v0, "--"

    const/4 v1, 0x0

    .line 213
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string p0, "POST"

    const/16 v3, 0xbb8

    .line 214
    invoke-static {v2, p0, p3, v3}, Lcom/netease/yunxin/lite/util/http/HttpStack;->openConnection(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;I)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x1

    .line 215
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 216
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p3, :cond_0

    :try_start_2
    const-string v3, "gzip"

    const-string v4, "Content-Encoding"

    .line 218
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 219
    new-instance p3, Ljava/io/PrintWriter;

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p3, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 221
    :cond_0
    new-instance p3, Ljava/io/PrintWriter;

    invoke-direct {p3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 225
    :goto_0
    :try_start_3
    invoke-interface {p4, p3, v2}, Lcom/netease/yunxin/lite/util/http/MultipartWriter;->addPart(Ljava/io/PrintWriter;Ljava/io/OutputStream;)V

    .line 227
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 228
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 229
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 230
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 231
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v3

    .line 232
    new-instance p2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;

    invoke-direct {p2}, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;-><init>()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    :try_start_4
    iput p1, p2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->code:I

    .line 234
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/http/HttpStack;->readFully(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->result:[B

    .line 235
    iput-wide v3, p2, Lcom/netease/yunxin/lite/util/http/HttpStackResponse;->lastModified:J
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p3, :cond_1

    .line 242
    invoke-virtual {p3}, Ljava/io/PrintWriter;->close()V

    :cond_1
    if-eqz v2, :cond_2

    .line 246
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    if-eqz p0, :cond_7

    .line 252
    :goto_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v1, p3

    goto/16 :goto_c

    :catch_3
    move-exception p1

    move-object p2, v1

    :goto_3
    move-object v1, p3

    goto :goto_6

    :catch_4
    move-exception p1

    move-object p2, v1

    :goto_4
    move-object v1, p3

    goto :goto_9

    :catch_5
    move-exception p1

    move-object p2, v1

    goto :goto_6

    :catch_6
    move-exception p1

    move-object p2, v1

    goto :goto_9

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_c

    :catch_7
    move-exception p1

    move-object p2, v1

    goto :goto_5

    :catch_8
    move-exception p1

    move-object p2, v1

    goto :goto_8

    :catchall_2
    move-exception p1

    move-object p0, v1

    move-object v2, p0

    goto :goto_c

    :catch_9
    move-exception p1

    move-object p0, v1

    move-object p2, p0

    :goto_5
    move-object v2, p2

    .line 239
    :goto_6
    :try_start_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_3

    .line 242
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_3
    if-eqz v2, :cond_4

    .line 246
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_7

    :catch_a
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_7
    if-eqz p0, :cond_7

    goto :goto_2

    :catch_b
    move-exception p1

    move-object p0, v1

    move-object p2, p0

    :goto_8
    move-object v2, p2

    .line 237
    :goto_9
    :try_start_8
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v1, :cond_5

    .line 242
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_5
    if-eqz v2, :cond_6

    .line 246
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_a

    :catch_c
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_a
    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    :goto_b
    return-object p2

    :catchall_3
    move-exception p1

    :goto_c
    if-eqz v1, :cond_8

    .line 242
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_8
    if-eqz v2, :cond_9

    .line 246
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_d

    :catch_d
    move-exception p2

    .line 248
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_d
    if-eqz p0, :cond_a

    .line 252
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 254
    :cond_a
    throw p1
.end method

.method private static needRedirect(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x190

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static openConnection(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;I)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "method",
            "headers",
            "timeoutMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/http/HttpStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 95
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 97
    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x0

    .line 98
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 p1, 0x0

    .line 100
    invoke-static {p0, p1}, Lcom/netease/yunxin/lite/util/http/HttpStack;->configHttps(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 102
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static openConnection(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[BI)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "method",
            "headers",
            "body",
            "timeoutMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BI)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/http/HttpStack;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 68
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 70
    invoke-virtual {p0, p4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 p4, 0x0

    .line 73
    invoke-static {p0, p4}, Lcom/netease/yunxin/lite/util/http/HttpStack;->configHttps(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 75
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p3}, Lcom/netease/yunxin/lite/util/ArrayUtils;->isEmpty([B)Z

    move-result p4

    if-nez p4, :cond_2

    .line 80
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 81
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    if-eqz p2, :cond_1

    const-string p4, "Content-Encoding"

    .line 82
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "gzip"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 83
    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    new-instance p4, Ljava/io/BufferedOutputStream;

    invoke-direct {p4, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p2, p4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, p2

    .line 85
    :cond_1
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 86
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 87
    invoke-static {p1}, Lcom/netease/yunxin/lite/util/http/HttpStack;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    return-object p0
.end method

.method private static readFully(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [B

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 265
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 269
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    .line 270
    invoke-virtual {p0, v1, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    invoke-static {v2}, Lcom/netease/yunxin/lite/util/http/HttpStack;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v1}, Lcom/netease/yunxin/lite/util/http/HttpStack;->closeQuietly(Ljava/io/Closeable;)V

    .line 276
    throw p0
.end method
