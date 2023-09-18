.class Lcom/netease/yunxin/lite/util/CodecHelper;
.super Ljava/lang/Object;
.source "CodecHelper.java"


# static fields
.field private static final HW_DECODE_BYTE_MODE_BLACKLIST:[Ljava/lang/String;

.field private static final HW_DECODE_TEXTURE_MODE_BLACKLIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CodecHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PDVM00"

    const-string v1, "DUB-LX1"

    .line 22
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/yunxin/lite/util/CodecHelper;->HW_DECODE_BYTE_MODE_BLACKLIST:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 24
    sput-object v0, Lcom/netease/yunxin/lite/util/CodecHelper;->HW_DECODE_TEXTURE_MODE_BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDecoderFactory(Lcom/netease/lava/webrtc/EglBase$Context;Ljava/lang/String;IILjava/lang/String;ZIII)Lcom/netease/lava/webrtc/VideoDecoderFactory;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eglBaseContext",
            "codecName",
            "decoderColorFormat",
            "initDropFrameCount",
            "videoCodecTypeName",
            "mtkVideoTalk",
            "textureDelayTime",
            "forceH264Decoder",
            "forceH265Decoder"
        }
    .end annotation

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    .line 77
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p4, v1

    .line 80
    :cond_1
    new-instance v0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;-><init>()V

    .line 81
    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setCodecName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p2}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setDecoderColorFormat(I)V

    .line 83
    invoke-virtual {v0, p3}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setInitDropFrameCount(I)V

    .line 84
    invoke-virtual {v0, p4}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setVideoCodecTypeName(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p6}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setTextureDelayTimeMs(I)V

    .line 87
    invoke-virtual {v0, p7}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setForceHardwareDecodeingForH264(I)V

    .line 88
    invoke-virtual {v0, p8}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setForceHardwareDecodeingForH265(I)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HW decoder compat:{codecName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", color:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dropFrame:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", codecType:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isMtkVideoTalk:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", textureDelayTime:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",forceH264Decoder:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",forceH265Decoder:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CodecHelper"

    invoke-static {p2, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance p1, Lcom/netease/lava/webrtc/HardwareVideoDecoderFactory;

    invoke-direct {p1, p0, v0}, Lcom/netease/lava/webrtc/HardwareVideoDecoderFactory;-><init>(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/CompatVideoCodecInfo;)V

    return-object p1
.end method

.method private static createEncoderFactory(Lcom/netease/lava/webrtc/EglBase$Context;Ljava/lang/String;IIIIIIIIII)Lcom/netease/lava/webrtc/VideoEncoderFactory;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "eglBaseContext",
            "codecName",
            "yuvColorFormat",
            "surfaceColorFormat",
            "Profile",
            "level",
            "initDropFrameCount",
            "keyFrameIntervalSec",
            "forceKeyFrameIntervalMs",
            "brAdjustSecond",
            "forceH264Encoder",
            "forceH265Encoder"
        }
    .end annotation

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 41
    :cond_0
    new-instance v0, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;-><init>()V

    .line 42
    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setCodecName(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, p2}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setEnYUVColorFormat(I)V

    .line 44
    invoke-virtual {v0, p3}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setEnSurfaceColorFormat(I)V

    .line 45
    invoke-virtual {v0, p4}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setProfile(I)V

    .line 46
    invoke-virtual {v0, p5}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setLevel(I)V

    .line 47
    invoke-virtual {v0, p6}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setInitDropFrameCount(I)V

    .line 48
    invoke-virtual {v0, p7}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setKeyFrameIntervalSec(I)V

    .line 49
    invoke-virtual {v0, p8}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setForceKeyFrameIntervalMs(I)V

    .line 50
    invoke-virtual {v0, p9}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setBrAdjustSecond(I)V

    .line 51
    invoke-virtual {v0, p10}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setForceHardwareEncodeingForH264(I)V

    .line 52
    invoke-virtual {v0, p11}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setForceHardwareEncodeingForH265(I)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HW encoder compat:{codecName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", yuvColor:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",surfaceColor:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",profile:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",level:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",dropFrame:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",keyFrameInterval:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",forceKeyFrameInterval:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",brAdjustSecond:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",forceH264Encoder:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",forceH265Encoder:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CodecHelper"

    invoke-static {p2, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance p1, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;

    invoke-direct {p1, p0, v0}, Lcom/netease/lava/webrtc/HardwareVideoEncoderFactory;-><init>(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/CompatVideoCodecInfo;)V

    return-object p1
.end method

.method private static hasH264HwDecoder()Z
    .locals 1

    .line 105
    invoke-static {}, Lcom/netease/yunxin/lite/video/VideoHwHelper;->hasH264HwDecoder()Z

    move-result v0

    return v0
.end method

.method private static hasH264HwEncoder()Z
    .locals 1

    .line 100
    invoke-static {}, Lcom/netease/yunxin/lite/video/VideoHwHelper;->hasH264HwEncoder()Z

    move-result v0

    return v0
.end method

.method private static isHwDecodeByteModeBlackList(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation

    .line 110
    sget-object v0, Lcom/netease/yunxin/lite/util/CodecHelper;->HW_DECODE_BYTE_MODE_BLACKLIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in the local HW_DECODE_BYTE_MODE_BLACKLIST!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CodecHelper"

    invoke-static {v0, p0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isHwDecodeTextureModeBlackList(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/netease/yunxin/lite/util/CodecHelper;->HW_DECODE_TEXTURE_MODE_BLACKLIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in the local HW_DECODE_TEXTURE_MODE_BLACKLIST!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CodecHelper"

    invoke-static {v0, p0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
