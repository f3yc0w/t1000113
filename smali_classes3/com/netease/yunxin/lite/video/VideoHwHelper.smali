.class public Lcom/netease/yunxin/lite/video/VideoHwHelper;
.super Ljava/lang/Object;
.source "VideoHwHelper.java"


# static fields
.field private static final H264_HW_DECODE_BLACKLIST:[Ljava/lang/String;

.field private static final H264_HW_ENCODE_BLACKLIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "VideoHwHelper"

.field private static final supportedH264HwCodecPrefixes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

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

    .line 15
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/yunxin/lite/video/VideoHwHelper;->H264_HW_ENCODE_BLACKLIST:[Ljava/lang/String;

    const-string v1, "SAMSUNG-SGH-I337"

    const-string v2, "Nexus 7"

    const-string v3, "Nexus 4"

    const-string v4, "P6-C00"

    const-string v5, "HM 2A"

    const-string v6, "XT105"

    const-string v7, "XT109"

    const-string v8, "XT1060"

    const-string v9, "vivo Y67A"

    const-string v10, "PAFM00"

    const-string v11, "PACM00"

    const-string v12, "COL-AL10"

    const-string v13, "OPPO R9m"

    const-string v14, "PAR-AL00"

    const-string v15, "MHA-AL00"

    const-string v16, "PBAM00"

    const-string v17, "LYA-AL00"

    .line 18
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/yunxin/lite/video/VideoHwHelper;->H264_HW_DECODE_BLACKLIST:[Ljava/lang/String;

    const-string v1, "OMX.qcom."

    const-string v2, "OMX.Exynos."

    const-string v3, "OMX.MTK."

    const-string v4, "OMX.IMG.TOPAZ."

    const-string v5, "OMX.hisi."

    const-string v6, "OMX.k3."

    const-string v7, "OMX.amlogic."

    const-string v8, "OMX.rk."

    const-string v9, "OMX.MS."

    .line 21
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/yunxin/lite/video/VideoHwHelper;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findCodecForType(Lcom/netease/yunxin/lite/video/VideoHwCodecType;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "encode"
        }
    .end annotation

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    return v1

    .line 67
    :cond_0
    invoke-static {}, Lcom/netease/yunxin/lite/video/VideoHwHelper;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    const-string v2, "VideoHwHelper"

    if-nez v0, :cond_1

    const-string p0, "Cannot retrieve codec info."

    .line 71
    invoke-static {v2, p0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 75
    :cond_1
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_8

    aget-object v5, v0, v4

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    .line 81
    invoke-static {v5}, Lcom/netease/yunxin/lite/video/VideoHwHelper;->isEncoder(Landroid/media/MediaCodecInfo;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_3
    if-nez p1, :cond_4

    invoke-static {v5}, Lcom/netease/yunxin/lite/video/VideoHwHelper;->isEncoder(Landroid/media/MediaCodecInfo;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 85
    :cond_4
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_7

    aget-object v9, v6, v8

    .line 86
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/VideoHwCodecType;->mimeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v5, p0}, Lcom/netease/yunxin/lite/video/VideoHwHelper;->isHardwareSupported(Landroid/media/MediaCodecInfo;Lcom/netease/yunxin/lite/video/VideoHwCodecType;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz p1, :cond_5

    const-string p0, "encoder"

    goto :goto_2

    :cond_5
    const-string p0, "decoder"

    .line 88
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found available "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return v1
.end method

.method private static getCodecInfos()[Landroid/media/MediaCodecInfo;
    .locals 3

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-le v0, v2, :cond_0

    .line 104
    new-instance v0, Landroid/media/MediaCodecList;

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    new-array v0, v0, [Landroid/media/MediaCodecInfo;

    .line 107
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 109
    :try_start_0
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static hasH264HwDecoder()Z
    .locals 2

    .line 49
    sget-object v0, Lcom/netease/yunxin/lite/video/VideoHwHelper;->H264_HW_DECODE_BLACKLIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 53
    :cond_0
    sget-object v0, Lcom/netease/yunxin/lite/video/VideoHwCodecType;->H264:Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/VideoHwHelper;->findCodecForType(Lcom/netease/yunxin/lite/video/VideoHwCodecType;Z)Z

    move-result v0

    return v0
.end method

.method public static hasH264HwEncoder()Z
    .locals 2

    .line 35
    sget-object v0, Lcom/netease/yunxin/lite/video/VideoHwHelper;->H264_HW_ENCODE_BLACKLIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 39
    :cond_0
    sget-object v0, Lcom/netease/yunxin/lite/video/VideoHwCodecType;->H264:Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/VideoHwHelper;->findCodecForType(Lcom/netease/yunxin/lite/video/VideoHwCodecType;Z)Z

    move-result v0

    return v0
.end method

.method public static hasH265HwDecoder()Z
    .locals 2

    .line 57
    sget-object v0, Lcom/netease/yunxin/lite/video/VideoHwCodecType;->H265:Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/VideoHwHelper;->findCodecForType(Lcom/netease/yunxin/lite/video/VideoHwCodecType;Z)Z

    move-result v0

    return v0
.end method

.method public static hasH265HwEncoder()Z
    .locals 2

    .line 44
    sget-object v0, Lcom/netease/yunxin/lite/video/VideoHwCodecType;->H265:Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/VideoHwHelper;->findCodecForType(Lcom/netease/yunxin/lite/video/VideoHwCodecType;Z)Z

    move-result v0

    return v0
.end method

.method private static isEncoder(Landroid/media/MediaCodecInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isHardwareSupported(Landroid/media/MediaCodecInfo;Lcom/netease/yunxin/lite/video/VideoHwCodecType;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "type"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    .line 119
    sget-object v0, Lcom/netease/yunxin/lite/video/VideoHwHelper$1;->$SwitchMap$com$netease$yunxin$lite$video$VideoHwCodecType:[I

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/video/VideoHwCodecType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    .line 121
    :cond_0
    sget-object p1, Lcom/netease/yunxin/lite/video/VideoHwHelper;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 122
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isSocSupportedCompat(ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "is1V1Mode",
            "encode"
        }
    .end annotation

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    .line 136
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->isHardWareVendorQualcomm()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "VideoHwHelper"

    const-string p1, "1V1 mode only Qcom Soc support HW Decode!"

    .line 137
    invoke-static {p0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
