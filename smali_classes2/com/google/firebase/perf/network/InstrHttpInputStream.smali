.class public final Lcom/google/firebase/perf/network/InstrHttpInputStream;
.super Ljava/io/InputStream;
.source "InstrHttpInputStream.java"


# instance fields
.field private final mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

.field private mBytesRead:J

.field private final mInputStream:Ljava/io/InputStream;

.field private mTimeToResponseInitiated:J

.field private mTimeToResponseLastRead:J

.field private final mTimer:Lcom/google/firebase/perf/util/Timer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;Lcom/google/firebase/perf/util/Timer;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBytesRead:J

    .line 30
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseLastRead:J

    .line 41
    iput-object p3, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    .line 42
    iput-object p1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mInputStream:Ljava/io/InputStream;

    .line 43
    iput-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 44
    invoke-virtual {p2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->getTimeToResponseInitiatedMicros()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseInitiated:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 52
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 53
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 54
    throw v0
.end method

.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    .line 61
    iget-wide v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseLastRead:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 62
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseLastRead:J

    .line 66
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 67
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBytesRead:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 70
    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseInitiated:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseInitiatedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseLastRead:J

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 75
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 78
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 79
    throw v0
.end method

.method public mark(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    .line 98
    iget-wide v3, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseInitiated:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 99
    iput-wide v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseInitiated:J

    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 101
    iget-wide v3, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseLastRead:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 102
    iput-wide v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseLastRead:J

    .line 103
    iget-object v3, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 104
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_0

    .line 106
    :cond_1
    iget-wide v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBytesRead:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBytesRead:J

    .line 107
    iget-object v3, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 111
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 112
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 113
    throw v0
.end method

.method public read([B)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 146
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    .line 147
    iget-wide v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseInitiated:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 148
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseInitiated:J

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 150
    iget-wide v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseLastRead:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 151
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseLastRead:J

    .line 152
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 153
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_0

    .line 155
    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBytesRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBytesRead:J

    .line 156
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 160
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 161
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v0}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 162
    throw p1
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 122
    iget-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide p2

    .line 123
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseInitiated:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 124
    iput-wide p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseInitiated:J

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 126
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseLastRead:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 127
    iput-wide p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseLastRead:J

    .line 128
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 129
    iget-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {p2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    goto :goto_0

    .line 131
    :cond_1
    iget-wide p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBytesRead:J

    .line 132
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 136
    iget-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object p3, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {p3}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 137
    iget-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {p2}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 138
    throw p1
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 171
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 172
    iget-object v1, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 173
    throw v0
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 181
    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    .line 182
    iget-wide v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseInitiated:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 183
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseInitiated:J

    :cond_0
    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    .line 185
    iget-wide v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseLastRead:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 186
    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimeToResponseLastRead:J

    .line 187
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    goto :goto_0

    .line 189
    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBytesRead:J

    .line 190
    iget-object v2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide p1

    :catch_0
    move-exception p1

    .line 194
    iget-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v0, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 195
    iget-object p2, p0, Lcom/google/firebase/perf/network/InstrHttpInputStream;->mBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-static {p2}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->logError(Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;)V

    .line 196
    throw p1
.end method
