.class public interface abstract Lcom/netease/lava/webrtc/VideoEncoder$Callback;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onEncodedFrame(Lcom/netease/lava/webrtc/EncodedImage;Lcom/netease/lava/webrtc/VideoEncoder$CodecSpecificInfo;)V
.end method

.method public abstract onUpdateEncoderFormat(Z)V
.end method
