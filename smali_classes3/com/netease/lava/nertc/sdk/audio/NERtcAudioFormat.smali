.class public abstract Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFormat;
.super Ljava/lang/Object;
.source "NERtcAudioFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBytesPerSample()I
.end method

.method public abstract getChannels()I
.end method

.method public abstract getSampleRate()I
.end method

.method public abstract getSamplesPerChannel()I
.end method

.method public abstract getType()Lcom/netease/lava/nertc/sdk/audio/NERtcAudioType;
.end method
