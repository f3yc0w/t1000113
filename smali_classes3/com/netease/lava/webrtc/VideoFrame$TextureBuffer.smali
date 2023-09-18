.class public interface abstract Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;
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
    name = "TextureBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;
    }
.end annotation


# virtual methods
.method public abstract getFenceSyncObject()J
.end method

.method public abstract getTextureId()I
.end method

.method public abstract getTransformMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getType()Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;
.end method

.method public abstract isOESTexture()Z
.end method
