.class public interface abstract Lcom/netease/lava/webrtc/VideoFrame$Buffer;
.super Ljava/lang/Object;
.source "VideoFrame.java"

# interfaces
.implements Lcom/netease/lava/webrtc/RefCounted;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/VideoFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Buffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;
    }
.end annotation


# virtual methods
.method public abstract cropAndScale(IIIIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;
.end method

.method public abstract getBufferType()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getInternalBufferType()Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;
.end method

.method public abstract getOriHeight()I
.end method

.method public abstract getOriWidth()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract release()V
.end method

.method public abstract retain()V
.end method

.method public abstract setHeight(I)V
.end method

.method public abstract setWidth(I)V
.end method

.method public abstract toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
