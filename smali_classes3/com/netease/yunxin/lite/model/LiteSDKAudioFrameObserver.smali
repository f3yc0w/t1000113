.class public interface abstract Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameObserver;
.super Ljava/lang/Object;
.source "LiteSDKAudioFrameObserver.java"


# virtual methods
.method public abstract OnPlaybackSubstreamFrameBeforeMixing(JLcom/netease/yunxin/lite/model/LiteSDKAudioFrame;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userID",
            "frame",
            "roomID"
        }
    .end annotation
.end method

.method public abstract OnRecordedSubstreamFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation
.end method

.method public abstract onMixedAudioFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation
.end method

.method public abstract onPlaybackAudioFrameBeforeMixing(JLcom/netease/yunxin/lite/model/LiteSDKAudioFrame;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userID",
            "frame",
            "roomID"
        }
    .end annotation
.end method

.method public abstract onPlayoutFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation
.end method

.method public abstract onRecordedFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation
.end method
