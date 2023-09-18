.class public Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;
.super Ljava/lang/Object;
.source "DefaultAnalyticsCollector.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;
    }
.end annotation


# instance fields
.field private final clock:Lcom/google/android/exoplr2avp/util/Clock;

.field private final eventTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

.field private isSeeking:Z

.field private listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/util/ListenerSet<",
            "Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPeriodQueueTracker:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

.field private final period:Lcom/google/android/exoplr2avp/Timeline$Period;

.field private player:Lcom/google/android/exoplr2avp/Player;

.field private final window:Lcom/google/android/exoplr2avp/Timeline$Window;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/util/Clock;)V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/util/Clock;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    .line 90
    new-instance v0, Lcom/google/android/exoplr2avp/util/ListenerSet;

    invoke-static {}, Lcom/google/android/exoplr2avp/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$8krvOitAbx-tKQUCYHSF741Emgg;->INSTANCE:Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$8krvOitAbx-tKQUCYHSF741Emgg;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;-><init>(Landroid/os/Looper;Lcom/google/android/exoplr2avp/util/Clock;Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    .line 91
    new-instance p1, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 92
    new-instance v0, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 93
    new-instance v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;-><init>(Lcom/google/android/exoplr2avp/Timeline$Period;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 94
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    return-void
.end method

.method private generateEventTime(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;
    .locals 3

    .line 951
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 956
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getMediaPeriodIdTimeline(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 964
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    .line 965
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplr2avp/Timeline;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1

    .line 958
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Player;->getCurrentMediaItemIndex()I

    move-result p1

    .line 959
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Player;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v1

    .line 960
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    .line 962
    :cond_4
    sget-object v1, Lcom/google/android/exoplr2avp/Timeline;->EMPTY:Lcom/google/android/exoplr2avp/Timeline;

    .line 961
    :goto_3
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplr2avp/Timeline;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1
.end method

.method private generateLoadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getLoadingMediaPeriod()Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateMediaPeriodEventTime(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;
    .locals 3

    .line 982
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 984
    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 985
    invoke-virtual {v2, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getMediaPeriodIdTimeline(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 987
    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    goto :goto_1

    .line 988
    :cond_1
    sget-object v0, Lcom/google/android/exoplr2avp/Timeline;->EMPTY:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplr2avp/Timeline;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    :goto_1
    return-object p1

    .line 990
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {p2}, Lcom/google/android/exoplr2avp/Player;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p2

    .line 991
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    .line 993
    :cond_4
    sget-object p2, Lcom/google/android/exoplr2avp/Timeline;->EMPTY:Lcom/google/android/exoplr2avp/Timeline;

    :goto_3
    const/4 v0, 0x0

    .line 992
    invoke-virtual {p0, p2, p1, v0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplr2avp/Timeline;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1
.end method

.method private generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getPlayingMediaPeriod()Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getReadingMediaPeriod()Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method private getEventTimeForErrorEvent(Lcom/google/android/exoplr2avp/PlaybackException;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 997
    instance-of v0, p1, Lcom/google/android/exoplr2avp/ExoPlaybackException;

    if-eqz v0, :cond_0

    .line 998
    check-cast p1, Lcom/google/android/exoplr2avp/ExoPlaybackException;

    .line 999
    iget-object v0, p1, Lcom/google/android/exoplr2avp/ExoPlaybackException;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaPeriodId;

    if-eqz v0, :cond_0

    .line 1000
    new-instance v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/ExoPlaybackException;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaPeriodId;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;-><init>(Lcom/google/android/exoplr2avp/source/MediaPeriodId;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1

    .line 1003
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$TyMXAwr_KEAO65zYPKF1lAUhwBk(Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->releaseInternal()V

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/util/FlagSet;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$notifySeekStarted$2(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 146
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onSeekStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onAudioAttributesChanged$56(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/audio/AudioAttributes;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 744
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onAudioAttributesChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$onAudioCodecError$11(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 254
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onAudioCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onAudioDecoderInitialized$4(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 7

    .line 174
    invoke-interface {p6, p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    .line 175
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/4 v3, 0x1

    move-object v1, p6

    move-object v2, p0

    move-object v4, p1

    .line 177
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic lambda$onAudioDecoderReleased$8(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 223
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onAudioDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAudioDisabled$9(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 1

    .line 234
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onAudioDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    const/4 v0, 0x1

    .line 235
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDecoderDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onAudioEnabled$3(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 1

    .line 160
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onAudioEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    const/4 v0, 0x1

    .line 161
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDecoderEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onAudioInputFormatChanged$5(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 191
    invoke-interface {p3, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V

    .line 192
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    const/4 p2, 0x1

    .line 193
    invoke-interface {p3, p0, p2, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDecoderInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method static synthetic lambda$onAudioPositionAdvancing$6(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;JLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 203
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onAudioPositionAdvancing(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onAudioSessionIdChanged$55(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 735
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onAudioSessionIdChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onAudioSinkError$10(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 245
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onAudioSinkError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onAudioUnderrun$7(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 214
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onAudioUnderrun(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method static synthetic lambda$onAvailableCommandsChanged$33(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$Commands;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 518
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$onBandwidthSample$61(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 812
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onBandwidthEstimate(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method static synthetic lambda$onCues$51(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/util/List;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 702
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onCues$52(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/text/CueGroup;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 709
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/text/CueGroup;)V

    return-void
.end method

.method static synthetic lambda$onDeviceInfoChanged$59(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/DeviceInfo;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 780
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDeviceInfoChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$onDeviceVolumeChanged$60(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IZLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 789
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDeviceVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method static synthetic lambda$onDownstreamFormatChanged$28(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 455
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDownstreamFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onDrmKeysLoaded$63(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 837
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDrmKeysLoaded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDrmKeysRemoved$66(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 865
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDrmKeysRemoved(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDrmKeysRestored$65(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 856
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDrmKeysRestored(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDrmSessionAcquired$62(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 826
    invoke-interface {p2, p0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    .line 827
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onDrmSessionManagerError$64(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 847
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDrmSessionManagerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onDrmSessionReleased$67(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 874
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDrmSessionReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDroppedFrames$16(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 319
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDroppedVideoFrames(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJ)V

    return-void
.end method

.method static synthetic lambda$onIsLoadingChanged$32(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 507
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    .line 508
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onIsLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onIsPlayingChanged$38(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 567
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onIsPlayingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onLoadCanceled$25(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 419
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onLoadCanceled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onLoadCompleted$24(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 406
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onLoadCompleted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onLoadError$26(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;ZLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 6

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 435
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onLoadError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method static synthetic lambda$onLoadStarted$23(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 393
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onLoadStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onMaxSeekToPreviousPositionChanged$47(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;JLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 667
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onMediaItemTransition$30(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaItem;ILcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 481
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onMediaItemTransition(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$onMediaMetadataChanged$48(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 676
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onMediaMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$onMetadata$50(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/metadata/Metadata;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 694
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onMetadata(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/metadata/Metadata;)V

    return-void
.end method

.method static synthetic lambda$onPlayWhenReadyChanged$36(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZILcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 547
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onPlayWhenReadyChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method static synthetic lambda$onPlaybackParametersChanged$44(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackParameters;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 639
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$onPlaybackStateChanged$35(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 537
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onPlaybackStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onPlaybackSuppressionReasonChanged$37(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 558
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onPlayerError$41(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 594
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onPlayerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$onPlayerErrorChanged$42(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 603
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onPlayerErrorChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$onPlayerStateChanged$34(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZILcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 528
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onPlayerStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method static synthetic lambda$onPlaylistMetadataChanged$49(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 685
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onPlaylistMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$onPositionDiscontinuity$43(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 628
    invoke-interface {p4, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onPositionDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    .line 629
    invoke-interface {p4, p0, p2, p3, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onPositionDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;I)V

    return-void
.end method

.method static synthetic lambda$onRenderedFirstFrame$19(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;JLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 350
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onRenderedFirstFrame(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic lambda$onRepeatModeChanged$39(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 576
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onRepeatModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onSeekBackIncrementChanged$45(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;JLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 648
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onSeekBackIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onSeekForwardIncrementChanged$46(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;JLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 657
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onSeekForwardIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onSeekProcessed$53(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 717
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onSeekProcessed(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onShuffleModeEnabledChanged$40(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 585
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onShuffleModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onSkipSilenceEnabledChanged$54(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 726
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onSkipSilenceEnabledChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onSurfaceSizeChanged$22(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IILcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 378
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onSurfaceSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method static synthetic lambda$onTimelineChanged$29(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 471
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onTimelineChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onTrackSelectionParametersChanged$58(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 771
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$onTracksChanged$31(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Tracks;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 490
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onTracksChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Tracks;)V

    return-void
.end method

.method static synthetic lambda$onUpstreamDiscarded$27(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 445
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onUpstreamDiscarded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onVideoCodecError$21(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 369
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onVideoCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onVideoDecoderInitialized$14(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 7

    .line 290
    invoke-interface {p6, p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    .line 291
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/4 v3, 0x2

    move-object v1, p6

    move-object v2, p0

    move-object v4, p1

    .line 293
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic lambda$onVideoDecoderReleased$17(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 328
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onVideoDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onVideoDisabled$18(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 1

    .line 339
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onVideoDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    const/4 v0, 0x2

    .line 340
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDecoderDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onVideoEnabled$13(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 1

    .line 276
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onVideoEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    const/4 v0, 0x2

    .line 277
    invoke-interface {p2, p0, v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDecoderEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onVideoFrameProcessingOffset$20(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;JILcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 360
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onVideoFrameProcessingOffset(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method static synthetic lambda$onVideoInputFormatChanged$15(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 307
    invoke-interface {p3, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V

    .line 308
    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    const/4 p2, 0x2

    .line 309
    invoke-interface {p3, p0, p2, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onDecoderInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method static synthetic lambda$onVideoSizeChanged$57(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/video/VideoSize;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 6

    .line 755
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/video/VideoSize;)V

    .line 756
    iget v2, p1, Lcom/google/android/exoplr2avp/video/VideoSize;->width:I

    iget v3, p1, Lcom/google/android/exoplr2avp/video/VideoSize;->height:I

    iget v4, p1, Lcom/google/android/exoplr2avp/video/VideoSize;->unappliedRotationDegrees:I

    iget v5, p1, Lcom/google/android/exoplr2avp/video/VideoSize;->pixelWidthHeightRatio:F

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method static synthetic lambda$onVolumeChanged$12(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;FLcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 263
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method

.method static synthetic lambda$releaseInternal$68(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 0

    .line 946
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onPlayerReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method private releaseInternal()V
    .locals 3

    .line 942
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 943
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Ppxo-777VYe904B7SoKYwSbOvfY;

    invoke-direct {v1, v0}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Ppxo-777VYe904B7SoKYwSbOvfY;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    const/16 v2, 0x404

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 947
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ListenerSet;->release()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 1

    .line 100
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method protected final generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getCurrentPlayerMediaPeriod()Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateEventTime(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method protected final generateEventTime(Lcom/google/android/exoplr2avp/Timeline;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;
    .locals 17
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    .line 902
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    .line 906
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 908
    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    .line 909
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Player;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/exoplr2avp/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    .line 910
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Player;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v5, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-wide/16 v9, 0x0

    if-eqz v6, :cond_3

    .line 911
    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v1, :cond_2

    .line 912
    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    .line 914
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Player;->getCurrentAdGroupIndex()I

    move-result v1

    iget v11, v6, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v1, v11, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    .line 915
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Player;->getCurrentAdIndexInAdGroup()I

    move-result v1

    iget v11, v6, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v1, v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_6

    .line 917
    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Player;->getCurrentPosition()J

    move-result-wide v9

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    .line 919
    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Player;->getContentPosition()J

    move-result-wide v7

    goto :goto_4

    .line 924
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v4, v5, v1}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v9

    :cond_6
    :goto_3
    move-wide v7, v9

    .line 927
    :goto_4
    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getCurrentPlayerMediaPeriod()Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object v11

    .line 928
    new-instance v16, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    .line 934
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Player;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v9

    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    .line 935
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Player;->getCurrentMediaItemIndex()I

    move-result v10

    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    .line 937
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Player;->getCurrentPosition()J

    move-result-wide v12

    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    .line 938
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Player;->getTotalBufferedDuration()J

    move-result-wide v14

    move-object/from16 v1, v16

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;-><init>(JLcom/google/android/exoplr2avp/Timeline;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplr2avp/Timeline;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJ)V

    return-object v16
.end method

.method public synthetic lambda$setPlayer$1$DefaultAnalyticsCollector(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/util/FlagSet;)V
    .locals 2

    .line 120
    new-instance v0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    invoke-direct {v0, p3, v1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;-><init>(Lcom/google/android/exoplr2avp/util/FlagSet;Landroid/util/SparseArray;)V

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;->onEvents(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;)V

    return-void
.end method

.method public final notifySeekStarted()V
    .locals 3

    .line 142
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    const/4 v1, 0x1

    .line 144
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    const/4 v1, -0x1

    .line 145
    new-instance v2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$CJveCDt6-VOGuMzPg8dPzmgUwfM;

    invoke-direct {v2, v0}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$CJveCDt6-VOGuMzPg8dPzmgUwfM;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public final onAudioAttributesChanged(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
    .locals 2

    .line 740
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 741
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$hu9yZ2DH6rdZlydkhFsXwEJlErI;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$hu9yZ2DH6rdZlydkhFsXwEJlErI;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    const/16 p1, 0x14

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioCodecError(Ljava/lang/Exception;)V
    .locals 2

    .line 250
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 251
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Hb3vPt7fiEBpNLKojthO0J22iPU;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Hb3vPt7fiEBpNLKojthO0J22iPU;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p1, 0x405

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 169
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 170
    new-instance v8, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xV6o_or0hD50tn6IjqD8YXMNtRk;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xV6o_or0hD50tn6IjqD8YXMNtRk;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f0

    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 2

    .line 219
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$SizWMU-sVlfS2w4C0JAU8D-4_1k;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$SizWMU-sVlfS2w4C0JAU8D-4_1k;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    const/16 p1, 0x3f4

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioDisabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 2

    .line 229
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 230
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$CqnGGgn8lfCbKQhzDJFm968Fy5c;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$CqnGGgn8lfCbKQhzDJFm968Fy5c;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    const/16 p1, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioEnabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 2

    .line 155
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$wx0ccfXf9vvlR7hDv-MiRo0CsrY;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$wx0ccfXf9vvlR7hDv-MiRo0CsrY;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    const/16 p1, 0x3ef

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 2

    .line 186
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 187
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$TwwU3Q2ppOYK24U-s1tCdDKxE1Q;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$TwwU3Q2ppOYK24U-s1tCdDKxE1Q;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    const/16 p1, 0x3f1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioPositionAdvancing(J)V
    .locals 2

    .line 199
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Kdzg1nAsbXdqeu9NNXomNZxJyLY;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Kdzg1nAsbXdqeu9NNXomNZxJyLY;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    const/16 p1, 0x3f2

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioSessionIdChanged(I)V
    .locals 2

    .line 731
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 732
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$yBqgT7aVU__Vbvyt2wn-dRvKkao;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$yBqgT7aVU__Vbvyt2wn-dRvKkao;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    const/16 p1, 0x15

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioSinkError(Ljava/lang/Exception;)V
    .locals 2

    .line 241
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$arHQvcWb0R02HC1_2CzAthoXnEQ;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$arHQvcWb0R02HC1_2CzAthoXnEQ;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p1, 0x3f6

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioUnderrun(IJJ)V
    .locals 9

    .line 209
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 210
    new-instance v8, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Xqbo6wYSyOzzoIeTJ4lvxTMt4-I;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Xqbo6wYSyOzzoIeTJ4lvxTMt4-I;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V

    const/16 p1, 0x3f3

    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/Player$Commands;)V
    .locals 2

    .line 514
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 515
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$jsKvQrW723s-HU5gPYNrlVCtZP0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$jsKvQrW723s-HU5gPYNrlVCtZP0;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$Commands;)V

    const/16 p1, 0xd

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .locals 9

    .line 807
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateLoadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 808
    new-instance v8, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$BlLKwr0go466iLx9NXMLOePN9aU;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$BlLKwr0go466iLx9NXMLOePN9aU;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V

    const/16 p1, 0x3ee

    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onCues(Lcom/google/android/exoplr2avp/text/CueGroup;)V
    .locals 2

    .line 707
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 708
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$bzgJ5PbnAv2skGGz6mEQgGryrQQ;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$bzgJ5PbnAv2skGGz6mEQgGryrQQ;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/text/CueGroup;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 700
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 701
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$JInw2-MM76ljJZMyTA37MWOXvqk;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$JInw2-MM76ljJZMyTA37MWOXvqk;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onDeviceInfoChanged(Lcom/google/android/exoplr2avp/DeviceInfo;)V
    .locals 2

    .line 776
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 777
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$ZHZgi7eWg6fzpJsC7Sq72K30xxY;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$ZHZgi7eWg6fzpJsC7Sq72K30xxY;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/DeviceInfo;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 2

    .line 785
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 786
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$G-f2AIcwCD_hNPXI34zCYrRD_J4;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$G-f2AIcwCD_hNPXI34zCYrRD_J4;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IZ)V

    const/16 p1, 0x1e

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDownstreamFormatChanged(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 452
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$o8E2tZFy2oIuP0mm5IokM8ck2GI;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$o8E2tZFy2oIuP0mm5IokM8ck2GI;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    const/16 p3, 0x3ec

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmKeysLoaded(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 833
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 834
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$HtFANtENsWL2ULXxoCLuqV2_Ekc;

    invoke-direct {p2, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$HtFANtENsWL2ULXxoCLuqV2_Ekc;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x3ff

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmKeysRemoved(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 861
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 862
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$bwf4NchoBKJsN_Le9xWyGs3GYu4;

    invoke-direct {p2, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$bwf4NchoBKJsN_Le9xWyGs3GYu4;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x402

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmKeysRestored(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 852
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 853
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$ocgJsKkqdkFgLROA69UO571vzYs;

    invoke-direct {p2, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$ocgJsKkqdkFgLROA69UO571vzYs;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x401

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public final onDrmSessionAcquired(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;I)V
    .locals 0

    .line 821
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 822
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$EhQryHSrBGrnZznMtoeo5WzKEkM;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$EhQryHSrBGrnZznMtoeo5WzKEkM;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    const/16 p3, 0x3fe

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmSessionManagerError(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 0

    .line 843
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 844
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$iDClHT25PxiD8nxi6S3ADDc7d3s;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$iDClHT25PxiD8nxi6S3ADDc7d3s;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p3, 0x400

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmSessionReleased(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 870
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 871
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$tLZ2_3WoBjbyuzRZAUzi7l4rKms;

    invoke-direct {p2, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$tLZ2_3WoBjbyuzRZAUzi7l4rKms;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x403

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .locals 2

    .line 315
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 316
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$eCPZEryncjv9prC6JwTzerQghaU;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$eCPZEryncjv9prC6JwTzerQghaU;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJ)V

    const/16 p1, 0x3fa

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onEvents(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/Player$Events;)V
    .locals 0

    return-void
.end method

.method public final onIsLoadingChanged(Z)V
    .locals 2

    .line 502
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 503
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$0YYYw5RDJ-WY63fXmpdASqWT8CY;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$0YYYw5RDJ-WY63fXmpdASqWT8CY;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 2

    .line 563
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 564
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$VE2AV9i8sDgJlDZDRq-x2L4wMzE;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$VE2AV9i8sDgJlDZDRq-x2L4wMzE;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    const/4 p1, 0x7

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadCanceled(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 416
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$tLO7FvXlz5eQyOqStA_ynXSsrkQ;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$tLO7FvXlz5eQyOqStA_ynXSsrkQ;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    const/16 p3, 0x3ea

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadCompleted(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 403
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$JH4QDF2Jvdgtl1LPRO9c4iLNcJw;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$JH4QDF2Jvdgtl1LPRO9c4iLNcJw;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    const/16 p3, 0x3e9

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadError(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 6

    .line 430
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 431
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$3lJDpR0BPu5fXtTVouNalaQCmCA;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$3lJDpR0BPu5fXtTVouNalaQCmCA;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadStarted(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    .line 389
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 390
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$9IVZ5tveWrTvcCrIGgD5DuBZEqk;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$9IVZ5tveWrTvcCrIGgD5DuBZEqk;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .locals 2

    .line 662
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 663
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$n0KTRdrlPQXv0bL2nMkPa6eBiRA;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$n0KTRdrlPQXv0bL2nMkPa6eBiRA;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    const/16 p1, 0x12

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onMediaItemTransition(Lcom/google/android/exoplr2avp/MediaItem;I)V
    .locals 2

    .line 477
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 478
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Ev8MIcCTOUa5lYwdHYF3Xr4R0t8;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Ev8MIcCTOUa5lYwdHYF3Xr4R0t8;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaItem;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onMediaMetadataChanged(Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 2

    .line 672
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 673
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$SgrS5tWbb-0lwyaXo3Ohsrr6NQc;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$SgrS5tWbb-0lwyaXo3Ohsrr6NQc;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    const/16 p1, 0xe

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;)V
    .locals 2

    .line 690
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 691
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$lCgIA2jermml-baMv1drHuvEBq0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$lCgIA2jermml-baMv1drHuvEBq0;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/metadata/Metadata;)V

    const/16 p1, 0x1c

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .locals 2

    .line 543
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 544
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xHdmVWPESAn-0jAz59RqJHimZmo;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xHdmVWPESAn-0jAz59RqJHimZmo;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 2

    .line 635
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 636
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$kIIkWywWifUdid5d3a3Oi_bHKDU;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$kIIkWywWifUdid5d3a3Oi_bHKDU;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    const/16 p1, 0xc

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 2

    .line 533
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 534
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$l8WvRsp40DjPUri-RyX-MV6J_po;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$l8WvRsp40DjPUri-RyX-MV6J_po;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlaybackSuppressionReasonChanged(I)V
    .locals 2

    .line 553
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 554
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Rd07u5tcK_1mONSq3J2BgTMUIQU;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Rd07u5tcK_1mONSq3J2BgTMUIQU;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlayerError(Lcom/google/android/exoplr2avp/PlaybackException;)V
    .locals 2

    .line 590
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->getEventTimeForErrorEvent(Lcom/google/android/exoplr2avp/PlaybackException;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 591
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$oIGjcCc4Mgahz_Z16qfZGpWzxUo;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$oIGjcCc4Mgahz_Z16qfZGpWzxUo;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onPlayerErrorChanged(Lcom/google/android/exoplr2avp/PlaybackException;)V
    .locals 2

    .line 599
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->getEventTimeForErrorEvent(Lcom/google/android/exoplr2avp/PlaybackException;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 600
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Uoax3miQd8TyN32-5LX2o2OyfEU;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Uoax3miQd8TyN32-5LX2o2OyfEU;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 2

    .line 524
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 525
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$YrmtnDDJtteCCViK9lVw2xQWUoY;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$YrmtnDDJtteCCViK9lVw2xQWUoY;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onPlaylistMetadataChanged(Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 2

    .line 681
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 682
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$G2oNKNy_XplPYKUUEss-2y8Tumg;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$G2oNKNy_XplPYKUUEss-2y8Tumg;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    const/16 p1, 0xf

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public final onPositionDiscontinuity(Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/Player;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onPositionDiscontinuity(Lcom/google/android/exoplr2avp/Player;)V

    .line 623
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    const/16 v1, 0xb

    .line 624
    new-instance v2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xHe59SYvuCimLt_PSJhrUSKGp1s;

    invoke-direct {v2, v0, p3, p1, p2}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$xHe59SYvuCimLt_PSJhrUSKGp1s;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public final onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 2

    .line 346
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 347
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$zp2eLkJ9kXLwAlPL_whkf2yjv6o;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$zp2eLkJ9kXLwAlPL_whkf2yjv6o;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    const/16 p1, 0x1a

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 2

    .line 572
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 573
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$1YnZJeZLw-1Dsf44j6394gKIHC8;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$1YnZJeZLw-1Dsf44j6394gKIHC8;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .locals 2

    .line 644
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 645
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$zx2aDZfPZ2U6j8UgLwTFISe6o_g;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$zx2aDZfPZ2U6j8UgLwTFISe6o_g;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    const/16 p1, 0x10

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .locals 2

    .line 653
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 654
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$OqIRic9tXG6w2sLMJsFet3QM86E;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$OqIRic9tXG6w2sLMJsFet3QM86E;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    const/16 p1, 0x11

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onSeekProcessed()V
    .locals 3

    .line 715
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 716
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$vh1M4uk9_L4NS1-P_rL-Uqpku6E;

    invoke-direct {v1, v0}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$vh1M4uk9_L4NS1-P_rL-Uqpku6E;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 2

    .line 581
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 582
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$SlkQq0vpZ9_iVm7xq6bjcm09x0s;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$SlkQq0vpZ9_iVm7xq6bjcm09x0s;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onSkipSilenceEnabledChanged(Z)V
    .locals 2

    .line 722
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 723
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$oTTJviZ0whAbZ8Nor-r-EiFYjPI;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$oTTJviZ0whAbZ8Nor-r-EiFYjPI;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    const/16 p1, 0x17

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .locals 2

    .line 374
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 375
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$bYKsGBPPW00fbbhOxMWrmHDHKV4;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$bYKsGBPPW00fbbhOxMWrmHDHKV4;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;II)V

    const/16 p1, 0x18

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onTimelineChanged(Lcom/google/android/exoplr2avp/Timeline;I)V
    .locals 1

    .line 466
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/Player;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onTimelineChanged(Lcom/google/android/exoplr2avp/Player;)V

    .line 467
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 468
    new-instance v0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$ldClPOXhuyCQJvWXpdKU1-tu_OQ;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$ldClPOXhuyCQJvWXpdKU1-tu_OQ;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 2

    .line 767
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 768
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$RQEFZQ1jZCumMRKursxjBlWiJ1I;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$RQEFZQ1jZCumMRKursxjBlWiJ1I;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    const/16 p1, 0x13

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplr2avp/Tracks;)V
    .locals 2

    .line 486
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 487
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$BNfut97XbU4LVOK5y7IJVeVT0ro;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$BNfut97XbU4LVOK5y7IJVeVT0ro;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Tracks;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onUpstreamDiscarded(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 442
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$eC9M61J_GK1T6e3o8TIMxSFMEWw;

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$eC9M61J_GK1T6e3o8TIMxSFMEWw;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    const/16 p3, 0x3ed

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoCodecError(Ljava/lang/Exception;)V
    .locals 2

    .line 365
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 366
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$5yWDcgl5PduPOCGjFzveMnWtF9s;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$5yWDcgl5PduPOCGjFzveMnWtF9s;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p1, 0x406

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 285
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 286
    new-instance v8, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Kj73G0AJnIEhh8GnO45I8ui17eY;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$Kj73G0AJnIEhh8GnO45I8ui17eY;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f8

    invoke-virtual {p0, v7, p1, v8}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 2

    .line 324
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 325
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$rQJdk24m702uR4BwQpwNAQK9NsQ;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$rQJdk24m702uR4BwQpwNAQK9NsQ;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    const/16 p1, 0x3fb

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoDisabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 2

    .line 334
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 335
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$fKJXFnrX8322XDeHq-8bRQvQA_g;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$fKJXFnrX8322XDeHq-8bRQvQA_g;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    const/16 p1, 0x3fc

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoEnabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 2

    .line 271
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 272
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$RbjwayOVxfh9txyly8VA2859pH8;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$RbjwayOVxfh9txyly8VA2859pH8;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    const/16 p1, 0x3f7

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoFrameProcessingOffset(JI)V
    .locals 2

    .line 355
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 356
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$c8X_6VgSxAiLsnkOYE37I7989Dc;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$c8X_6VgSxAiLsnkOYE37I7989Dc;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;JI)V

    const/16 p1, 0x3fd

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 2

    .line 302
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 303
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$T2iZHepgfXRZqvI1U3tHpC04BlQ;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$T2iZHepgfXRZqvI1U3tHpC04BlQ;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    const/16 p1, 0x3f9

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoSizeChanged(Lcom/google/android/exoplr2avp/video/VideoSize;)V
    .locals 2

    .line 750
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 751
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$UGvTBNBX8vfzaU6IxVej-HIcS0A;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$UGvTBNBX8vfzaU6IxVej-HIcS0A;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/video/VideoSize;)V

    const/16 p1, 0x19

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVolumeChanged(F)V
    .locals 2

    .line 259
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$VmT5D6y_Rmmbb_Gxg994lTkssi0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$VmT5D6y_Rmmbb_Gxg994lTkssi0;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;F)V

    const/16 p1, 0x16

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$TyMXAwr_KEAO65zYPKF1lAUhwBk;

    invoke-direct {v1, p0}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$TyMXAwr_KEAO65zYPKF1lAUhwBk;-><init>(Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method protected final sendEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;",
            "I",
            "Lcom/google/android/exoplr2avp/util/ListenerSet$Event<",
            "Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;",
            ">;)V"
        }
    .end annotation

    .line 889
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 890
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplr2avp/Player;Landroid/os/Looper;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->access$000(Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 114
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/Player;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/google/android/exoplr2avp/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$XF1uE5VAUYUEJecZRCMge5CnapA;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$XF1uE5VAUYUEJecZRCMge5CnapA;-><init>(Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;Lcom/google/android/exoplr2avp/Player;)V

    .line 117
    invoke-virtual {v0, p2, v1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->copy(Landroid/os/Looper;Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)Lcom/google/android/exoplr2avp/util/ListenerSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    return-void
.end method

.method public final updateMediaPeriodQueueInfo(Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;",
            ")V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/Player;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onQueueUpdated(Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Player;)V

    return-void
.end method
