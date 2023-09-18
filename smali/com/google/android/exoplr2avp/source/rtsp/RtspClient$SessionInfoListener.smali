.class public interface abstract Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$SessionInfoListener;
.super Ljava/lang/Object;
.source "RtspClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionInfoListener"
.end annotation


# virtual methods
.method public abstract onSessionTimelineRequestFailed(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onSessionTimelineUpdated(Lcom/google/android/exoplr2avp/source/rtsp/RtspSessionTiming;Lcom/google/common/collect/ImmutableList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/rtsp/RtspSessionTiming;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaTrack;",
            ">;)V"
        }
    .end annotation
.end method
