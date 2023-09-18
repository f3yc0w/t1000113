.class Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/transport/RateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RateLimiterImpl"
.end annotation


# static fields
.field private static final MICROS_IN_A_SECOND:J

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private final isLogcatEnabled:Z

.field private mBackgroundCapacity:J

.field private mBackgroundRate:D

.field private mCapacity:J

.field private final mClock:Lcom/google/firebase/perf/util/Clock;

.field private mForegroundCapacity:J

.field private mForegroundRate:D

.field private mLastTimeTokenConsumed:Lcom/google/firebase/perf/util/Timer;

.field private mRate:D

.field private mTokenCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 215
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    .line 217
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->MICROS_IN_A_SECOND:J

    return-void
.end method

.method constructor <init>(DJLcom/google/firebase/perf/util/Clock;Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;Z)V
    .locals 0
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/google/firebase/perf/internal/ResourceType;
        .end annotation
    .end param

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p5, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mClock:Lcom/google/firebase/perf/util/Clock;

    .line 243
    iput-wide p3, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mCapacity:J

    .line 244
    iput-wide p1, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mRate:D

    .line 245
    iput-wide p3, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mTokenCount:J

    .line 246
    invoke-virtual {p5}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mLastTimeTokenConsumed:Lcom/google/firebase/perf/util/Timer;

    .line 247
    invoke-direct {p0, p6, p7, p8}, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->setRateByReadingRemoteConfigValues(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;Z)V

    .line 248
    iput-boolean p8, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->isLogcatEnabled:Z

    return-void
.end method

.method private static getBlimitEvents(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/firebase/perf/internal/ResourceType;
        .end annotation
    .end param

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getTraceEventCountBackground()J

    move-result-wide p0

    return-wide p0

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getNetworkEventCountBackground()J

    move-result-wide p0

    return-wide p0
.end method

.method private static getBlimitSec(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/firebase/perf/internal/ResourceType;
        .end annotation
    .end param

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRateLimitSec()J

    move-result-wide p0

    return-wide p0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRateLimitSec()J

    move-result-wide p0

    return-wide p0
.end method

.method private static getFlimitEvents(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/firebase/perf/internal/ResourceType;
        .end annotation
    .end param

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getTraceEventCountForeground()J

    move-result-wide p0

    return-wide p0

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getNetworkEventCountForeground()J

    move-result-wide p0

    return-wide p0
.end method

.method private static getFlimitSec(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/firebase/perf/internal/ResourceType;
        .end annotation
    .end param

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRateLimitSec()J

    move-result-wide p0

    return-wide p0

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigResolver;->getRateLimitSec()J

    move-result-wide p0

    return-wide p0
.end method

.method private setRateByReadingRemoteConfigValues(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;Z)V
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/firebase/perf/internal/ResourceType;
        .end annotation
    .end param

    .line 298
    invoke-static {p1, p2}, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->getFlimitSec(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J

    move-result-wide v0

    .line 299
    invoke-static {p1, p2}, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->getFlimitEvents(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v4, v2

    long-to-double v0, v0

    div-double/2addr v4, v0

    .line 301
    iput-wide v4, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mForegroundRate:D

    .line 302
    iput-wide v2, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mForegroundCapacity:J

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    .line 304
    sget-object v4, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p2, v6, v3

    iget-wide v7, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mForegroundRate:D

    .line 309
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v1

    iget-wide v7, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mForegroundCapacity:J

    .line 310
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v0

    const-string v7, "Foreground %s logging rate:%f, burst capacity:%d"

    .line 305
    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 304
    invoke-virtual {v4, v5, v6}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :cond_0
    invoke-static {p1, p2}, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->getBlimitSec(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J

    move-result-wide v4

    .line 315
    invoke-static {p1, p2}, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->getBlimitEvents(Lcom/google/firebase/perf/config/ConfigResolver;Ljava/lang/String;)J

    move-result-wide v6

    long-to-double v8, v6

    long-to-double v4, v4

    div-double/2addr v8, v4

    .line 317
    iput-wide v8, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mBackgroundRate:D

    .line 318
    iput-wide v6, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mBackgroundCapacity:J

    if-eqz p3, :cond_1

    .line 320
    sget-object p1, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    iget-wide v4, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mBackgroundRate:D

    .line 325
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v2, v1

    iget-wide v4, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mBackgroundCapacity:J

    .line 326
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, v0

    const-string p2, "Background %s logging rate:%f, capacity:%d"

    .line 321
    invoke-static {p3, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    .line 320
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized changeRate(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 283
    :try_start_0
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mForegroundRate:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mBackgroundRate:D

    :goto_0
    iput-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mRate:D

    if-eqz p1, :cond_1

    .line 284
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mForegroundCapacity:J

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mBackgroundCapacity:J

    :goto_1
    iput-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mCapacity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized check(Lcom/google/firebase/perf/v1/PerfMetric;)Z
    .locals 6

    monitor-enter p0

    .line 260
    :try_start_0
    iget-object p1, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mClock:Lcom/google/firebase/perf/util/Clock;

    invoke-virtual {p1}, Lcom/google/firebase/perf/util/Clock;->getTime()Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    .line 261
    iget-object v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mLastTimeTokenConsumed:Lcom/google/firebase/perf/util/Timer;

    .line 264
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mRate:D

    mul-double v0, v0, v2

    sget-wide v2, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->MICROS_IN_A_SECOND:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x0

    .line 262
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 265
    iget-wide v4, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mTokenCount:J

    add-long/2addr v4, v0

    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mCapacity:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mTokenCount:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 267
    iput-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mTokenCount:J

    .line 268
    iput-object p1, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mLastTimeTokenConsumed:Lcom/google/firebase/perf/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 269
    monitor-exit p0

    return p1

    .line 271
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->isLogcatEnabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 272
    sget-object p1, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v1, "Exceeded log rate limit, dropping the log."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getBackgroundCapacity()J
    .locals 2

    .line 379
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mBackgroundCapacity:J

    return-wide v0
.end method

.method getBackgroundRate()D
    .locals 2

    .line 374
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mBackgroundRate:D

    return-wide v0
.end method

.method getForegroundCapacity()J
    .locals 2

    .line 369
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mForegroundCapacity:J

    return-wide v0
.end method

.method getForegroundRate()D
    .locals 2

    .line 364
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mForegroundRate:D

    return-wide v0
.end method

.method getRate()D
    .locals 2

    .line 384
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mRate:D

    return-wide v0
.end method

.method setRate(D)V
    .locals 0

    .line 389
    iput-wide p1, p0, Lcom/google/firebase/perf/transport/RateLimiter$RateLimiterImpl;->mRate:D

    return-void
.end method
