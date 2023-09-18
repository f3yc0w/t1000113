.class public Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/thinkingdata/android/utils/ICalibratedTime;


# static fields
.field private static final DEFAULT_TIME_OUT:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "ThinkingAnalytics.NTP"


# instance fields
.field private mSystemElapsedRealtime:J

.field private final mThread:Ljava/lang/Thread;

.field private ntpServer:[Ljava/lang/String;

.field private startTime:J


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP$1;

    invoke-direct {v1, p0}, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP$1;-><init>(Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;->mThread:Ljava/lang/Thread;

    iput-object p1, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;->ntpServer:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;->ntpServer:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;J)J
    .locals 0

    iput-wide p1, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;->startTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;J)J
    .locals 0

    iput-wide p1, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;->mSystemElapsedRealtime:J

    return-wide p1
.end method


# virtual methods
.method public get(J)Ljava/util/Date;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;->mThread:Ljava/lang/Thread;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-wide v0, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;->mSystemElapsedRealtime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    new-instance v0, Ljava/util/Date;

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    add-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :cond_0
    iget-wide v1, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;->mSystemElapsedRealtime:J

    sub-long/2addr p1, v1

    iget-wide v1, p0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;->startTime:J

    add-long/2addr p1, v1

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    :goto_1
    return-object v0
.end method
