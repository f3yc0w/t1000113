.class public Lcom/netease/lava/nertc/impl/wrapper/NERtcPreDecodeObserverWrapper;
.super Ljava/lang/Object;
.source "NERtcPreDecodeObserverWrapper.java"

# interfaces
.implements Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeObserver;


# instance fields
.field private final observer:Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeObserver;


# direct methods
.method public constructor <init>(Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeObserver;)V
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
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/wrapper/NERtcPreDecodeObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeObserver;

    return-void
.end method

.method private adoptAudioFrame(Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;)Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;

    invoke-direct {v0}, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;-><init>()V

    .line 26
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->mediaType:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 27
    iput v1, v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->mediaType:I

    goto :goto_0

    .line 28
    :cond_0
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->mediaType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 29
    iput v2, v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->mediaType:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    .line 31
    iput v1, v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->mediaType:I

    .line 32
    :goto_0
    iget-wide v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->uid:J

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->uid:J

    .line 33
    iget-wide v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->timestampMs:J

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->timestampMs:J

    .line 34
    iget-object v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->data:Ljava/nio/ByteBuffer;

    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->data:Ljava/nio/ByteBuffer;

    .line 35
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->length:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->length:I

    .line 36
    iget-object v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->codec:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->codec:Ljava/lang/String;

    .line 37
    iget-boolean v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->isMainStream:Z

    iput-boolean v1, v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->isMainStream:Z

    .line 38
    iget-object v1, v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->videoInfo:Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeVideoInfo;

    iget-boolean v2, p1, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->isKeyFrame:Z

    iput-boolean v2, v1, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeVideoInfo;->isKeyFrame:Z

    .line 39
    iget-object v1, v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->videoInfo:Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeVideoInfo;

    iget v2, p1, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->height:I

    iput v2, v1, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeVideoInfo;->height:I

    .line 40
    iget-object v1, v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->videoInfo:Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeVideoInfo;

    iget v2, p1, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->width:I

    iput v2, v1, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeVideoInfo;->width:I

    .line 41
    iget-object v1, v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->audioInfo:Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeAudioInfo;

    iget-wide v2, p1, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->perTimeMs:J

    iput-wide v2, v1, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeAudioInfo;->perTimeMs:J

    .line 42
    iget-object v1, v0, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;->audioInfo:Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeAudioInfo;

    iget p1, p1, Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;->toc:I

    iput p1, v1, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo$PreDecodeAudioInfo;->toc:I

    return-object v0
.end method


# virtual methods
.method public onFrame(Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preDecodeFrame"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/wrapper/NERtcPreDecodeObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeObserver;

    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/wrapper/NERtcPreDecodeObserverWrapper;->adoptAudioFrame(Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeFrameInfo;)Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeObserver;->onFrame(Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeFrameInfo;)V

    return-void
.end method
