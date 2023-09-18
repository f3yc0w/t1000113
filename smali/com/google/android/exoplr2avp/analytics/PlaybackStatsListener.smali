.class public final Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;
.super Ljava/lang/Object;
.source "PlaybackStatsListener.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;
.implements Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;,
        Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$Callback;
    }
.end annotation


# instance fields
.field private audioFormat:Lcom/google/android/exoplr2avp/Format;

.field private bandwidthBytes:J

.field private bandwidthTimeMs:J

.field private final callback:Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$Callback;

.field private discontinuityFromPositionMs:J

.field private discontinuityFromSession:Ljava/lang/String;

.field private discontinuityReason:I

.field private droppedFrames:I

.field private finishedPlaybackStats:Lcom/google/android/exoplr2avp/analytics/PlaybackStats;

.field private final keepHistory:Z

.field private nonFatalException:Ljava/lang/Exception;

.field private final period:Lcom/google/android/exoplr2avp/Timeline$Period;

.field private final playbackStatsTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

.field private final sessionStartEventTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;",
            ">;"
        }
    .end annotation
.end field

.field private videoFormat:Lcom/google/android/exoplr2avp/Format;

.field private videoSize:Lcom/google/android/exoplr2avp/video/VideoSize;


# direct methods
.method public constructor <init>(ZLcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$Callback;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->callback:Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$Callback;

    .line 103
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->keepHistory:Z

    .line 104
    new-instance p1, Lcom/google/android/exoplr2avp/analytics/DefaultPlaybackSessionManager;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/analytics/DefaultPlaybackSessionManager;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    .line 105
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 106
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->sessionStartEventTimes:Ljava/util/Map;

    .line 107
    sget-object p2, Lcom/google/android/exoplr2avp/analytics/PlaybackStats;->EMPTY:Lcom/google/android/exoplr2avp/analytics/PlaybackStats;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->finishedPlaybackStats:Lcom/google/android/exoplr2avp/analytics/PlaybackStats;

    .line 108
    new-instance p2, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {p2}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 109
    sget-object p2, Lcom/google/android/exoplr2avp/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplr2avp/video/VideoSize;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->videoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

    .line 110
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->setListener(Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager$Listener;)V

    return-void
.end method

.method private findBestEventTime(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;Ljava/lang/String;)Landroid/util/Pair;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    .line 302
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 303
    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->get(I)I

    move-result v6

    .line 304
    invoke-virtual {v1, v6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->getEventTime(I)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v6

    .line 305
    iget-object v7, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    invoke-interface {v7, v6, v2}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v7

    if-eqz v5, :cond_1

    if-eqz v7, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    if-ne v7, v4, :cond_2

    .line 306
    iget-wide v8, v6, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v10, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    cmp-long v12, v8, v10

    if-lez v12, :cond_2

    :cond_1
    move-object v5, v6

    move v4, v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    :cond_3
    invoke-static {v5}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v4, :cond_5

    .line 316
    iget-object v1, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    if-eqz v1, :cond_5

    iget-object v1, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 318
    iget-object v1, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v3, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 321
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v1

    iget-object v3, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 322
    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v3

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v1, v3, v6

    if-nez v1, :cond_4

    .line 324
    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    iget-wide v3, v1, Lcom/google/android/exoplr2avp/Timeline$Period;->durationUs:J

    .line 326
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v6

    add-long/2addr v3, v6

    .line 327
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iget-wide v7, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-object v9, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget v10, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->windowIndex:I

    new-instance v11, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v6, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v12, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide v12, v12, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v14, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v14, v14, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-direct {v11, v6, v12, v13, v14}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 336
    invoke-static {v3, v4}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v12

    iget-object v14, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget v15, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    iget-object v3, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-object v4, v3

    iget-wide v2, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    iget-wide v5, v5, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    move-wide/from16 v19, v5

    move-object v6, v1

    move-object/from16 v16, v4

    move-wide/from16 v17, v2

    invoke-direct/range {v6 .. v20}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;-><init>(JLcom/google/android/exoplr2avp/Timeline;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplr2avp/Timeline;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJ)V

    .line 342
    iget-object v2, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    move-object/from16 v3, p2

    invoke-interface {v2, v1, v3}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v4

    move-object v5, v1

    .line 344
    :cond_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private hasEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z
    .locals 1

    .line 348
    invoke-virtual {p1, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    .line 349
    invoke-virtual {p1, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->getEventTime(I)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->belongsToSession(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private maybeAddSessions(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;)V
    .locals 4

    const/4 v0, 0x0

    .line 286
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 287
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->get(I)I

    move-result v1

    .line 288
    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->getEventTime(I)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    if-nez v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    invoke-interface {v1, v2}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->updateSessionsWithTimelineChange(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    goto :goto_1

    :cond_0
    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    .line 292
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    iget v3, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->discontinuityReason:I

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->updateSessionsWithDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    goto :goto_1

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    invoke-interface {v1, v2}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCombinedPlaybackStats()Lcom/google/android/exoplr2avp/analytics/PlaybackStats;
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/exoplr2avp/analytics/PlaybackStats;

    .line 123
    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->finishedPlaybackStats:Lcom/google/android/exoplr2avp/analytics/PlaybackStats;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 125
    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    add-int/lit8 v5, v1, 0x1

    .line 126
    invoke-virtual {v4, v3}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;->build(Z)Lcom/google/android/exoplr2avp/analytics/PlaybackStats;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v5

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/analytics/PlaybackStats;->merge([Lcom/google/android/exoplr2avp/analytics/PlaybackStats;)Lcom/google/android/exoplr2avp/analytics/PlaybackStats;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackStats()Lcom/google/android/exoplr2avp/analytics/PlaybackStats;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->getActiveSessionId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;->build(Z)Lcom/google/android/exoplr2avp/analytics/PlaybackStats;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public onAdPlaybackStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onInterruptedByAd()V

    return-void
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onAudioDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAudioDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onAudioPositionAdvancing(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioPositionAdvancing(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onAudioSinkError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioSinkError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioUnderrun(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioUnderrun(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$Commands;)V

    return-void
.end method

.method public onBandwidthEstimate(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    int-to-long p1, p2

    .line 221
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->bandwidthTimeMs:J

    .line 222
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->bandwidthBytes:J

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

    .line 227
    iget p1, p2, Lcom/google/android/exoplr2avp/source/MediaLoadData;->trackType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget p1, p2, Lcom/google/android/exoplr2avp/source/MediaLoadData;->trackType:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget p1, p2, Lcom/google/android/exoplr2avp/source/MediaLoadData;->trackType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 231
    iget-object p1, p2, Lcom/google/android/exoplr2avp/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplr2avp/Format;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->audioFormat:Lcom/google/android/exoplr2avp/Format;

    goto :goto_1

    .line 229
    :cond_1
    :goto_0
    iget-object p1, p2, Lcom/google/android/exoplr2avp/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplr2avp/Format;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->videoFormat:Lcom/google/android/exoplr2avp/Format;

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic onDrmKeysLoaded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmKeysLoaded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRemoved(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRemoved(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRestored(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRestored(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onDrmSessionManagerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    .line 215
    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->nonFatalException:Ljava/lang/Exception;

    return-void
.end method

.method public synthetic onDrmSessionReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmSessionReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onDroppedVideoFrames(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0

    .line 200
    iput p2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->droppedFrames:I

    return-void
.end method

.method public onEvents(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 242
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->maybeAddSessions(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;)V

    .line 246
    iget-object v2, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 247
    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->findBestEventTime(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 248
    iget-object v6, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    const/16 v6, 0xb

    .line 249
    invoke-direct {v0, v1, v3, v6}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v13

    const/16 v6, 0x3fa

    .line 250
    invoke-direct {v0, v1, v3, v6}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v6

    const/16 v8, 0x3f3

    .line 251
    invoke-direct {v0, v1, v3, v8}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v15

    const/16 v8, 0x3e8

    .line 252
    invoke-direct {v0, v1, v3, v8}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v16

    const/16 v8, 0xa

    .line 253
    invoke-direct {v0, v1, v3, v8}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v8

    const/16 v9, 0x3eb

    .line 255
    invoke-direct {v0, v1, v3, v9}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_2

    const/16 v9, 0x400

    .line 256
    invoke-direct {v0, v1, v3, v9}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    const/16 v11, 0x3ee

    .line 257
    invoke-direct {v0, v1, v3, v11}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v11

    const/16 v12, 0x3ec

    .line 258
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v12

    const/16 v14, 0x19

    .line 259
    invoke-direct {v0, v1, v3, v14}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->hasEvent(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v14

    .line 260
    iget-object v10, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    .line 263
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 264
    iget-object v4, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->discontinuityFromPositionMs:J

    goto :goto_3

    :cond_3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    if-eqz v6, :cond_4

    .line 266
    iget v6, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->droppedFrames:I

    move/from16 v17, v6

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    :goto_4
    if-eqz v8, :cond_5

    .line 269
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplr2avp/Player;->getPlayerError()Lcom/google/android/exoplr2avp/PlaybackException;

    move-result-object v6

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    if-eqz v9, :cond_6

    .line 270
    iget-object v8, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->nonFatalException:Ljava/lang/Exception;

    move-object/from16 v19, v8

    goto :goto_6

    :cond_6
    const/16 v19, 0x0

    :goto_6
    if-eqz v11, :cond_7

    .line 271
    iget-wide v8, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->bandwidthTimeMs:J

    move-wide/from16 v22, v8

    goto :goto_7

    :cond_7
    const-wide/16 v22, 0x0

    :goto_7
    if-eqz v11, :cond_8

    .line 272
    iget-wide v8, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->bandwidthBytes:J

    move-wide/from16 v24, v8

    goto :goto_8

    :cond_8
    const-wide/16 v24, 0x0

    :goto_8
    if-eqz v12, :cond_9

    .line 273
    iget-object v8, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->videoFormat:Lcom/google/android/exoplr2avp/Format;

    move-object/from16 v26, v8

    goto :goto_9

    :cond_9
    const/16 v26, 0x0

    :goto_9
    if-eqz v12, :cond_a

    .line 274
    iget-object v8, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->audioFormat:Lcom/google/android/exoplr2avp/Format;

    move-object/from16 v27, v8

    goto :goto_a

    :cond_a
    const/16 v27, 0x0

    :goto_a
    if-eqz v14, :cond_b

    .line 275
    iget-object v8, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->videoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

    move-object/from16 v28, v8

    goto :goto_b

    :cond_b
    const/16 v28, 0x0

    :goto_b
    move-object/from16 v8, p1

    move-object v9, v10

    move v10, v5

    move-wide v11, v3

    move/from16 v14, v17

    move-object/from16 v17, v6

    move-object/from16 v18, v19

    move-wide/from16 v19, v22

    move-wide/from16 v21, v24

    move-object/from16 v23, v26

    move-object/from16 v24, v27

    move-object/from16 v25, v28

    .line 260
    invoke-virtual/range {v7 .. v25}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onEvents(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZJZIZZLcom/google/android/exoplr2avp/PlaybackException;Ljava/lang/Exception;JJLcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/video/VideoSize;)V

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x0

    .line 277
    iput-object v3, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->videoFormat:Lcom/google/android/exoplr2avp/Format;

    .line 278
    iput-object v3, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->audioFormat:Lcom/google/android/exoplr2avp/Format;

    .line 279
    iput-object v3, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    const/16 v2, 0x404

    .line 280
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 281
    iget-object v3, v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->getEventTime(I)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->finishAllSessions(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    :cond_d
    return-void
.end method

.method public synthetic onIsLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onLoadCanceled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onLoadCanceled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadCompleted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onLoadCompleted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 210
    iput-object p4, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->nonFatalException:Ljava/lang/Exception;

    return-void
.end method

.method public synthetic onLoadStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onLoadStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

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

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onMetadata(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/metadata/Metadata;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlayerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V

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
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->getActiveSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    .line 193
    iget-wide p1, p2, Lcom/google/android/exoplr2avp/Player$PositionInfo;->positionMs:J

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->discontinuityFromPositionMs:J

    .line 195
    :cond_0
    iput p4, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->discontinuityReason:I

    return-void
.end method

.method public synthetic onRenderedFirstFrame(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

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

.method public onSessionActive(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onForeground()V

    return-void
.end method

.method public onSessionCreated(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 2

    .line 150
    new-instance v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->keepHistory:Z

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;-><init>(ZLcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    .line 151
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->sessionStartEventTimes:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSessionFinished(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    .line 170
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->sessionStartEventTimes:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    .line 172
    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 173
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->discontinuityFromPositionMs:J

    goto :goto_0

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 175
    :goto_0
    invoke-virtual {v0, p1, p3, v2, v3}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onFinished(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZJ)V

    const/4 p1, 0x1

    .line 176
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$PlaybackStatsTracker;->build(Z)Lcom/google/android/exoplr2avp/analytics/PlaybackStats;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Lcom/google/android/exoplr2avp/analytics/PlaybackStats;

    const/4 v0, 0x0

    .line 177
    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->finishedPlaybackStats:Lcom/google/android/exoplr2avp/analytics/PlaybackStats;

    aput-object v2, p3, v0

    aput-object p2, p3, p1

    invoke-static {p3}, Lcom/google/android/exoplr2avp/analytics/PlaybackStats;->merge([Lcom/google/android/exoplr2avp/analytics/PlaybackStats;)Lcom/google/android/exoplr2avp/analytics/PlaybackStats;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->finishedPlaybackStats:Lcom/google/android/exoplr2avp/analytics/PlaybackStats;

    .line 178
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->callback:Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$Callback;

    if-eqz p1, :cond_1

    .line 179
    invoke-interface {p1, v1, p2}, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener$Callback;->onPlaybackStatsReady(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/analytics/PlaybackStats;)V

    :cond_1
    return-void
.end method

.method public synthetic onShuffleModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onShuffleModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Tracks;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Tracks;)V

    return-void
.end method

.method public synthetic onUpstreamDiscarded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onUpstreamDiscarded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onVideoCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onVideoDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onVideoDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

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

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/video/VideoSize;)V
    .locals 0

    .line 237
    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/PlaybackStatsListener;->videoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

    return-void
.end method

.method public synthetic onVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method
