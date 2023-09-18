.class public Lcom/netease/lava/webrtc/VideoEncoderFallback;
.super Lcom/netease/lava/webrtc/WrappedNativeVideoEncoder;
.source "VideoEncoderFallback.java"


# instance fields
.field private final fallback:Lcom/netease/lava/webrtc/VideoEncoder;

.field private final primary:Lcom/netease/lava/webrtc/VideoEncoder;


# direct methods
.method public constructor <init>(Lcom/netease/lava/webrtc/VideoEncoder;Lcom/netease/lava/webrtc/VideoEncoder;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/netease/lava/webrtc/WrappedNativeVideoEncoder;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netease/lava/webrtc/VideoEncoderFallback;->fallback:Lcom/netease/lava/webrtc/VideoEncoder;

    .line 22
    iput-object p2, p0, Lcom/netease/lava/webrtc/VideoEncoderFallback;->primary:Lcom/netease/lava/webrtc/VideoEncoder;

    return-void
.end method

.method private static native nativeCreateEncoder(Lcom/netease/lava/webrtc/VideoEncoder;Lcom/netease/lava/webrtc/VideoEncoder;)J
.end method


# virtual methods
.method public createNativeVideoEncoder()J
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoEncoderFallback;->fallback:Lcom/netease/lava/webrtc/VideoEncoder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/VideoEncoderFallback;->primary:Lcom/netease/lava/webrtc/VideoEncoder;

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/VideoEncoderFallback;->nativeCreateEncoder(Lcom/netease/lava/webrtc/VideoEncoder;Lcom/netease/lava/webrtc/VideoEncoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic encode(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/VideoEncoder$EncodeInfo;)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 0

    .line 16
    invoke-super {p0, p1, p2}, Lcom/netease/lava/webrtc/WrappedNativeVideoEncoder;->encode(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/VideoEncoder$EncodeInfo;)Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getImplementationName()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/netease/lava/webrtc/WrappedNativeVideoEncoder;->getImplementationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getScalingSettings()Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/netease/lava/webrtc/WrappedNativeVideoEncoder;->getScalingSettings()Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initEncode(Lcom/netease/lava/webrtc/VideoEncoder$Settings;Lcom/netease/lava/webrtc/VideoEncoder$Callback;)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 0

    .line 16
    invoke-super {p0, p1, p2}, Lcom/netease/lava/webrtc/WrappedNativeVideoEncoder;->initEncode(Lcom/netease/lava/webrtc/VideoEncoder$Settings;Lcom/netease/lava/webrtc/VideoEncoder$Callback;)Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public isDimensityCpu()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoEncoderFallback;->primary:Lcom/netease/lava/webrtc/VideoEncoder;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/VideoEncoder;->isDimensityCpu()Z

    move-result v0

    return v0
.end method

.method public isHardwareEncoder()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoEncoderFallback;->primary:Lcom/netease/lava/webrtc/VideoEncoder;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/VideoEncoder;->isHardwareEncoder()Z

    move-result v0

    return v0
.end method

.method public isSupportHardwareTextureEncoder()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoEncoderFallback;->primary:Lcom/netease/lava/webrtc/VideoEncoder;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/VideoEncoder;->isSupportHardwareTextureEncoder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic release()Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 1

    .line 16
    invoke-super {p0}, Lcom/netease/lava/webrtc/WrappedNativeVideoEncoder;->release()Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reportQP(I)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/netease/lava/webrtc/WrappedNativeVideoEncoder;->reportQP(I)V

    return-void
.end method

.method public bridge synthetic setRateAllocation(Lcom/netease/lava/webrtc/VideoEncoder$BitrateAllocation;I)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 0

    .line 16
    invoke-super {p0, p1, p2}, Lcom/netease/lava/webrtc/WrappedNativeVideoEncoder;->setRateAllocation(Lcom/netease/lava/webrtc/VideoEncoder$BitrateAllocation;I)Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method
