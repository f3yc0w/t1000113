.class public Lcom/google/android/exoplr2avp/util/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;


# static fields
.field private static final DEFAULT_TAG:Ljava/lang/String; = "EventLogger"

.field private static final MAX_TIMELINE_ITEM_LINES:I = 0x3

.field private static final TIME_FORMAT:Ljava/text/NumberFormat;


# instance fields
.field private final period:Lcom/google/android/exoplr2avp/Timeline$Period;

.field private final startTimeMs:J

.field private final tag:Ljava/lang/String;

.field private final window:Lcom/google/android/exoplr2avp/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/util/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    .line 58
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 59
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "EventLogger"

    .line 70
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/util/EventLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "EventLogger"

    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/EventLogger;->tag:Ljava/lang/String;

    .line 80
    new-instance p1, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/EventLogger;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 81
    new-instance p1, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/EventLogger;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/util/EventLogger;->startTimeMs:J

    return-void
.end method

.method private static getDiscontinuityReasonString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "INTERNAL"

    return-object p0

    :cond_1
    const-string p0, "REMOVE"

    return-object p0

    :cond_2
    const-string p0, "SKIP"

    return-object p0

    :cond_3
    const-string p0, "SEEK_ADJUSTMENT"

    return-object p0

    :cond_4
    const-string p0, "SEEK"

    return-object p0

    :cond_5
    const-string p0, "AUTO_TRANSITION"

    return-object p0
.end method

