.class public interface abstract Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;
.super Ljava/lang/Object;
.source "NERtcAudioFrameObserver.java"


# virtual methods
.method public abstract onMixedAudioFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioFrame"
        }
    .end annotation
.end method

.method public abstract onPlaybackAudioFrameBeforeMixingWithUserID(JLcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userID",
            "audioFrame"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onPlaybackAudioFrameBeforeMixingWithUserID(JLcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userID",
            "audioFrame",
            "channelId"
        }
    .end annotation
.end method

.method public abstract onPlaybackFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioFrame"
        }
    .end annotation
.end method

.method public abstract onPlaybackSubStreamAudioFrameBeforeMixingWithUserID(JLcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userID",
            "audioFrame",
            "channelId"
        }
    .end annotation
.end method

.method public abstract onRecordFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioFrame"
        }
    .end annotation
.end method

.method public abstract onRecordSubStreamAudioFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioFrame"
        }
    .end annotation
.end method
