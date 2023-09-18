.class Lcom/google/firebase/perf/network/InstrURLConnectionBase;
.super Ljava/lang/Object;
.source "InstrURLConnectionBase.java"


# static fields
.field private static final USER_AGENT_PROPERTY:Ljava/lang/String; = "User-Agent"

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private final mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

.field private final mHttpUrlConnection:Ljava/net/HttpURLConnection;

.field private mTimeRequested:J

.field private mTimeToResponseInitiated:J

.field private final mTimer:Lcom/google/firebase/perf/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimeRequested:J

    .line 44
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimeToResponseInitiated:J

    .line 55
    iput-object p1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    .line 56
    iput-object p3, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 57
    iput-object p2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    .line 58
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setUrl(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    return-void
.end method

.method private updateRequestInfo()V
    .locals 5

    .line 443
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimeRequested:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 444
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->reset()V

    .line 445
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimeRequested:J

    .line 446
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setRequestStartTimeMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setHttpMethod(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    goto :goto_0

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setHttpMethod(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    goto :goto_0

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setHttpMethod(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    :goto_0
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimeRequested:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->reset()V

    .line 64
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimeRequested:J

    .line 65
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setRequestStartTimeMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 68
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 70
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 71
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 72
    throw v0
.end method

.method public disconnect()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 79
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 80
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 85
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setHttpResponseCode(I)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 98
    new-instance v1, Lcom/google/firebase/perf/network/InstrHttpInputStream;

    check-cast v0, Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/perf/network/InstrHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;Lcom/google/firebase/perf/util/Timer;)V

    move-object v0, v1

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 101
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 102
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 103
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 91
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 92
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 93
    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 111
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setHttpResponseCode(I)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 124
    new-instance v0, Lcom/google/firebase/perf/network/InstrHttpInputStream;

    check-cast p1, Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/firebase/perf/network/InstrHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;Lcom/google/firebase/perf/util/Timer;)V

    move-object p1, v0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 127
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 128
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 129
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 117
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 118
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v0}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 119
    throw p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 263
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 267
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 268
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentLengthLong()J
    .locals 2

    .line 272
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 282
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 283
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 287
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 288
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 4

    .line 321
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setHttpResponseCode(I)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 325
    :catch_0
    sget-object v0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "IOException thrown trying to obtain the response code"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    new-instance v1, Lcom/google/firebase/perf/network/InstrHttpInputStream;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/perf/network/InstrHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;Lcom/google/firebase/perf/util/Timer;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 211
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 212
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 217
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 218
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 224
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 229
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 230
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 235
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 236
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 250
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 251
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 2

    .line 241
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 257
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 137
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setHttpResponseCode(I)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 138
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/google/firebase/perf/network/InstrHttpInputStream;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/perf/network/InstrHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;Lcom/google/firebase/perf/util/Timer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 144
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 145
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 146
    throw v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .line 151
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 152
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    :try_start_0
    new-instance v0, Lcom/google/firebase/perf/network/InstrHttpOutputStream;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/perf/network/InstrHttpOutputStream;-><init>(Ljava/io/OutputStream;Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;Lcom/google/firebase/perf/util/Timer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 160
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 161
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 162
    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 170
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 171
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 172
    throw v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseCode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 178
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimeToResponseInitiated:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimeToResponseInitiated:J

    .line 180
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseInitiatedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 183
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setHttpResponseCode(I)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 187
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 188
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 189
    throw v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->updateRequestInfo()V

    .line 195
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimeToResponseInitiated:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimeToResponseInitiated:J

    .line 197
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseInitiatedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 200
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setHttpResponseCode(I)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 204
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 205
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 206
    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 2

    .line 400
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    :cond_0
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "User-Agent"

    .line 422
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v0, p2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setUserAgent(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrURLConnectionBase;->mHttpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
