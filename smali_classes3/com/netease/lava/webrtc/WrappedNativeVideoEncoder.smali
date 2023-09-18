.class abstract Lcom/netease/lava/webrtc/WrappedNativeVideoEncoder;
.super Ljava/lang/Object;
.source "WrappedNativeVideoEncoder.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoEncoder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createNativeVideoEncoder()J
.end method

.method public encode(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/VideoEncoder$EncodeInfo;)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 0

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getScalingSettings()Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initEncode(Lcom/netease/lava/webrtc/VideoEncoder$Settings;Lcom/netease/lava/webrtc/VideoEncoder$Callback;)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract isDimensityCpu()Z
.end method

.method public abstract isHardwareEncoder()Z
.end method

.method public abstract isSupportHardwareTextureEncoder()Z
.end method

.method public release()Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportQP(I)V
    .locals 1

    .line 49
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRateAllocation(Lcom/netease/lava/webrtc/VideoEncoder$BitrateAllocation;I)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 0

    .line 39
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
