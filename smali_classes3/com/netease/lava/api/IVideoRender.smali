.class public interface abstract Lcom/netease/lava/api/IVideoRender;
.super Ljava/lang/Object;
.source "IVideoRender.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/api/IVideoRender$VideoBufferType;,
        Lcom/netease/lava/api/IVideoRender$ScalingType;
    }
.end annotation


# virtual methods
.method public abstract clearImage()V
.end method

.method public abstract getVideoBufferType()Lcom/netease/lava/api/IVideoRender$VideoBufferType;
.end method

.method public abstract isExternalRender()Z
.end method

.method public abstract isMirror()Z
.end method

.method public abstract onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoFrame"
        }
    .end annotation
.end method

.method public abstract setExternalRender(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setMirror(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirror"
        }
    .end annotation
.end method

.method public abstract setScalingType(Lcom/netease/lava/api/IVideoRender$ScalingType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setVideoBufferType(Lcom/netease/lava/api/IVideoRender$VideoBufferType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferType"
        }
    .end annotation
.end method

.method public abstract setViewActionListener(Lcom/netease/yunxin/lite/video/VideoViewActionListener;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewActionListener",
            "type"
        }
    .end annotation
.end method
