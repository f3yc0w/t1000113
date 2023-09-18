.class public Lcom/netease/lava/nertc/sdk/audio/NERtcAudioExternalFrame;
.super Ljava/lang/Object;
.source "NERtcAudioExternalFrame.java"


# instance fields
.field public audioData:[B

.field public numberOfChannels:I

.field public sampleRate:I

.field public samplesPerChannel:I

.field public syncTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 65
    iput-wide v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioExternalFrame;->syncTimestamp:J

    return-void
.end method
