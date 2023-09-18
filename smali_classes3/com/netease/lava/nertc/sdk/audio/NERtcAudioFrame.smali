.class public abstract Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrame;
.super Ljava/lang/Object;
.source "NERtcAudioFrame.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getData()Ljava/nio/ByteBuffer;
.end method

.method public abstract getFormat()Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFormat;
.end method
