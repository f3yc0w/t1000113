.class public Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;
.super Ljava/lang/Object;
.source "HardwareVideoEncoderFactory.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoEncoderFactory;


# static fields
.field private static final H264_HW_ENCODE_BLACKLIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INIT_DROP_FREAM_DEFALUT_COUNT:I = 0x2

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_L_MS:I = 0x3a98

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_M_MS:I = 0x4e20

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_N_MS:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "HardwareVideoEncoderFactory"


# instance fields
.field private compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private enableH264HighProfile:Z

.field private enableIntelVp8Encoder:Z

.field private initDropFrameCount:I

.field private sharedContext:Lcom/netease/lava/webrtc/EglBase14$Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "SAMSUNG-SGH-I337"

    const-string v1, "Nexus 7"

    const-string v2, "Nexus 4"

    const-string v3, "P6-C00"

    const-string v4, "HM 2A"

    const-string v5, "XT105"

    const-string v6, "XT109"

    const-string v7, "XT1060"

    const-string v8, "vivo Y67A"

    const-string v9, "PAFM00"

    const-string v10, "PACM00"

    const-string v11, "PBAM00"

    .line 50
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->H264_HW_ENCODE_BLACKLIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/CompatVideoCodecInfo;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 59
    iput v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->initDropFrameCount:I

    .line 83
    instance-of v0, p1, Lcom/netease/lava/webrtc/EglBase14$Context;

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, Lcom/netease/lava/webrtc/EglBase14$Context;

    iput-object p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lcom/netease/lava/webrtc/EglBase14$Context;

    goto :goto_0

    :cond_0
    const-string p1, "HardwareVideoEncoderFactory"

    const-string v0, "No shared EglBase.Context."

    .line 86
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lcom/netease/lava/webrtc/EglBase14$Context;

    :goto_0
    const/4 p1, 0x1

    .line 89
    invoke-static {p1}, Lcom/netease/lava/webrtc/MediaCodecUtils;->cleanCodecInstances(Z)V

    .line 90
    iput-object p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    return-void
.end method

.method public constructor <init>(Lcom/netease/lava/webrtc/EglBase$Context;ZZ)V
    .locals 1

    const/4 v0, 0x2

    .line 77
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;-><init>(Lcom/netease/lava/webrtc/EglBase$Context;ZZI)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/lava/webrtc/EglBase$Context;ZZI)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 59
    iput v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->initDropFrameCount:I

    .line 64
    instance-of v0, p1, Lcom/netease/lava/webrtc/EglBase14$Context;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lcom/netease/lava/webrtc/EglBase14$Context;

    iput-object p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lcom/netease/lava/webrtc/EglBase14$Context;

    goto :goto_0

    :cond_0
    const-string p1, "HardwareVideoEncoderFactory"

    const-string v0, "Ctor sharedContext is  null! "

    .line 67
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lcom/netease/lava/webrtc/EglBase14$Context;

    .line 70
    :goto_0
    iput-boolean p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->enableIntelVp8Encoder:Z

    .line 71
    iput-boolean p3, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->enableH264HighProfile:Z

    .line 72
    iput p4, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->initDropFrameCount:I

    const/4 p1, 0x1

    .line 73
    invoke-static {p1}, Lcom/netease/lava/webrtc/MediaCodecUtils;->cleanCodecInstances(Z)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 95
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;-><init>(Lcom/netease/lava/webrtc/EglBase$Context;ZZI)V

    return-void
.end method

