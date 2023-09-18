.class public interface abstract Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;
.super Ljava/lang/Object;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RendererEvents"
.end annotation


# virtual methods
.method public abstract onFirstFrameRendered()V
.end method

.method public abstract onFrameResolutionChanged(III)V
.end method

.method public abstract onReceivedFps(I)V
.end method

.method public abstract onRenderError(Ljava/lang/String;)V
.end method

.method public abstract onRendererFps(I)V
.end method
