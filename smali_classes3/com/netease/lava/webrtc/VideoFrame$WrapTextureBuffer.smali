.class public interface abstract Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;
.super Ljava/lang/Object;
.source "VideoFrame.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoFrame$Buffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/VideoFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WrapTextureBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;
    }
.end annotation


# virtual methods
.method public abstract getFenceSyncObject()J
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getTextureId()I
.end method

.method public abstract getTextureIds()[I
.end method

.method public abstract getTextureType()I
.end method

.method public abstract getTransformMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getType()Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;
.end method

.method public abstract isYUVTexture()Z
.end method

.method public abstract setFlipVertical()V
.end method

.method public abstract setTextureId(II)V
.end method

.method public abstract setTextureIds([I)V
.end method
