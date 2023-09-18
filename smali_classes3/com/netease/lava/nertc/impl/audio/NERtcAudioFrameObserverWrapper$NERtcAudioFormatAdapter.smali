.class Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFormatAdapter;
.super Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFormat;
.source "NERtcAudioFrameObserverWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NERtcAudioFormatAdapter"
.end annotation


# instance fields
.field private final core:Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;


# direct methods
.method private constructor <init>(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "core"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFormat;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFormatAdapter;->core:Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$1;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFormatAdapter;-><init>(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;)V

    return-void
.end method


# virtual methods
.method public getBytesPerSample()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFormatAdapter;->core:Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;

    iget v0, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;->bytesPerSample:I

    return v0
.end method

.method public getChannels()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFormatAdapter;->core:Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;

    iget v0, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;->channels:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFormatAdapter;->core:Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;

    iget v0, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;->sampleRate:I

    return v0
.end method

.method public getSamplesPerChannel()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFormatAdapter;->core:Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;

    iget v0, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;->samplesPerChannel:I

    return v0
.end method

.method public getType()Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/audio/NERtcAudioFrameObserverWrapper$NERtcAudioFormatAdapter;->core:Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;

    iget v0, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;->type:I

    invoke-static {v0}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;->find(I)Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;

    move-result-object v0

    return-object v0
.end method
