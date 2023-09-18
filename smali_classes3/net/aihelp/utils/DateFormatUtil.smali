.class public Lnet/aihelp/utils/DateFormatUtil;
.super Ljava/lang/Object;
.source "DateFormatUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CSTFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 118
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 119
    invoke-static {p0}, Lnet/aihelp/utils/DateFormatUtil;->dateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static LongToDare(J)Ljava/util/Date;
    .locals 1

    .line 123
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static StringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 106
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 109
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static varargs clearCalendar(Ljava/util/Calendar;[I)V
    .locals 4

    .line 51
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    .line 52
    invoke-virtual {p0, v3, v1}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static dateFormat(J)Ljava/lang/String;
    .locals 0

    .line 127
    invoke-static {p0, p1}, Lnet/aihelp/utils/DateFormatUtil;->LongToDare(J)Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lnet/aihelp/utils/DateFormatUtil;->dateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dateFormat(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProperDate(Landroid/content/res/Resources;J)Ljava/lang/String;
    .locals 2

    .line 136
    invoke-static {p1, p2}, Lnet/aihelp/utils/DateFormatUtil;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p1, p2}, Lnet/aihelp/utils/DateFormatUtil;->getTodayTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_0
    invoke-static {p1, p2}, Lnet/aihelp/utils/DateFormatUtil;->isYesterday(J)Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_1

    .line 139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "aihelp_yesterday"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lnet/aihelp/utils/DateFormatUtil;->getTodayTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x6

    .line 140
    invoke-static {v0, p1, p2}, Lnet/aihelp/utils/DateFormatUtil;->isBackNDays(IJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2}, Lnet/aihelp/utils/DateFormatUtil;->getWeekOfDate(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lnet/aihelp/utils/DateFormatUtil;->getTodayTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 143
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lnet/aihelp/utils/DateFormatUtil;->dateFormat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lnet/aihelp/utils/DateFormatUtil;->getTodayTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTodayTime(J)Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWeekOfDate(Landroid/content/res/Resources;J)Ljava/lang/String;
    .locals 5

    const/4 p0, 0x7

    new-array v0, p0, [Ljava/lang/String;

    const-string v1, "aihelp_sunday"

    .line 74
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "aihelp_monday"

    .line 75
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "aihelp_tuesday"

    .line 76
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "aihelp_wednesday"

    .line 77
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "aihelp_thursday"

    .line 78
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "aihelp_friday"

    .line 79
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "aihelp_saturday"

    .line 80
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 83
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 85
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p0, v3

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, p0

    .line 89
    :goto_0
    aget-object p0, v0, v2

    return-object p0
.end method

.method private static goBackNDays(IJ)[J
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 38
    fill-array-data v3, :array_0

    invoke-static {v1, v3}, Lnet/aihelp/utils/DateFormatUtil;->clearCalendar(Ljava/util/Calendar;[I)V

    neg-int p0, p0

    const/4 v3, 0x5

    .line 39
    invoke-virtual {v1, v3, p0}, Ljava/util/Calendar;->add(II)V

    .line 40
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/4 p0, 0x0

    aput-wide v3, v0, p0

    .line 43
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-array p0, v2, [I

    .line 44
    fill-array-data p0, :array_1

    invoke-static {v1, p0}, Lnet/aihelp/utils/DateFormatUtil;->clearCalendar(Ljava/util/Calendar;[I)V

    .line 45
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    const/4 p2, 0x1

    aput-wide p0, v0, p2

    return-object v0

    nop

    :array_0
    .array-data 4
        0xb
        0xc
        0xd
        0xe
    .end array-data

    :array_1
    .array-data 4
        0xb
        0xc
        0xd
        0xe
    .end array-data
.end method

.method public static isBackNDays(IJ)Z
    .locals 4

    .line 67
    invoke-static {p0, p1, p2}, Lnet/aihelp/utils/DateFormatUtil;->goBackNDays(IJ)[J

    move-result-object p0

    const/4 p1, 0x0

    .line 68
    aget-wide v0, p0, p1

    const/4 p2, 0x1

    aget-wide v2, p0, p2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public static isToday(J)Z
    .locals 5

    const/4 v0, 0x0

    .line 57
    invoke-static {v0, p0, p1}, Lnet/aihelp/utils/DateFormatUtil;->goBackNDays(IJ)[J

    move-result-object p0

    .line 58
    aget-wide v1, p0, v0

    const/4 p1, 0x1

    aget-wide v3, p0, p1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isYesterday(J)Z
    .locals 5

    const/4 v0, 0x1

    .line 62
    invoke-static {v0, p0, p1}, Lnet/aihelp/utils/DateFormatUtil;->goBackNDays(IJ)[J

    move-result-object p0

    const/4 p1, 0x0

    .line 63
    aget-wide v1, p0, p1

    aget-wide v3, p0, v0

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
