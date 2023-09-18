.class public Lcom/netease/lava/webrtc/HardwareVideoDecoderFactory;
.super Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;
.source "HardwareVideoDecoderFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/netease/lava/webrtc/HardwareVideoDecoderFactory;-><init>(Lcom/netease/lava/webrtc/EglBase$Context;I)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/lava/webrtc/EglBase$Context;I)V
    .locals 2
    .param p1    # Lcom/netease/lava/webrtc/EglBase$Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, ""

    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netease/lava/webrtc/MediaCodecUtils;->SOFTWARE_IMPLEMENTATION_PREFIXES:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;-><init>(Lcom/netease/lava/webrtc/EglBase$Context;[Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/CompatVideoCodecInfo;)V
    .locals 2
    .param p1    # Lcom/netease/lava/webrtc/EglBase$Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, ""

    .line 31
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netease/lava/webrtc/MediaCodecUtils;->SOFTWARE_IMPLEMENTATION_PREFIXES:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;-><init>(Lcom/netease/lava/webrtc/EglBase$Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/netease/lava/webrtc/CompatVideoCodecInfo;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createDecoder(Lcom/netease/lava/webrtc/VideoCodecInfo;)Lcom/netease/lava/webrtc/VideoDecoder;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 16
    invoke-super {p0, p1}, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->createDecoder(Lcom/netease/lava/webrtc/VideoCodecInfo;)Lcom/netease/lava/webrtc/VideoDecoder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSupportedCodecs()[Lcom/netease/lava/webrtc/VideoCodecInfo;
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;->getSupportedCodecs()[Lcom/netease/lava/webrtc/VideoCodecInfo;

    move-result-object v0

    return-object v0
.end method
