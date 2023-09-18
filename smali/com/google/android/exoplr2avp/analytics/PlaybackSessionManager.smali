.class public interface abstract Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;
.super Ljava/lang/Object;
.source "PlaybackSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager$Listener;
    }
.end annotation


# virtual methods
.method public abstract belongsToSession(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z
.end method

.method public abstract finishAllSessions(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract getActiveSessionId()Ljava/lang/String;
.end method

.method public abstract getSessionForMediaPeriodId(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Ljava/lang/String;
.end method

.method public abstract setListener(Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager$Listener;)V
.end method

.method public abstract updateSessions(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract updateSessionsWithDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract updateSessionsWithTimelineChange(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
.end method
