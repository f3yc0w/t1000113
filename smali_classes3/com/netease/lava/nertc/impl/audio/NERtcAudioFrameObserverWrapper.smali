.class public Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;
.super Ljava/lang/Object;
.source "NERtcAudioFrameObserverWrapper.java"

# interfaces
.implements Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFormatAdapter;,
        Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFrameAdapter;
    }
.end annotation


# instance fields
.field private final observer:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;


# direct methods
.method public constructor <init>(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;

    return-void
.end method

.method static synthetic access$200(Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFormat;
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->wrapLiteFormat(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFormat;

    move-result-object p0

    return-object p0
.end method

.method private adoptAudioFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFrameAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFrameAdapter;-><init>(Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$1;)V

    return-object v0
.end method

.method private wrapLiteFormat(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFormat;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFormatAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFormatAdapter;-><init>(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$1;)V

    return-object v0
.end method


# virtual methods
.method public OnPlaybackSubstreamFrameBeforeMixing(JLcom/netease/yunxin/lite/model/LiteSDKAudioFrame;J)V
    .locals 6
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

    .line 48
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;

    invoke-direct {p0, p3}, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->adoptAudioFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;

    move-result-object v3

    move-wide v1, p1

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;->onPlaybackSubStreamAudioFrameBeforeMixingWithUserID(JLcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;J)V

    return-void
.end method

.method public OnRecordedSubstreamFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;

    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->adoptAudioFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;->onRecordSubStreamAudioFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;)V

    return-void
.end method

.method public onMixedAudioFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;

    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->adoptAudioFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;->onMixedAudioFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;)V

    return-void
.end method

.method public onPlaybackAudioFrameBeforeMixing(JLcom/netease/yunxin/lite/model/LiteSDKAudioFrame;J)V
    .locals 8
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

    .line 37
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;

    invoke-direct {p0, p3}, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->adoptAudioFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;->onPlaybackAudioFrameBeforeMixingWithUserID(JLcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;)V

    .line 38
    iget-object v2, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;

    invoke-direct {p0, p3}, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->adoptAudioFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;

    move-result-object v5

    move-wide v3, p1

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;->onPlaybackAudioFrameBeforeMixingWithUserID(JLcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;J)V

    return-void
.end method

.method public onPlayoutFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;

    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->adoptAudioFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;->onPlaybackFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;)V

    return-void
.end method

.method public onRecordedFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;

    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;->adoptAudioFrame(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;->onRecordFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;)V

    return-void
.end method
