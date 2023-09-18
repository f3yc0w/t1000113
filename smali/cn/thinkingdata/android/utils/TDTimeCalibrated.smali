.class public Lcn/thinkingdata/android/utils/TDTimeCalibrated;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/thinkingdata/android/utils/ITime;


# instance fields
.field private mCalibratedTime:Lcn/thinkingdata/android/utils/ICalibratedTime;

.field private mDate:Ljava/util/Date;

.field private mSystemElapsedRealtime:J

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Lcn/thinkingdata/android/utils/ICalibratedTime;Ljava/util/TimeZone;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/thinkingdata/android/utils/TDTimeCalibrated;->mCalibratedTime:Lcn/thinkingdata/android/utils/ICalibratedTime;

    iput-object p2, p0, Lcn/thinkingdata/android/utils/TDTimeCalibrated;->mTimeZone:Ljava/util/TimeZone;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/thinkingdata/android/utils/TDTimeCalibrated;->mSystemElapsedRealtime:J

    return-void
.end method

.method private declared-synchronized getDate()Ljava/util/Date;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/thinkingdata/android/utils/TDTimeCalibrated;->mDate:Ljava/util/Date;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/thinkingdata/android/utils/TDTimeCalibrated;->mCalibratedTime:Lcn/thinkingdata/android/utils/ICalibratedTime;

    iget-wide v1, p0, Lcn/thinkingdata/android/utils/TDTimeCalibrated;->mSystemElapsedRealtime:J

    invoke-interface {v0, v1, v2}, Lcn/thinkingdata/android/utils/ICalibratedTime;->get(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcn/thinkingdata/android/utils/TDTimeCalibrated;->mDate:Ljava/util/Date;

    :cond_0
    iget-object v0, p0, Lcn/thinkingdata/android/utils/TDTimeCalibrated;->mDate:Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    :try_start_1
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcn/thinkingdata/android/utils/TDTimeCalibrated;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-direct {p0}, Lcn/thinkingdata/android/utils/TDTimeCalibrated;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getZoneOffset()Ljava/lang/Double;
    .locals 3

    invoke-direct {p0}, Lcn/thinkingdata/android/utils/TDTimeCalibrated;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcn/thinkingdata/android/utils/TDTimeCalibrated;->mTimeZone:Ljava/util/TimeZone;

    invoke-static {v0, v1, v2}, Lcn/thinkingdata/android/utils/TDUtils;->getTimezoneOffset(JLjava/util/TimeZone;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
