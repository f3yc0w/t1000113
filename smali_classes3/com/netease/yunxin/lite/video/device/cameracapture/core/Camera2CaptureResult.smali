.class final Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2CaptureResult;
.super Ljava/lang/Object;
.source "Camera2CaptureResult.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Camera2CaptureResult"


# instance fields
.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureResult"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2CaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method


# virtual methods
.method public getAeState()Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2CaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    return-object v0

    .line 113
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined ae state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2CaptureResult"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    return-object v0

    .line 120
    :cond_1
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->FLASH_REQUIRED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    return-object v0

    .line 124
    :cond_2
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->LOCKED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    return-object v0

    .line 122
    :cond_3
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->CONVERGED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    return-object v0

    .line 118
    :cond_4
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->SEARCHING:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    return-object v0

    .line 115
    :cond_5
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;->INACTIVE:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AeState;

    return-object v0
.end method

.method public getAfMode()Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfMode;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2CaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfMode;->UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfMode;

    return-object v0

    .line 54
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined af mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2CaptureResult"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfMode;->UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfMode;

    return-object v0

    .line 63
    :cond_1
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfMode;->ON_CONTINUOUS_AUTO:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfMode;

    return-object v0

    .line 60
    :cond_2
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfMode;->ON_MANUAL_AUTO:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfMode;

    return-object v0

    .line 57
    :cond_3
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfMode;->OFF:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfMode;

    return-object v0
.end method

.method public getAfState()Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2CaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    return-object v0

    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined af state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2CaptureResult"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    return-object v0

    .line 92
    :pswitch_0
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->LOCKED_NOT_FOCUSED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    return-object v0

    .line 90
    :pswitch_1
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->LOCKED_FOCUSED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    return-object v0

    .line 94
    :pswitch_2
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->PASSIVE_FOCUSED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    return-object v0

    .line 88
    :pswitch_3
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->SCANNING:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    return-object v0

    .line 84
    :pswitch_4
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;->INACTIVE:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AfState;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getAwbState()Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2CaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;->UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    return-object v0

    .line 143
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined awb state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2CaptureResult"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;->UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    return-object v0

    .line 151
    :cond_1
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;->LOCKED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    return-object v0

    .line 149
    :cond_2
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;->CONVERGED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    return-object v0

    .line 147
    :cond_3
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;->METERING:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    return-object v0

    .line 145
    :cond_4
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;->INACTIVE:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$AwbState;

    return-object v0
.end method

.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2CaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object v0
.end method

.method public getFlashState()Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$FlashState;
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2CaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$FlashState;->UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$FlashState;

    return-object v0

    .line 170
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined flash state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2CaptureResult"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$FlashState;->UNKNOWN:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$FlashState;

    return-object v0

    .line 178
    :cond_1
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$FlashState;->FIRED:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$FlashState;

    return-object v0

    .line 175
    :cond_2
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$FlashState;->READY:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$FlashState;

    return-object v0

    .line 173
    :cond_3
    sget-object v0, Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$FlashState;->NONE:Lcom/netease/lava/video/device/cameracapture/core/CameraCaptureMetaData$FlashState;

    return-object v0
.end method

.method public setCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureResult"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2CaptureResult;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method
