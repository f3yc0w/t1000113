.class Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoderFactory.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoDecoderFactory;


# static fields
.field private static final H264_HW_DECODE_BLACKLIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoDecoderFactory"


# instance fields
.field private compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

.field private initDropFrameCount:I

.field private final prefixBlacklist:[Ljava/lang/String;

.field private final prefixWhitelist:[Ljava/lang/String;

.field private sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

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

    const-string v11, "COL-AL10"

    const-string v12, "OPPO R9m"

    const-string v13, "PAR-AL00"

    const-string v14, "MHA-AL00"

    const-string v15, "PBAM00"

    const-string v16, "LYA-AL00"

    .line 39
    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->H264_HW_DECODE_BLACKLIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/netease/lava/webrtc/EglBase$Context;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .param p1    # Lcom/netease/lava/webrtc/EglBase$Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    .line 63
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->prefixWhitelist:[Ljava/lang/String;

    .line 64
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->prefixBlacklist:[Ljava/lang/String;

    .line 65
    iput p4, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->initDropFrameCount:I

    const/4 p1, 0x0

    .line 66
    invoke-static {p1}, Lcom/netease/lava/webrtc/MediaCodecUtils;->cleanCodecInstances(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/lava/webrtc/EglBase$Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/netease/lava/webrtc/CompatVideoCodecInfo;)V
    .locals 0
    .param p1    # Lcom/netease/lava/webrtc/EglBase$Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    .line 54
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->prefixWhitelist:[Ljava/lang/String;

    .line 55
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->prefixBlacklist:[Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    const/4 p1, 0x0

    .line 57
    invoke-static {p1}, Lcom/netease/lava/webrtc/MediaCodecUtils;->cleanCodecInstances(Z)V

    return-void
.end method

.method private findCodecForType(Lcom/netease/lava/webrtc/VideoCodecType;)Landroid/media/MediaCodecInfo;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 178
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MediaCodecVideoDecoderFactory"

    const-string v4, "Cannot retrieve decoder codec info"

    .line 180
    invoke-static {v3, v4, v2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 183
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 187
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->isSupportedCodec(Landroid/media/MediaCodecInfo;Lcom/netease/lava/webrtc/VideoCodecType;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private getDecoderType(Lcom/netease/lava/webrtc/CompatVideoCodecInfo;Ljava/lang/String;)Lcom/netease/lava/webrtc/VideoCodecType;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 226
    invoke-static {p2}, Lcom/netease/lava/webrtc/VideoCodecType;->valueOf(Ljava/lang/String;)Lcom/netease/lava/webrtc/VideoCodecType;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 228
    sget-object v0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory$1;->$SwitchMap$com$netease$lava$webrtc$VideoCodecType:[I

    invoke-virtual {p2}, Lcom/netease/lava/webrtc/VideoCodecType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "MediaCodecVideoDecoderFactory"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getHardwareDecodingForH265()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Compat not support HW H265"

    .line 231
    invoke-static {v3, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 236
    :cond_1
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getHardwareDecodingForH264()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Compat not support HW H264"

    .line 237
    invoke-static {v3, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    :goto_0
    return-object p2
.end method

.method private isCodecAllowed(Landroid/media/MediaCodecInfo;Lcom/netease/lava/webrtc/VideoCodecType;Ljava/lang/String;)Z
    .locals 4

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 264
    :cond_0
    invoke-direct {p0, p2}, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->isDecoderBlackList(Lcom/netease/lava/webrtc/VideoCodecType;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    return v0

    .line 268
    :cond_1
    iget-object p2, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->prefixBlacklist:[Ljava/lang/String;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 269
    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Codec Name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "is in prefixBlacklist!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecVideoDecoderFactory"

    invoke-static {p2, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_3
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private isDecoderBlackList(Lcom/netease/lava/webrtc/VideoCodecType;)Z
    .locals 1

    .line 291
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecType;->H264:Lcom/netease/lava/webrtc/VideoCodecType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->H264_HW_DECODE_BLACKLIST:Ljava/util/List;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MediaCodecVideoDecoderFactory"

    const-string v0, "The model is in local decode blacklist."

    .line 292
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z
    .locals 3

    .line 300
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const-string v0, "OMX.qcom."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 306
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    const-string v0, "OMX.Exynos."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isHardwareAccelerated(Landroid/media/MediaCodecInfo;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 283
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 284
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Codec Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isHardwareAccelerated: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaCodecVideoDecoderFactory"

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private isSupportedCodec(Landroid/media/MediaCodecInfo;Lcom/netease/lava/webrtc/VideoCodecType;)Z
    .locals 5

    .line 197
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/MediaCodecUtils;->codecSupportsType(Landroid/media/MediaCodecInfo;Lcom/netease/lava/webrtc/VideoCodecType;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 202
    :cond_0
    sget-object v1, Lcom/netease/lava/webrtc/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    .line 203
    invoke-virtual {p2}, Lcom/netease/lava/webrtc/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    .line 202
    invoke-static {v0, v1, v3}, Lcom/netease/lava/webrtc/MediaCodecUtils;->selectColorFormat(Ljava/lang/String;[ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 209
    sget-object v1, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory$1;->$SwitchMap$com$netease$lava$webrtc$VideoCodecType:[I

    invoke-virtual {p2}, Lcom/netease/lava/webrtc/VideoCodecType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_1

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getForceHardwareDecodeingForH265()I

    move-result v1

    if-ne v1, v3, :cond_4

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getForceHardwareDecodeingForH264()I

    move-result v1

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 221
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->isCodecAllowed(Landroid/media/MediaCodecInfo;Lcom/netease/lava/webrtc/VideoCodecType;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method private isWhitelisted(Ljava/lang/String;)Z
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->prefixWhitelist:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 251
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public createDecoder(Lcom/netease/lava/webrtc/VideoCodecInfo;)Lcom/netease/lava/webrtc/VideoDecoder;
    .locals 10
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const-string v1, "MediaCodecVideoDecoderFactory"

    if-nez p1, :cond_0

    const-string p1, "codecType is null! "

    .line 73
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 77
    :cond_0
    iget-object v2, p1, Lcom/netease/lava/webrtc/VideoCodecInfo;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->getDecoderType(Lcom/netease/lava/webrtc/CompatVideoCodecInfo;Ljava/lang/String;)Lcom/netease/lava/webrtc/VideoCodecType;

    move-result-object v6

    if-nez v6, :cond_1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create Decoder failed for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 83
    :cond_1
    invoke-direct {p0, v6}, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->findCodecForType(Lcom/netease/lava/webrtc/VideoCodecType;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    if-nez v2, :cond_2

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find Video CodecInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 91
    :cond_2
    invoke-virtual {v6}, Lcom/netease/lava/webrtc/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 93
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 94
    sget-object v4, Lcom/netease/lava/webrtc/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    invoke-static {v3, v4, v0}, Lcom/netease/lava/webrtc/MediaCodecUtils;->selectColorFormat(Ljava/lang/String;[ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    iget-object v4, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    if-eqz v4, :cond_9

    .line 97
    invoke-virtual {v4}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 99
    sget-object v4, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory$1;->$SwitchMap$com$netease$lava$webrtc$VideoCodecType:[I

    invoke-virtual {v6}, Lcom/netease/lava/webrtc/VideoCodecType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    const-string v7, ", new codecName: "

    const-string v8, "old codecName: "

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto/16 :goto_1

    :cond_3
    if-eqz v3, :cond_7

    .line 108
    iget-object v4, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    .line 109
    invoke-virtual {v4}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "h265"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v4}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hevc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 110
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_7

    .line 101
    iget-object v4, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    .line 102
    invoke-virtual {v4}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "h264"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v4}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "avc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 103
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v3, v1

    .line 119
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getInitDropFrameCount()I

    move-result v1

    if-ltz v1, :cond_8

    .line 120
    iget-object v1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getInitDropFrameCount()I

    move-result v1

    iput v1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->initDropFrameCount:I

    .line 122
    :cond_8
    iget-object v1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getDecoderColorFormat()I

    move-result v1

    if-lez v1, :cond_9

    .line 123
    iget-object v0, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getDecoderColorFormat()I

    move-result v0

    .line 127
    :cond_9
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoCodecInfo;->getCompatInfo()Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 129
    invoke-virtual {v8}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getInitDropFrameCount()I

    move-result p1

    if-lez p1, :cond_a

    .line 130
    invoke-virtual {v8}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getInitDropFrameCount()I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->initDropFrameCount:I

    .line 132
    :cond_a
    invoke-virtual {v8}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getEGLContext()Lcom/netease/lava/webrtc/EglBase$Context;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 133
    instance-of p1, p1, Lcom/netease/lava/webrtc/EglBase$Context;

    if-eqz p1, :cond_b

    .line 134
    invoke-virtual {v8}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getEGLContext()Lcom/netease/lava/webrtc/EglBase$Context;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    .line 139
    :cond_b
    invoke-virtual {v8, v3}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setCodecName(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v8, v0}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setDecoderColorFormat(I)V

    .line 141
    iget p1, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->initDropFrameCount:I

    invoke-virtual {v8, p1}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->setInitDropFrameCount(I)V

    .line 143
    new-instance p1, Lcom/netease/lava/webrtc/AndroidVideoDecoder;

    new-instance v5, Lcom/netease/lava/webrtc/MediaCodecWrapperFactoryImpl;

    invoke-direct {v5}, Lcom/netease/lava/webrtc/MediaCodecWrapperFactoryImpl;-><init>()V

    iget-object v7, p0, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    invoke-virtual {v6}, Lcom/netease/lava/webrtc/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;-><init>(Lcom/netease/lava/webrtc/MediaCodecWrapperFactory;Lcom/netease/lava/webrtc/VideoCodecType;Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/CompatVideoCodecInfo;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    return-object p1
.end method

.method public synthetic createDecoder(Ljava/lang/String;)Lcom/netease/lava/webrtc/VideoDecoder;
    .locals 0

    invoke-static {p0, p1}, Lcom/netease/lava/webrtc/VideoDecoderFactory$-CC;->$default$createDecoder(Lcom/netease/lava/webrtc/VideoDecoderFactory;Ljava/lang/String;)Lcom/netease/lava/webrtc/VideoDecoder;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedCodecs()[Lcom/netease/lava/webrtc/VideoCodecInfo;
    .locals 10

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/netease/lava/webrtc/VideoCodecType;

    .line 152
    sget-object v3, Lcom/netease/lava/webrtc/VideoCodecType;->VP8:Lcom/netease/lava/webrtc/VideoCodecType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/netease/lava/webrtc/VideoCodecType;->VP9:Lcom/netease/lava/webrtc/VideoCodecType;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/netease/lava/webrtc/VideoCodecType;->H264:Lcom/netease/lava/webrtc/VideoCodecType;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lcom/netease/lava/webrtc/VideoCodecType;->H265:Lcom/netease/lava/webrtc/VideoCodecType;

    const/4 v6, 0x3

    aput-object v3, v2, v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v6, v2, v3

    .line 153
    invoke-direct {p0, v6}, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->findCodecForType(Lcom/netease/lava/webrtc/VideoCodecType;)Landroid/media/MediaCodecInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 155
    invoke-virtual {v6}, Lcom/netease/lava/webrtc/VideoCodecType;->name()Ljava/lang/String;

    move-result-object v8

    .line 156
    sget-object v9, Lcom/netease/lava/webrtc/VideoCodecType;->H264:Lcom/netease/lava/webrtc/VideoCodecType;

    if-ne v6, v9, :cond_0

    invoke-direct {p0, v7}, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 157
    new-instance v7, Lcom/netease/lava/webrtc/VideoCodecInfo;

    .line 158
    invoke-static {v6, v5}, Lcom/netease/lava/webrtc/MediaCodecUtils;->getCodecProperties(Lcom/netease/lava/webrtc/VideoCodecType;Z)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/netease/lava/webrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    new-instance v7, Lcom/netease/lava/webrtc/VideoCodecInfo;

    .line 162
    invoke-static {v6, v4}, Lcom/netease/lava/webrtc/MediaCodecUtils;->getCodecProperties(Lcom/netease/lava/webrtc/VideoCodecType;Z)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lcom/netease/lava/webrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 161
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netease/lava/webrtc/VideoCodecInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/webrtc/VideoCodecInfo;

    return-object v0
.end method
