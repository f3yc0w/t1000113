.class public Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;
.super Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig;
.source "NERtcVideoConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;,
        Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;
    }
.end annotation


# instance fields
.field public colorFormat:I

.field public degradationPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

.field public frontCamera:Z

.field public height:I

.field public mirrorMode:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

.field public orientationMode:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

.field public videoCropMode:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->width:I

    .line 151
    iput v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->height:I

    const/4 v1, 0x1

    .line 161
    iput-boolean v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->frontCamera:Z

    .line 171
    iput v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->colorFormat:I

    .line 181
    sget-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;->DEGRADATION_DEFAULT:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    iput-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->degradationPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    .line 199
    iput v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->videoCropMode:I

    .line 210
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;->VIDEO_MIRROR_MODE_AUTO:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->mirrorMode:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    .line 221
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;->VIDEO_OUTPUT_ORIENTATION_MODE_ADAPTATIVE:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->orientationMode:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NERtcVideoConfig{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->videoProfile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frontCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->frontCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", colorFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->colorFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", degradationPrefer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->degradationPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    .line 239
    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoCropMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->videoCropMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mirror="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->mirrorMode:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    .line 241
    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->orientationMode:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    .line 242
    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
