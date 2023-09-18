.class public Lcom/netease/lava/webrtc/VideoFrame;
.super Ljava/lang/Object;
.source "VideoFrame.java"

# interfaces
.implements Lcom/netease/lava/webrtc/RefCounted;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;,
        Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;,
        Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;,
        Lcom/netease/lava/webrtc/VideoFrame$Buffer;
    }
.end annotation


# instance fields
.field private final broadcastRenderMs:J

.field private final buffer:Lcom/netease/lava/webrtc/VideoFrame$Buffer;

.field private isDualFrame:Z

.field private isMirror:Z

.field private final receiveFinishMs:J

.field private final rotation:I

.field private final timestampNs:J

.field private final timestampRtp:J

.field private final transformTextureStartTimeMs:J


# direct methods
.method public constructor <init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJ)V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 224
    rem-int/lit8 v0, p2, 0x5a

    if-nez v0, :cond_0

    .line 227
    iput-object p1, p0, Lcom/netease/lava/webrtc/VideoFrame;->buffer:Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    .line 228
    iput p2, p0, Lcom/netease/lava/webrtc/VideoFrame;->rotation:I

    .line 229
    iput-wide p3, p0, Lcom/netease/lava/webrtc/VideoFrame;->timestampNs:J

    const-wide/16 p1, 0x0

    .line 230
    iput-wide p1, p0, Lcom/netease/lava/webrtc/VideoFrame;->timestampRtp:J

    .line 231
    iput-wide p1, p0, Lcom/netease/lava/webrtc/VideoFrame;->transformTextureStartTimeMs:J

    .line 232
    iput-wide p1, p0, Lcom/netease/lava/webrtc/VideoFrame;->receiveFinishMs:J

    .line 233
    iput-wide p1, p0, Lcom/netease/lava/webrtc/VideoFrame;->broadcastRenderMs:J

    return-void

    .line 225
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rotation must be a multiple of 90"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer not allowed to be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJJJJJ)V
    .locals 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 208
    rem-int/lit8 v0, p2, 0x5a

    if-nez v0, :cond_0

    .line 211
    iput-object p1, p0, Lcom/netease/lava/webrtc/VideoFrame;->buffer:Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    .line 212
    iput p2, p0, Lcom/netease/lava/webrtc/VideoFrame;->rotation:I

    .line 213
    iput-wide p3, p0, Lcom/netease/lava/webrtc/VideoFrame;->timestampNs:J

    .line 214
    iput-wide p5, p0, Lcom/netease/lava/webrtc/VideoFrame;->timestampRtp:J

    .line 215
    iput-wide p7, p0, Lcom/netease/lava/webrtc/VideoFrame;->transformTextureStartTimeMs:J

    .line 216
    iput-wide p9, p0, Lcom/netease/lava/webrtc/VideoFrame;->receiveFinishMs:J

    .line 217
    iput-wide p11, p0, Lcom/netease/lava/webrtc/VideoFrame;->broadcastRenderMs:J

    return-void

    .line 209
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "rotation must be a multiple of 90"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer not allowed to be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBroadcastRenderMs()J
    .locals 2

    .line 288
    iget-wide v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->broadcastRenderMs:J

    return-wide v0
.end method

.method public getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->buffer:Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    return-object v0
.end method

.method public getReceiveFinishMs()J
    .locals 2

    .line 284
    iget-wide v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->receiveFinishMs:J

    return-wide v0
.end method

.method public getRotatedHeight()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->rotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->buffer:Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v0

    return v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->buffer:Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v0

    return v0
.end method

.method public getRotatedWidth()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->rotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->buffer:Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v0

    return v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->buffer:Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRotation()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->rotation:I

    return v0
.end method

.method public getTimestampNs()J
    .locals 2

    .line 272
    iget-wide v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->timestampNs:J

    return-wide v0
.end method

.method public getTimestampRtp()J
    .locals 2

    .line 276
    iget-wide v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->timestampRtp:J

    return-wide v0
.end method

.method public getTransformTextureStartTimeMs()J
    .locals 2

    .line 280
    iget-wide v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->transformTextureStartTimeMs:J

    return-wide v0
.end method

.method public isDualFrame()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->isDualFrame:Z

    return v0
.end method

.method public isMirror()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->isMirror:Z

    return v0
.end method

.method public release()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->buffer:Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->release()V

    return-void
.end method

.method public retain()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoFrame;->buffer:Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->retain()V

    return-void
.end method

.method public setDualFrame(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/VideoFrame;->isDualFrame:Z

    return-void
.end method

.method public setIsMirror(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/VideoFrame;->isMirror:Z

    return-void
.end method
