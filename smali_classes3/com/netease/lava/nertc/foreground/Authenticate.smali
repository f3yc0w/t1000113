.class public Lcom/netease/lava/nertc/foreground/Authenticate;
.super Ljava/lang/Thread;
.source "Authenticate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/foreground/Authenticate$AuthenticateCallback;
    }
.end annotation


# static fields
.field public static final AUTHENTICATE_CODE:I = 0x7cf

.field public static final RETRY_NUM:I = 0x3

.field public static final TAG:Ljava/lang/String; = "Authenticate"

.field public static final TIME_OUT:I = 0x1f40

.field private static instance:Lcom/netease/lava/nertc/foreground/Authenticate; = null

.field public static final kRtcDot:Ljava/lang/String; = "-"


# instance fields
.field private final appKey:Ljava/lang/String;

.field private callback:Lcom/netease/lava/nertc/foreground/Authenticate$AuthenticateCallback;

.field private retryNum:I

.field public volatile stop:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/netease/lava/nertc/foreground/Authenticate$AuthenticateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appKey",
            "callback"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->stop:Z

    .line 36
    iput-object p1, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->appKey:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->callback:Lcom/netease/lava/nertc/foreground/Authenticate$AuthenticateCallback;

    const/4 p1, 0x3

    .line 38
    iput p1, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->retryNum:I

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Lcom/netease/lava/nertc/foreground/Authenticate$AuthenticateCallback;)Lcom/netease/lava/nertc/foreground/Authenticate;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appKey",
            "callback"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/netease/lava/nertc/foreground/Authenticate;->instance:Lcom/netease/lava/nertc/foreground/Authenticate;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/netease/lava/nertc/foreground/Authenticate;

    invoke-direct {v0, p0, p1}, Lcom/netease/lava/nertc/foreground/Authenticate;-><init>(Ljava/lang/String;Lcom/netease/lava/nertc/foreground/Authenticate$AuthenticateCallback;)V

    sput-object v0, Lcom/netease/lava/nertc/foreground/Authenticate;->instance:Lcom/netease/lava/nertc/foreground/Authenticate;

    .line 45
    :cond_0
    sget-object p0, Lcom/netease/lava/nertc/foreground/Authenticate;->instance:Lcom/netease/lava/nertc/foreground/Authenticate;

    return-object p0
.end method

.method private getSDKConfigServer()Ljava/lang/String;
    .locals 1

    .line 132
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://webtest.netease.im/nrtcproxy/nrtc/getSdkConfig.action"

    goto :goto_0

    :cond_0
    const-string v0, "https://nrtc.netease.im/nrtc/getSdkConfig.action"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 1

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->stop:Z

    const/4 v0, 0x0

    .line 140
    sput-object v0, Lcom/netease/lava/nertc/foreground/Authenticate;->instance:Lcom/netease/lava/nertc/foreground/Authenticate;

    .line 141
    iput-object v0, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->callback:Lcom/netease/lava/nertc/foreground/Authenticate$AuthenticateCallback;

    return-void
.end method

.method public run()V
    .locals 14

    const-string v0, "-"

    .line 50
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 52
    :goto_0
    iget-boolean v1, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->stop:Z

    if-nez v1, :cond_b

    iget v1, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->retryNum:I

    if-lez v1, :cond_b

    const-wide/16 v1, 0x1f40

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 57
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {p0}, Lcom/netease/lava/nertc/foreground/Authenticate;->getSDKConfigServer()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v6, "POST"

    .line 59
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded;charset=utf-8"

    .line 60
    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Charset"

    const-string v7, "UTF-8"

    .line 61
    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 64
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v6, 0x0

    .line 65
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v7, 0x1f40

    .line 66
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 67
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appkey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->appKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&sdkVersion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "5.4.101"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa28

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "48d0907f31"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 71
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 72
    invoke-virtual {v8, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 75
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_4

    .line 77
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v9, 0x400

    :try_start_2
    new-array v9, v9, [B

    .line 81
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    :goto_1
    invoke-virtual {v7, v9}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 84
    new-instance v12, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v12, v9, v6, v11, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 88
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v10, :cond_3

    .line 92
    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v10

    goto :goto_2

    :catch_0
    move-exception v9

    .line 94
    :try_start_4
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    if-eqz v3, :cond_3

    const-string v9, "code"

    .line 97
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v8, :cond_3

    const-string v8, "data"

    .line 99
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v8, 0x0

    .line 101
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    const/16 v9, 0x7cf

    .line 102
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 103
    iget-object v9, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->callback:Lcom/netease/lava/nertc/foreground/Authenticate$AuthenticateCallback;

    if-eqz v9, :cond_1

    .line 104
    invoke-interface {v9, v6}, Lcom/netease/lava/nertc/foreground/Authenticate$AuthenticateCallback;->result(Z)V

    goto :goto_4

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 110
    :cond_2
    :goto_4
    iput-boolean v4, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->stop:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    move-object v3, v7

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    .line 119
    :try_start_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    :catch_1
    nop

    goto/16 :goto_0

    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 122
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 124
    :cond_6
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 125
    iget v1, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->retryNum:I

    :goto_7
    sub-int/2addr v1, v4

    iput v1, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->retryNum:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v7, v3

    :goto_8
    move-object v3, v5

    goto :goto_a

    :catch_2
    move-object v7, v3

    :catch_3
    move-object v3, v5

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v7, v3

    goto :goto_a

    :catch_4
    move-object v7, v3

    :goto_9
    :try_start_6
    const-string v5, "Authenticate"

    const-string v6, "auth check failed, reason network error."

    .line 115
    invoke-static {v5, v6}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v3, :cond_7

    .line 119
    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    if-eqz v7, :cond_8

    .line 122
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 124
    :cond_8
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 125
    iget v1, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->retryNum:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    :catchall_3
    move-exception v0

    :goto_a
    if-eqz v3, :cond_9

    .line 119
    :try_start_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    if-eqz v7, :cond_a

    .line 122
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 124
    :cond_a
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 125
    iget v1, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->retryNum:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/netease/lava/nertc/foreground/Authenticate;->retryNum:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 127
    :catch_5
    throw v0

    :cond_b
    return-void
.end method
