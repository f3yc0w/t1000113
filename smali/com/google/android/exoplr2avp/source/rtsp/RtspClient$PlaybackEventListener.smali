.class public interface abstract Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$PlaybackEventListener;
.super Ljava/lang/Object;
.source "RtspClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaybackEventListener"
.end annotation


# virtual methods
.method public abstract onPlaybackError(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;)V
.end method

.method public abstract onPlaybackStarted(JLcom/google/common/collect/ImmutableList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/source/rtsp/RtspTrackTiming;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRtspSetupCompleted()V
.end method
