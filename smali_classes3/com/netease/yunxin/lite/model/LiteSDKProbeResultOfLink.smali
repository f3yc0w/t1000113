.class public Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;
.super Ljava/lang/Object;
.source "LiteSDKProbeResultOfLink.java"


# instance fields
.field public availableBandwidth:J

.field public jitter:J

.field public packetLossRate:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;->packetLossRate:J

    .line 10
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;->jitter:J

    .line 11
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;->availableBandwidth:J

    return-void
.end method


# virtual methods
.method public setAvailableBandwidth(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "availableBandwidth"
        }
    .end annotation

    .line 30
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;->availableBandwidth:J

    return-void
.end method

.method public setJitter(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jitter"
        }
    .end annotation

    .line 25
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;->jitter:J

    return-void
.end method

.method public setPacketLossRate(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetLossRate"
        }
    .end annotation

    .line 20
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeResultOfLink;->packetLossRate:J

    return-void
.end method
