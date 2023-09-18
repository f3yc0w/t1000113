.class public Lcom/netease/lava/webrtc/PlatformSoftwareVideoDecoderFactory;
.super Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;
.source "PlatformSoftwareVideoDecoderFactory.java"


# direct methods
.method public constructor <init>(Lcom/netease/lava/webrtc/EglBase$Context;)V
    .locals 3
    .param p1    # Lcom/netease/lava/webrtc/EglBase$Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    sget-object v0, Lcom/netease/lava/webrtc/MediaCodecUtils;->SOFTWARE_IMPLEMENTATION_PREFIXES:[Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/netease/lava/webrtc/MediaCodecVideoDecoderFactory;-><init>(Lcom/netease/lava/webrtc/EglBase$Context;[Ljava/lang/String;[Ljava/lang/String;I)V

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
