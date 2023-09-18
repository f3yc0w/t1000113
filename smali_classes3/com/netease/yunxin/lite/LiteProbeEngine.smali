.class public Lcom/netease/yunxin/lite/LiteProbeEngine;
.super Ljava/lang/Object;
.source "LiteProbeEngine.java"


# instance fields
.field private mNativeHandle:J

.field private final mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private mSinkNativeHandle:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "sinkNativeHandle"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/LiteProbeEngine;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 22
    iput-wide p1, p0, Lcom/netease/yunxin/lite/LiteProbeEngine;->mNativeHandle:J

    .line 23
    iput-wide p3, p0, Lcom/netease/yunxin/lite/LiteProbeEngine;->mSinkNativeHandle:J

    return-void
.end method

.method private getNativeHandle()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/netease/yunxin/lite/LiteProbeEngine;->mNativeHandle:J

    return-wide v0
.end method

.method private getReadLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/netease/yunxin/lite/LiteProbeEngine;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method private getSinkNativeHandle()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/netease/yunxin/lite/LiteProbeEngine;->mSinkNativeHandle:J

    return-wide v0
.end method

.method private getWriteLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/netease/yunxin/lite/LiteProbeEngine;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method private setNativeHandle(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    .line 33
    iput-wide p1, p0, Lcom/netease/yunxin/lite/LiteProbeEngine;->mNativeHandle:J

    return-void
.end method

.method private setSinkNativeHandle(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sinkNativeHandle"
        }
    .end annotation

    .line 43
    iput-wide p1, p0, Lcom/netease/yunxin/lite/LiteProbeEngine;->mSinkNativeHandle:J

    return-void
.end method


# virtual methods
.method public native getConnectionState()I
.end method

.method public native initialize(Lcom/netease/yunxin/lite/model/LiteSDKEngineParameter;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation
.end method

.method public native reportProbeApiEvent(Ljava/lang/String;ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "apiType",
            "code",
            "info"
        }
    .end annotation
.end method

.method public native startProbe(Lcom/netease/yunxin/lite/model/LiteSDKProbeConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "probeConfig"
        }
    .end annotation
.end method

.method public native stopProbe()I
.end method

.method public native unInitialize()I
.end method
