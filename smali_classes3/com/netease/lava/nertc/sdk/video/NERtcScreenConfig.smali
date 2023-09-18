.class public Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;
.super Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig;
.source "NERtcScreenConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;
    }
.end annotation


# instance fields
.field public contentPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

.field public degradationPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig;-><init>()V

    .line 55
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;->CONTENT_PREFER_MOTION:Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->contentPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

    .line 65
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;->DEGRADATION_MAINTAIN_QUALITY:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->degradationPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->videoProfile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frameRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->frameRate:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " minFramerate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->minFramerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bitrate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " minBitrate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->minBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " contentPrefer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->contentPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " degradationPrefer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->degradationPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
