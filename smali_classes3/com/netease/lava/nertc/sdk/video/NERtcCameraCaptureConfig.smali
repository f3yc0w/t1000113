.class public Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;
.super Ljava/lang/Object;
.source "NERtcCameraCaptureConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;
    }
.end annotation


# instance fields
.field public captureHeight:I

.field public captureWidth:I

.field public extraRotation:Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;->captureWidth:I

    .line 61
    iput v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;->captureHeight:I

    .line 128
    sget-object v0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;->CAPTURE_EXTRA_ROTATION_DEFAULT:Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;->extraRotation:Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NERtcCameraCaptureConfig{, capture_width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;->captureWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", capture_height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;->captureHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extraRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;->extraRotation:Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    .line 139
    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