.method private getEventString(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->getEventTimeString(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 553
    instance-of p2, p4, Lcom/google/android/exoplr2avp/PlaybackException;

    if-eqz p2, :cond_0

    .line 554
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", errorCode="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p1, p4

    check-cast p1, Lcom/google/android/exoplr2avp/PlaybackException;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/PlaybackException;->getErrorCodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 557
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 559
    :cond_1
    invoke-static {p4}, Lcom/google/android/exoplr2avp/util/Log;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 560
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 561
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n  "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n"

    invoke-virtual {p2, p4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 563
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getEventTimeString(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;
    .locals 6

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "window="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->windowIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    iget-object v1, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    if-eqz v1, :cond_0

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", period="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v2, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 571
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    iget-object v1, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adGroup="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ad="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v4, p0, Lcom/google/android/exoplr2avp/util/EventLogger;->startTimeMs:J

    sub-long/2addr v2, v4

    .line 578
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mediaPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    .line 580
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getMediaItemTransitionReasonString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "PLAYLIST_CHANGED"

    return-object p0

    :cond_1
    const-string p0, "SEEK"

    return-object p0

    :cond_2
    const-string p0, "AUTO"

    return-object p0

    :cond_3
    const-string p0, "REPEAT"

    return-object p0
.end method

.method private static getPlayWhenReadyChangeReasonString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "END_OF_MEDIA_ITEM"

    return-object p0

    :cond_1
    const-string p0, "REMOTE"

    return-object p0

    :cond_2
    const-string p0, "AUDIO_BECOMING_NOISY"

    return-object p0

    :cond_3
    const-string p0, "AUDIO_FOCUS_LOSS"

    return-object p0

    :cond_4
    const-string p0, "USER_REQUEST"

    return-object p0
.end method

.method private static getPlaybackSuppressionReasonString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "TRANSIENT_AUDIO_FOCUS_LOSS"

    return-object p0

    :cond_1
    const-string p0, "NONE"

    return-object p0
.end method

.method private static getRepeatModeString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "ALL"

    return-object p0

    :cond_1
    const-string p0, "ONE"

    return-object p0

    :cond_2
    const-string p0, "OFF"

    return-object p0
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "ENDED"

    return-object p0

    :cond_1
    const-string p0, "READY"

    return-object p0

    :cond_2
    const-string p0, "BUFFERING"

    return-object p0

    :cond_3
    const-string p0, "IDLE"

    return-object p0
.end method

.method private static getTimeString(J)Ljava/lang/String;
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "?"

    goto :goto_0

    .line 586
    :cond_0
    sget-object v0, Lcom/google/android/exoplr2avp/util/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    long-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getTimelineChangeReasonString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "SOURCE_UPDATE"

    return-object p0

    :cond_1
    const-string p0, "PLAYLIST_CHANGED"

    return-object p0
.end method

.method private static getTrackStatusString(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "[X]"

    goto :goto_0

    :cond_0
    const-string p0, "[ ]"

    :goto_0
    return-object p0
.end method

.method private logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 518
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplr2avp/util/EventLogger;->getEventString(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 522
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplr2avp/util/EventLogger;->getEventString(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private loge(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 534
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/util/EventLogger;->getEventString(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private loge(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 526
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplr2avp/util/EventLogger;->getEventString(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private printInternalError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "internalError"

    .line 538
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/exoplr2avp/util/EventLogger;->loge(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private printMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 542
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/metadata/Metadata;->get(I)Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected logd(Ljava/lang/String;)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/EventLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/EventLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioAttributesChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
    .locals 3

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p2, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->contentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->flags:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->usage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->allowedCapturePolicy:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "audioAttributes"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAudioCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    const-string p3, "audioDecoderInitialized"

    .line 318
    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public onAudioDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 1

    const-string v0, "audioDecoderReleased"

    .line 339
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    const-string p2, "audioDisabled"

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    const-string p2, "audioEnabled"

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 0

    .line 324
    invoke-static {p2}, Lcom/google/android/exoplr2avp/Format;->toLogString(Lcom/google/android/exoplr2avp/Format;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "audioInputFormat"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAudioPositionAdvancing(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioPositionAdvancing(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public onAudioSessionIdChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 1

    .line 349
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "audioSessionId"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAudioSinkError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioSinkError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioUnderrun(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "audioTrackUnderrun"

    const/4 p4, 0x0

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/google/android/exoplr2avp/util/EventLogger;->loge(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$Commands;)V

    return-void
.end method

.method public onBandwidthEstimate(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/text/CueGroup;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDecoderDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDecoderDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDecoderEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    return-void
.end method

.method public synthetic onDecoderInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDecoderInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method public onDownstreamFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 1

    .line 464
    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/Format;->toLogString(Lcom/google/android/exoplr2avp/Format;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "downstreamFormat"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmKeysLoaded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const-string v0, "drmKeysLoaded"

    .line 489
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmKeysRemoved(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const-string v0, "drmKeysRemoved"

    .line 484
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmKeysRestored(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const-string v0, "drmKeysRestored"

    .line 479
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "drmSessionAcquired"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmSessionManagerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "drmSessionManagerError"

    .line 474
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->printInternalError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onDrmSessionReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const-string v0, "drmSessionReleased"

    .line 494
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onDroppedVideoFrames(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0

    .line 395
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "droppedFrames"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onEvents(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;)V

    return-void
.end method

.method public onIsLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 1

    .line 112
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "loading"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIsPlayingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 1

    .line 140
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "isPlaying"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    const-string p2, "loadError"

    .line 431
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/exoplr2avp/util/EventLogger;->printInternalError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onLoadStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public synthetic onLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public onMediaItemTransition(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaItem;I)V
    .locals 1

    .line 247
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mediaItem ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->getEventTimeString(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-static {p3}, Lcom/google/android/exoplr2avp/util/EventLogger;->getMediaItemTransitionReasonString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/metadata/Metadata;)V
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "metadata ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->getEventTimeString(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    const-string p1, "  "

    .line 306
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->printMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;Ljava/lang/String;)V

    const-string p1, "]"

    .line 307
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-static {p3}, Lcom/google/android/exoplr2avp/util/EventLogger;->getPlayWhenReadyChangeReasonString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "playWhenReady"

    .line 123
    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 1

    .line 203
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/PlaybackParameters;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "playbackParameters"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 1

    .line 117
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->getStateString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "state"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 1

    .line 135
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->getPlaybackSuppressionReasonString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "playbackSuppressionReason"

    .line 132
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V
    .locals 1

    const-string v0, "playerFailed"

    .line 257
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->loge(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlayerReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;I)V
    .locals 10

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reason="

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {p4}, Lcom/google/android/exoplr2avp/util/EventLogger;->getDiscontinuityReasonString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", PositionInfo:old ["

    .line 163
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "mediaItem="

    .line 164
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/google/android/exoplr2avp/Player$PositionInfo;->mediaItemIndex:I

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", period="

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/google/android/exoplr2avp/Player$PositionInfo;->periodIndex:I

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pos="

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/google/android/exoplr2avp/Player$PositionInfo;->positionMs:J

    .line 169
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    iget v3, p2, Lcom/google/android/exoplr2avp/Player$PositionInfo;->adGroupIndex:I

    const-string v4, ", ad="

    const-string v5, ", adGroup="

    const-string v6, ", contentPos="

    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 172
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p2, Lcom/google/android/exoplr2avp/Player$PositionInfo;->contentPositionMs:J

    .line 173
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/google/android/exoplr2avp/Player$PositionInfo;->adGroupIndex:I

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/google/android/exoplr2avp/Player$PositionInfo;->adIndexInAdGroup:I

    .line 177
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "], PositionInfo:new ["

    .line 180
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/google/android/exoplr2avp/Player$PositionInfo;->mediaItemIndex:I

    .line 182
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/google/android/exoplr2avp/Player$PositionInfo;->periodIndex:I

    .line 184
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lcom/google/android/exoplr2avp/Player$PositionInfo;->positionMs:J

    .line 186
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    iget p2, p3, Lcom/google/android/exoplr2avp/Player$PositionInfo;->adGroupIndex:I

    if-eq p2, v7, :cond_1

    .line 189
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lcom/google/android/exoplr2avp/Player$PositionInfo;->contentPositionMs:J

    .line 190
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/google/android/exoplr2avp/Player$PositionInfo;->adGroupIndex:I

    .line 192
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/google/android/exoplr2avp/Player$PositionInfo;->adIndexInAdGroup:I

    .line 194
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "]"

    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "positionDiscontinuity"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderedFirstFrame(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 0

    .line 410
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "renderedFirstFrame"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRepeatModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 1

    .line 145
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->getRepeatModeString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "repeatMode"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onSeekProcessed(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSeekStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onShuffleModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 1

    .line 150
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "shuffleModeEnabled"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 1

    .line 368
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "skipSilenceEnabled"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;II)V
    .locals 1

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "surfaceSize"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 8

    .line 208
    iget-object v0, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v0

    .line 209
    iget-object v1, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v1

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeline ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->getEventTimeString(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", periodCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", windowCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->getTimelineChangeReasonString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 210
    invoke-virtual {p0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    .line 219
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const-string v5, "]"

    if-ge v2, v4, :cond_0

    .line 220
    iget-object v3, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/util/EventLogger;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  period ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/util/EventLogger;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/Timeline$Period;->getDurationMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/exoplr2avp/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "  ..."

    if-le v0, v3, :cond_1

    .line 224
    invoke-virtual {p0, v2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 226
    :cond_1
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 227
    iget-object v0, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/util/EventLogger;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0, p2, v4}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  window ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/util/EventLogger;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 231
    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/Timeline$Window;->getDurationMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/exoplr2avp/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", seekable="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/util/EventLogger;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-boolean v4, v4, Lcom/google/android/exoplr2avp/Timeline$Window;->isSeekable:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", dynamic="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/util/EventLogger;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-boolean v4, v4, Lcom/google/android/exoplr2avp/Timeline$Window;->isDynamic:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    if-le v1, v3, :cond_3

    .line 239
    invoke-virtual {p0, v2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 241
    :cond_3
    invoke-virtual {p0, v5}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Tracks;)V
    .locals 8

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tracks ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->getEventTimeString(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 265
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const-string v2, "    "

    const-string v3, "  ]"

    if-ge v0, v1, :cond_1

    .line 266
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/Tracks$Group;

    const-string v4, "  group ["

    .line 267
    invoke-virtual {p0, v4}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 268
    :goto_1
    iget v5, v1, Lcom/google/android/exoplr2avp/Tracks$Group;->length:I

    if-ge v4, v5, :cond_0

    .line 269
    invoke-virtual {v1, v4}, Lcom/google/android/exoplr2avp/Tracks$Group;->isTrackSelected(I)Z

    move-result v5

    invoke-static {v5}, Lcom/google/android/exoplr2avp/util/EventLogger;->getTrackStatusString(Z)Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-virtual {v1, v4}, Lcom/google/android/exoplr2avp/Tracks$Group;->getTrackSupport(I)I

    move-result v6

    invoke-static {v6}, Lcom/google/android/exoplr2avp/util/Util;->getFormatSupportString(I)Ljava/lang/String;

    move-result-object v6

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Track:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v1, v4}, Lcom/google/android/exoplr2avp/Tracks$Group;->getTrackFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplr2avp/Format;->toLogString(Lcom/google/android/exoplr2avp/Format;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", supported="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 271
    invoke-virtual {p0, v5}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 281
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-nez v0, :cond_4

    .line 286
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 287
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplr2avp/Tracks$Group;

    const/4 v5, 0x0

    :goto_3
    if-nez v0, :cond_3

    .line 288
    iget v6, v4, Lcom/google/android/exoplr2avp/Tracks$Group;->length:I

    if-ge v5, v6, :cond_3

    .line 289
    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/Tracks$Group;->isTrackSelected(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 290
    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/Tracks$Group;->getTrackFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/exoplr2avp/Format;->metadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    if-eqz v6, :cond_2

    .line 291
    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/metadata/Metadata;->length()I

    move-result v7

    if-lez v7, :cond_2

    const-string v0, "  Metadata ["

    .line 292
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, v6, v2}, Lcom/google/android/exoplr2avp/util/EventLogger;->printMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, v3}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string p1, "]"

    .line 300
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onUpstreamDiscarded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 1

    .line 459
    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/Format;->toLogString(Lcom/google/android/exoplr2avp/Format;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "upstreamDiscarded"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onVideoCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    const-string/jumbo p3, "videoDecoderInitialized"

    .line 384
    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public onVideoDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "videoDecoderReleased"

    .line 400
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    const-string/jumbo p2, "videoDisabled"

    .line 405
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    const-string/jumbo p2, "videoEnabled"

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onVideoFrameProcessingOffset(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoFrameProcessingOffset(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 0

    .line 390
    invoke-static {p2}, Lcom/google/android/exoplr2avp/Format;->toLogString(Lcom/google/android/exoplr2avp/Format;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "videoInputFormat"

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/video/VideoSize;)V
    .locals 2

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p2, Lcom/google/android/exoplr2avp/video/VideoSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/google/android/exoplr2avp/video/VideoSize;->height:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "videoSize"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;F)V
    .locals 1

    .line 373
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "volume"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/EventLogger;->logd(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
