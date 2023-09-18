.class public Lcn/thinkingdata/android/utils/TDTime;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/thinkingdata/android/utils/ITime;


# instance fields
.field private enableZoneOffset:Z

.field private final mDate:Ljava/util/Date;

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/thinkingdata/android/utils/TDTime;->enableZoneOffset:Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    :cond_0
    iput-object p1, p0, Lcn/thinkingdata/android/utils/TDTime;->mDate:Ljava/util/Date;

    iput-object p2, p0, Lcn/thinkingdata/android/utils/TDTime;->mTimeZone:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method public disableZoneOffset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/thinkingdata/android/utils/TDTime;->enableZoneOffset:Z

    return-void
.end method

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

    iget-object v1, p0, Lcn/thinkingdata/android/utils/TDTime;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    iget-object v1, p0, Lcn/thinkingdata/android/utils/TDTime;->mDate:Ljava/util/Date;

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

    iget-boolean v0, p0, Lcn/thinkingdata/android/utils/TDTime;->enableZoneOffset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/thinkingdata/android/utils/TDTime;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/thinkingdata/android/utils/TDTime;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcn/thinkingdata/android/utils/TDTime;->mTimeZone:Ljava/util/TimeZone;

    invoke-static {v0, v1, v2}, Lcn/thinkingdata/android/utils/TDUtils;->getTimezoneOffset(JLjava/util/TimeZone;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
