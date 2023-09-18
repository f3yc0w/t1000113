.class public interface abstract Lcom/netease/lava/webrtc/VideoDecoder;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/VideoDecoder$Callback;,
        Lcom/netease/lava/webrtc/VideoDecoder$DecodeInfo;,
        Lcom/netease/lava/webrtc/VideoDecoder$Settings;
    }
.end annotation


# virtual methods
.method public abstract createNativeVideoDecoder()J
.end method

.method public abstract decode(Lcom/netease/lava/webrtc/EncodedImage;Lcom/netease/lava/webrtc/VideoDecoder$DecodeInfo;)Lcom/netease/lava/webrtc/VideoCodecStatus;
.end method

.method public abstract getImplementationName()Ljava/lang/String;
.end method

.method public abstract getPrefersLateDecoding()Z
.end method

.method public abstract initDecode(Lcom/netease/lava/webrtc/VideoDecoder$Settings;Lcom/netease/lava/webrtc/VideoDecoder$Callback;)Lcom/netease/lava/webrtc/VideoCodecStatus;
.end method

.method public abstract release()Lcom/netease/lava/webrtc/VideoCodecStatus;
.end method
