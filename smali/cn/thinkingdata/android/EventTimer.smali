.class Lcn/thinkingdata/android/EventTimer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private eventAccumulatedDuration:J

.field private startTime:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/thinkingdata/android/EventTimer;->startTime:J

    iput-object p1, p0, Lcn/thinkingdata/android/EventTimer;->timeUnit:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/thinkingdata/android/EventTimer;->eventAccumulatedDuration:J

    return-void
.end method


# virtual methods
.method duration()Ljava/lang/String;
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/thinkingdata/android/EventTimer;->startTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcn/thinkingdata/android/EventTimer;->eventAccumulatedDuration:J

    add-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_6

    const-wide/32 v3, 0x5265c00

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcn/thinkingdata/android/EventTimer;->timeUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcn/thinkingdata/android/EventTimer;->timeUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/high16 v5, 0x447a0000    # 1000.0f

    if-ne v3, v4, :cond_2

    long-to-float v0, v0

    div-float/2addr v0, v5

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcn/thinkingdata/android/EventTimer;->timeUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/high16 v6, 0x42700000    # 60.0f

    if-ne v3, v4, :cond_3

    long-to-float v0, v0

    div-float/2addr v0, v5

    :goto_0
    div-float/2addr v0, v6

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcn/thinkingdata/android/EventTimer;->timeUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    if-ne v3, v4, :cond_4

    long-to-float v0, v0

    div-float/2addr v0, v5

    div-float/2addr v0, v6

    goto :goto_0

    :cond_4
    :goto_1
    long-to-float v0, v0

    :goto_2
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "%.3f"

    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_6
    :goto_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getEventAccumulatedDuration()J
    .locals 2

    iget-wide v0, p0, Lcn/thinkingdata/android/EventTimer;->eventAccumulatedDuration:J

    return-wide v0
.end method

.method getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcn/thinkingdata/android/EventTimer;->startTime:J

    return-wide v0
.end method

.method setEventAccumulatedDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcn/thinkingdata/android/EventTimer;->eventAccumulatedDuration:J

    return-void
.end method

.method setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcn/thinkingdata/android/EventTimer;->startTime:J

    return-void
.end method
