.class public Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig;
.super Ljava/lang/Object;
.source "NERtcEncodeConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;,
        Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;
    }
.end annotation


# instance fields
.field public bitrate:I

.field public frameRate:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

.field public minBitrate:I

.field public minFramerate:I

.field public videoProfile:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 173
    iput v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig;->videoProfile:I

    .line 191
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;->FRAME_RATE_FPS_DEFAULT:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig;->frameRate:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig;->minFramerate:I

    .line 264
    iput v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig;->bitrate:I

    .line 274
    iput v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig;->minBitrate:I

    return-void
.end method
