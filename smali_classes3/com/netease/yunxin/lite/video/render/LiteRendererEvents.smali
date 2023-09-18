.class Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;
.super Ljava/lang/Object;
.source "LiteRendererEvents.java"

# interfaces
.implements Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;


# instance fields
.field private final mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mNativeHandler:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandler"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 16
    iput-wide p1, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mNativeHandler:J

    return-void
.end method

.method private native onFirstFrameRendered(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandler"
        }
    .end annotation
.end method

.method private native onFrameResolutionChanged(JIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandler",
            "videoWidth",
            "videoHeight",
            "rotation"
        }
    .end annotation
.end method

.method private native onReceivedFps(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandler",
            "fps"
        }
    .end annotation
.end method

.method private native onRenderError(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandler",
            "errMsg"
        }
    .end annotation
.end method

.method private native onRendererFps(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandler",
            "fps"
        }
    .end annotation
.end method

.method private release()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mNativeHandler:J

    .line 23
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void
.end method


# virtual methods
.method public onFirstFrameRendered()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 29
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mNativeHandler:J

    invoke-direct {p0, v0, v1}, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->onFirstFrameRendered(J)V

    .line 30
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method

.method public onFrameResolutionChanged(III)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "videoWidth",
            "videoHeight",
            "rotation"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 36
    iget-wide v2, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mNativeHandler:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->onFrameResolutionChanged(JIII)V

    .line 37
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method

.method public onReceivedFps(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fps"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 43
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mNativeHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->onReceivedFps(JI)V

    .line 44
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method

.method public onRenderError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 57
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mNativeHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->onRenderError(JLjava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method

.method public onRendererFps(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fps"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 50
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mNativeHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->onRendererFps(JI)V

    .line 51
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/render/LiteRendererEvents;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method
