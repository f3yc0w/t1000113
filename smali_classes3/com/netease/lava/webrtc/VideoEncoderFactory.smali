.class public interface abstract Lcom/netease/lava/webrtc/VideoEncoderFactory;
.super Ljava/lang/Object;
.source "VideoEncoderFactory.java"


# virtual methods
.method public abstract createEncoder(Lcom/netease/lava/webrtc/VideoCodecInfo;)Lcom/netease/lava/webrtc/VideoEncoder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSupportedCodecs()[Lcom/netease/lava/webrtc/VideoCodecInfo;
.end method
