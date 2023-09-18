.class public Lcom/netease/lava/webrtc/VideoDecoderFallback;
.super Lcom/netease/lava/webrtc/WrappedNativeVideoDecoder;
.source "VideoDecoderFallback.java"


# instance fields
.field private final fallback:Lcom/netease/lava/webrtc/VideoDecoder;

.field private final primary:Lcom/netease/lava/webrtc/VideoDecoder;


# direct methods
.method public constructor <init>(Lcom/netease/lava/webrtc/VideoDecoder;Lcom/netease/lava/webrtc/VideoDecoder;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/netease/lava/webrtc/WrappedNativeVideoDecoder;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netease/lava/webrtc/VideoDecoderFallback;->fallback:Lcom/netease/lava/webrtc/VideoDecoder;

    .line 22
    iput-object p2, p0, Lcom/netease/lava/webrtc/VideoDecoderFallback;->primary:Lcom/netease/lava/webrtc/VideoDecoder;

    return-void
.end method

.method private static native nativeCreateDecoder(Lcom/netease/lava/webrtc/VideoDecoder;Lcom/netease/lava/webrtc/VideoDecoder;)J
.end method


# virtual methods
.method public createNativeVideoDecoder()J
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoDecoderFallback;->fallback:Lcom/netease/lava/webrtc/VideoDecoder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/VideoDecoderFallback;->primary:Lcom/netease/lava/webrtc/VideoDecoder;

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/VideoDecoderFallback;->nativeCreateDecoder(Lcom/netease/lava/webrtc/VideoDecoder;Lcom/netease/lava/webrtc/VideoDecoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic decode(Lcom/netease/lava/webrtc/EncodedImage;Lcom/netease/lava/webrtc/VideoDecoder$DecodeInfo;)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 0

    .line 16
    invoke-super {p0, p1, p2}, Lcom/netease/lava/webrtc/WrappedNativeVideoDecoder;->decode(Lcom/netease/lava/webrtc/EncodedImage;Lcom/netease/lava/webrtc/VideoDecoder$DecodeInfo;)Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getImplementationName()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/netease/lava/webrtc/WrappedNativeVideoDecoder;->getImplementationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrefersLateDecoding()Z
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/netease/lava/webrtc/WrappedNativeVideoDecoder;->getPrefersLateDecoding()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic initDecode(Lcom/netease/lava/webrtc/VideoDecoder$Settings;Lcom/netease/lava/webrtc/VideoDecoder$Callback;)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 0

    .line 16
    invoke-super {p0, p1, p2}, Lcom/netease/lava/webrtc/WrappedNativeVideoDecoder;->initDecode(Lcom/netease/lava/webrtc/VideoDecoder$Settings;Lcom/netease/lava/webrtc/VideoDecoder$Callback;)Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic release()Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/netease/lava/webrtc/WrappedNativeVideoDecoder;->release()Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method
