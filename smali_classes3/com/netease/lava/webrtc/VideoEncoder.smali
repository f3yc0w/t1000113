.class public interface abstract Lcom/netease/lava/webrtc/VideoEncoder;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/VideoEncoder$Callback;,
        Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;,
        Lcom/netease/lava/webrtc/VideoEncoder$BitrateAllocation;,
        Lcom/netease/lava/webrtc/VideoEncoder$CodecSpecificInfoH264;,
        Lcom/netease/lava/webrtc/VideoEncoder$CodecSpecificInfoVP9;,
        Lcom/netease/lava/webrtc/VideoEncoder$CodecSpecificInfoVP8;,
        Lcom/netease/lava/webrtc/VideoEncoder$CodecSpecificInfo;,
        Lcom/netease/lava/webrtc/VideoEncoder$EncodeInfo;,
        Lcom/netease/lava/webrtc/VideoEncoder$Settings;
    }
.end annotation


# virtual methods
.method public abstract createNativeVideoEncoder()J
.end method

.method public abstract encode(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/VideoEncoder$EncodeInfo;)Lcom/netease/lava/webrtc/VideoCodecStatus;
.end method

.method public abstract getImplementationName()Ljava/lang/String;
.end method

.method public abstract getScalingSettings()Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;
.end method

.method public abstract initEncode(Lcom/netease/lava/webrtc/VideoEncoder$Settings;Lcom/netease/lava/webrtc/VideoEncoder$Callback;)Lcom/netease/lava/webrtc/VideoCodecStatus;
.end method

.method public abstract isDimensityCpu()Z
.end method

.method public abstract isHardwareEncoder()Z
.end method

.method public abstract isSupportHardwareTextureEncoder()Z
.end method

.method public abstract release()Lcom/netease/lava/webrtc/VideoCodecStatus;
.end method

.method public abstract reportQP(I)V
.end method

.method public abstract setRateAllocation(Lcom/netease/lava/webrtc/VideoEncoder$BitrateAllocation;I)Lcom/netease/lava/webrtc/VideoCodecStatus;
.end method