.method private findCodecForType(Lcom/netease/lava/webrtc/VideoCodecType;)Landroid/media/MediaCodecInfo;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 240
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "HardwareVideoEncoderFactory"

    if-ge v0, v1, :cond_2

    .line 243
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "Cannot retrieve encoder codec info"

    .line 245
    invoke-static {v3, v4, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v2, :cond_1

    .line 248
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 252
    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->isSupportedCodec(Landroid/media/MediaCodecInfo;Lcom/netease/lava/webrtc/VideoCodecType;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find encoder for type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private getForcedKeyFrameIntervalMs(Lcom/netease/lava/webrtc/VideoCodecType;Ljava/lang/String;)I
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getForceKeyFrameIntervalMs()I

    move-result v0

    if-lez v0, :cond_0

    .line 396
    iget-object p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getForceKeyFrameIntervalMs()I

    move-result p1

    return p1

    .line 400
    :cond_0
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecType;->VP8:Lcom/netease/lava/webrtc/VideoCodecType;

    if-ne p1, v0, :cond_4

    const-string p1, "OMX.qcom."

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 401
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    const/16 v0, 0x3a98

    if-eq p1, p2, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x16

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 404
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ne p1, p2, :cond_2

    const/16 p1, 0x4e20

    return p1

    .line 406
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p1, p2, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private getKeyFrameIntervalSec(Lcom/netease/lava/webrtc/VideoCodecType;)I
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getKeyFrameIntervalSec()I

    move-result v0

    if-lez v0, :cond_0

    .line 377
    iget-object p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getKeyFrameIntervalSec()I

    move-result p1

    return p1

    .line 381
    :cond_0
    sget-object v0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory$1;->$SwitchMap$com$netease$lava$webrtc$VideoCodecType:[I

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoCodecType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 389
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported VideoCodecType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/16 p1, 0x64

    return p1

    :cond_3
    const/16 p1, 0x14

    return p1
.end method

.method private isEncoderBlackList(Lcom/netease/lava/webrtc/VideoCodecType;)Z
    .locals 1

    .line 415
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecType;->H264:Lcom/netease/lava/webrtc/VideoCodecType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->H264_HW_ENCODE_BLACKLIST:Ljava/util/List;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "HardwareVideoEncoderFactory"

    const-string v0, "The model is in local encode blacklist."

    .line 416
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    .line 423
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->enableH264HighProfile:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 424
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OMX.Exynos."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHardwareSupportedInCurrentSdk(Landroid/media/MediaCodecInfo;Lcom/netease/lava/webrtc/VideoCodecType;)Z
    .locals 3

    .line 292
    invoke-direct {p0, p2}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->isEncoderBlackList(Lcom/netease/lava/webrtc/VideoCodecType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 296
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-string v2, "HardwareVideoEncoderFactory"

    if-lt v0, v1, :cond_1

    .line 297
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result p2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Codec Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isHardwareAccelerated: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 303
    :cond_1
    sget-object v0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory$1;->$SwitchMap$com$netease$lava$webrtc$VideoCodecType:[I

    invoke-virtual {p2}, Lcom/netease/lava/webrtc/VideoCodecType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    goto :goto_0

    .line 308
    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkVp9(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    goto :goto_0

    .line 305
    :cond_3
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkVp8(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    goto :goto_0

    .line 314
    :cond_4
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkH265(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    goto :goto_0

    .line 311
    :cond_5
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkH264(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_6

    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Soc or SDK_INT is not Supported, Codec Name: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "SDK_INT: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-static {v2, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v0
.end method

.method private isHardwareSupportedInCurrentSdkH264(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    .line 344
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OMX.qcom."

    .line 346
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x13

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_0
    const-string v0, "OMX.MTK."

    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_1
    const-string v0, "OMX.IMG.TOPAZ."

    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_2
    const-string v0, "OMX.hisi."

    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_3
    const-string v0, "OMX.k3."

    .line 350
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_4
    const-string v0, "OMX.amlogic."

    .line 351
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_5
    const-string v0, "OMX.rk."

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_6
    const-string v0, "OMX.Exynos."

    .line 354
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x15

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_7
    const-string v0, "OMX.MS."

    .line 356
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_9

    :cond_8
    const/4 p1, 0x1

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHardwareSupportedInCurrentSdkH265(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    .line 361
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OMX.qcom."

    .line 362
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x18

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_0
    const-string v0, "OMX.MTK."

    .line 363
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_1
    const-string v0, "OMX.IMG.TOPAZ."

    .line 364
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_2
    const-string v0, "OMX.hisi."

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_3
    const-string v0, "OMX.k3."

    .line 366
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_4
    const-string v0, "OMX.amlogic."

    .line 367
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_5
    const-string v0, "OMX.rk."

    .line 368
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_6
    const-string v0, "OMX.Exynos."

    .line 369
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_8

    :cond_7
    const-string v0, "OMX.MS."

    .line 370
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_9

    :cond_8
    const/4 p1, 0x1

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHardwareSupportedInCurrentSdkVp8(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    .line 326
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OMX.qcom."

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_2

    :cond_0
    const-string v0, "OMX.Exynos."

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    :cond_1
    const-string v0, "OMX.Intel."

    .line 332
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->enableIntelVp8Encoder:Z

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHardwareSupportedInCurrentSdkVp9(Landroid/media/MediaCodecInfo;)Z
    .locals 1

    .line 337
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OMX.qcom."

    .line 338
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMX.Exynos."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSupportedCodec(Landroid/media/MediaCodecInfo;Lcom/netease/lava/webrtc/VideoCodecType;)Z
    .locals 4

    .line 262
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/MediaCodecUtils;->codecSupportsType(Landroid/media/MediaCodecInfo;Lcom/netease/lava/webrtc/VideoCodecType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/netease/lava/webrtc/MediaCodecUtils;->ENCODER_COLOR_FORMATS:[I

    .line 267
    invoke-virtual {p2}, Lcom/netease/lava/webrtc/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    .line 266
    invoke-static {v0, v2, v3}, Lcom/netease/lava/webrtc/MediaCodecUtils;->selectColorFormat(Ljava/lang/String;[ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 273
    sget-object v0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory$1;->$SwitchMap$com$netease$lava$webrtc$VideoCodecType:[I

    invoke-virtual {p2}, Lcom/netease/lava/webrtc/VideoCodecType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_1

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getForceHardwareEncodeingForH265()I

    move-result v0

    if-ne v0, v2, :cond_4

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getForceHardwareEncodeingForH264()I

    move-result v0

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 285
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdk(Landroid/media/MediaCodecInfo;Lcom/netease/lava/webrtc/VideoCodecType;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method


# virtual methods
.method public createEncoder(Lcom/netease/lava/webrtc/VideoCodecInfo;)Lcom/netease/lava/webrtc/VideoEncoder;
    .locals 13
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_15

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/lava/webrtc/VideoCodecType;->valueOf(Ljava/lang/String;)Lcom/netease/lava/webrtc/VideoCodecType;

    move-result-object v4

    const-string v0, "createEncoder failed for: "

    const-string v2, "HardwareVideoEncoderFactory"

    if-nez v4, :cond_1

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/netease/lava/webrtc/VideoCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 112
    :cond_1
    invoke-direct {p0, v4}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->findCodecForType(Lcom/netease/lava/webrtc/VideoCodecType;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    if-nez v3, :cond_2

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/netease/lava/webrtc/VideoCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 119
    :cond_2
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v4}, Lcom/netease/lava/webrtc/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-virtual {v3, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/lava/webrtc/MediaCodecUtils;->printMetadata(Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 123
    sget-object v6, Lcom/netease/lava/webrtc/MediaCodecUtils;->TEXTURE_COLOR_FORMATS:[I

    .line 124
    invoke-virtual {v3, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v7

    .line 123
    invoke-static {v0, v6, v7}, Lcom/netease/lava/webrtc/MediaCodecUtils;->selectColorFormat(Ljava/lang/String;[ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v6

    .line 125
    sget-object v7, Lcom/netease/lava/webrtc/MediaCodecUtils;->ENCODER_COLOR_FORMATS:[I

    .line 126
    invoke-virtual {v3, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v8

    .line 125
    invoke-static {v0, v7, v8}, Lcom/netease/lava/webrtc/MediaCodecUtils;->selectColorFormat(Ljava/lang/String;[ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v7

    .line 128
    sget-object v8, Lcom/netease/lava/webrtc/VideoCodecType;->H264:Lcom/netease/lava/webrtc/VideoCodecType;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v4, v8, :cond_6

    .line 129
    iget-object v8, p1, Lcom/netease/lava/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    .line 130
    invoke-static {v4, v10}, Lcom/netease/lava/webrtc/MediaCodecUtils;->getCodecProperties(Lcom/netease/lava/webrtc/VideoCodecType;Z)Ljava/util/Map;

    move-result-object v11

    .line 129
    invoke-static {v8, v11}, Lcom/netease/lava/webrtc/H264Utils;->isSameH264Profile(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v8

    .line 131
    iget-object v11, p1, Lcom/netease/lava/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    .line 132
    invoke-static {v4, v9}, Lcom/netease/lava/webrtc/MediaCodecUtils;->getCodecProperties(Lcom/netease/lava/webrtc/VideoCodecType;Z)Ljava/util/Map;

    move-result-object v12

    .line 131
    invoke-static {v11, v12}, Lcom/netease/lava/webrtc/H264Utils;->isSameH264Profile(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v11

    if-nez v8, :cond_4

    if-nez v11, :cond_4

    .line 134
    iget-object v11, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    if-eqz v11, :cond_3

    .line 135
    invoke-virtual {v11}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getForceHardwareEncodeingForH264()I

    move-result v11

    if-eq v11, v10, :cond_4

    :cond_3
    return-object v1

    :cond_4
    if-eqz v8, :cond_6

    .line 138
    invoke-direct {p0, v3}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    if-eqz v8, :cond_5

    .line 139
    invoke-virtual {v8}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getForceHardwareEncodeingForH264()I

    move-result v8

    if-eq v8, v10, :cond_6

    :cond_5
    return-object v1

    .line 144
    :cond_6
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    if-eqz v1, :cond_f

    .line 145
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 147
    sget-object v1, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory$1;->$SwitchMap$com$netease$lava$webrtc$VideoCodecType:[I

    invoke-virtual {v4}, Lcom/netease/lava/webrtc/VideoCodecType;->ordinal()I

    move-result v8

    aget v1, v1, v8

    const-string v8, ", new codecName: "

    const-string v11, "old codecName: "

    if-eq v1, v10, :cond_9

    const/4 v10, 0x2

    if-eq v1, v10, :cond_7

    goto/16 :goto_0

    :cond_7
    if-eqz v0, :cond_b

    .line 156
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    .line 157
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v1

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "h265"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v1

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "hevc"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 158
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    if-eqz v0, :cond_b

    .line 149
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    .line 150
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v1

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "h264"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v1

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "avc"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 151
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_b
    :goto_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getEnSurfaceColorFormat()I

    move-result v1

    if-ltz v1, :cond_c

    .line 167
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getEnSurfaceColorFormat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 170
    :cond_c
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getEnYUVColorFormat()I

    move-result v1

    if-ltz v1, :cond_d

    .line 171
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getEnYUVColorFormat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 174
    :cond_d
    iget-object v1, p1, Lcom/netease/lava/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    if-eqz v1, :cond_f

    .line 175
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getProfile()I

    move-result v1

    if-lez v1, :cond_e

    .line 176
    iget-object v1, p1, Lcom/netease/lava/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getProfile()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "profile-id"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_e
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getLevel()I

    move-result v1

    if-lez v1, :cond_f

    .line 180
    iget-object v1, p1, Lcom/netease/lava/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "level-id"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_f
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoCodecInfo;->getCompatInfo()Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 187
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getKeyFrameIntervalSec()I

    move-result v2

    if-lez v2, :cond_10

    .line 188
    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getKeyFrameIntervalSec()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setKeyFrameIntervalSec(I)V

    .line 190
    :cond_10
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getInitDropFrameCount()I

    move-result v2

    if-lez v2, :cond_11

    .line 191
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getInitDropFrameCount()I

    move-result v2

    iput v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->initDropFrameCount:I

    .line 193
    :cond_11
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getEGLContext()Lcom/netease/lava/webrtc/EglBase$Context;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 194
    instance-of v2, v2, Lcom/netease/lava/webrtc/EglBase14$Context;

    if-eqz v2, :cond_12

    .line 195
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getEGLContext()Lcom/netease/lava/webrtc/EglBase$Context;

    move-result-object v2

    check-cast v2, Lcom/netease/lava/webrtc/EglBase14$Context;

    iput-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lcom/netease/lava/webrtc/EglBase14$Context;

    .line 199
    :cond_12
    invoke-virtual {v1, v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setCodecName(Ljava/lang/String;)V

    if-eqz v6, :cond_13

    .line 200
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_13
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setEnSurfaceColorFormat(I)V

    if-eqz v7, :cond_14

    .line 201
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_14
    invoke-virtual {v1, v9}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setEnYUVColorFormat(I)V

    .line 202
    invoke-direct {p0, v4}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->getKeyFrameIntervalSec(Lcom/netease/lava/webrtc/VideoCodecType;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setKeyFrameIntervalSec(I)V

    .line 203
    invoke-direct {p0, v4, v0}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->getForcedKeyFrameIntervalMs(Lcom/netease/lava/webrtc/VideoCodecType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setForceKeyFrameIntervalMs(I)V

    .line 204
    iget v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->initDropFrameCount:I

    invoke-virtual {v1, v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setInitDropFrameCount(I)V

    .line 206
    new-instance v0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;

    new-instance v6, Lcom/netease/lava/webrtc/MediaCodecWrapperFactoryImpl;

    invoke-direct {v6}, Lcom/netease/lava/webrtc/MediaCodecWrapperFactoryImpl;-><init>()V

    iget-object p1, p1, Lcom/netease/lava/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    iget-object v7, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lcom/netease/lava/webrtc/EglBase14$Context;

    invoke-virtual {v3, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v8

    move-object v2, v0

    move-object v3, v6

    move-object v5, p1

    move-object v6, v7

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;-><init>(Lcom/netease/lava/webrtc/MediaCodecWrapperFactory;Lcom/netease/lava/webrtc/VideoCodecType;Ljava/util/Map;Lcom/netease/lava/webrtc/EglBase14$Context;Lcom/netease/lava/webrtc/CompatVideoCodecInfo;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    return-object v0

    :cond_15
    :goto_2
    return-object v1
.end method

.method public getSupportedCodecs()[Lcom/netease/lava/webrtc/VideoCodecInfo;
    .locals 10

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    new-array v0, v1, [Lcom/netease/lava/webrtc/VideoCodecInfo;

    return-object v0

    .line 216
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/netease/lava/webrtc/VideoCodecType;

    .line 220
    sget-object v4, Lcom/netease/lava/webrtc/VideoCodecType;->VP8:Lcom/netease/lava/webrtc/VideoCodecType;

    aput-object v4, v3, v1

    sget-object v4, Lcom/netease/lava/webrtc/VideoCodecType;->H264:Lcom/netease/lava/webrtc/VideoCodecType;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    sget-object v6, Lcom/netease/lava/webrtc/VideoCodecType;->H265:Lcom/netease/lava/webrtc/VideoCodecType;

    aput-object v6, v3, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v6, v3, v4

    .line 221
    invoke-direct {p0, v6}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->findCodecForType(Lcom/netease/lava/webrtc/VideoCodecType;)Landroid/media/MediaCodecInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 223
    invoke-virtual {v6}, Lcom/netease/lava/webrtc/VideoCodecType;->name()Ljava/lang/String;

    move-result-object v8

    .line 226
    sget-object v9, Lcom/netease/lava/webrtc/VideoCodecType;->H264:Lcom/netease/lava/webrtc/VideoCodecType;

    if-ne v6, v9, :cond_1

    invoke-direct {p0, v7}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;->isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 227
    new-instance v7, Lcom/netease/lava/webrtc/VideoCodecInfo;

    .line 228
    invoke-static {v6, v5}, Lcom/netease/lava/webrtc/MediaCodecUtils;->getCodecProperties(Lcom/netease/lava/webrtc/VideoCodecType;Z)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/netease/lava/webrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 227
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_1
    new-instance v7, Lcom/netease/lava/webrtc/VideoCodecInfo;

    .line 232
    invoke-static {v6, v1}, Lcom/netease/lava/webrtc/MediaCodecUtils;->getCodecProperties(Lcom/netease/lava/webrtc/VideoCodecType;Z)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lcom/netease/lava/webrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 231
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netease/lava/webrtc/VideoCodecInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/webrtc/VideoCodecInfo;

    return-object v0
.end method
