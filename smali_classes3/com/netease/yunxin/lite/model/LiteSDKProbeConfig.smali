.class public Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;
.super Ljava/lang/Object;
.source "LiteSDKProbeConfig.java"


# instance fields
.field public downLink:Z

.field public expectedDownLinkBitrate:J

.field public expectedUpLinkBitrate:J

.field public upLink:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;->upLink:Z

    .line 9
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;->downLink:Z

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;->expectedUpLinkBitrate:J

    .line 11
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;->expectedDownLinkBitrate:J

    return-void
.end method


# virtual methods
.method public getExpectedDownLinkBitrate()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;->expectedDownLinkBitrate:J

    return-wide v0
.end method

.method public getExpectedUpLinkBitrate()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;->expectedUpLinkBitrate:J

    return-wide v0
.end method

.method public isDownLink()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;->downLink:Z

    return v0
.end method

.method public isUpLink()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;->upLink:Z

    return v0
.end method
