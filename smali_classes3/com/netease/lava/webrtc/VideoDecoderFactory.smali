.class public interface abstract Lcom/netease/lava/webrtc/VideoDecoderFactory;
.super Ljava/lang/Object;
.source "VideoDecoderFactory.java"


# virtual methods
.method public abstract createDecoder(Lcom/netease/lava/webrtc/VideoCodecInfo;)Lcom/netease/lava/webrtc/VideoDecoder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract createDecoder(Ljava/lang/String;)Lcom/netease/lava/webrtc/VideoDecoder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getSupportedCodecs()[Lcom/netease/lava/webrtc/VideoCodecInfo;
.end method
