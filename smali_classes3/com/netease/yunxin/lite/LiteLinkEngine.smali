.class public Lcom/netease/yunxin/lite/LiteLinkEngine;
.super Ljava/lang/Object;
.source "LiteLinkEngine.java"


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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/LiteLinkEngine;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 19
    iput-wide p1, p0, Lcom/netease/yunxin/lite/LiteLinkEngine;->mNativeHandle:J

    .line 20
    iput-wide p3, p0, Lcom/netease/yunxin/lite/LiteLinkEngine;->mSinkNativeHandle:J

    return-void
.end method

.method private getNativeHandle()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/netease/yunxin/lite/LiteLinkEngine;->mNativeHandle:J

    return-wide v0
.end method

.method private getReadLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netease/yunxin/lite/LiteLinkEngine;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method private getSinkNativeHandle()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/netease/yunxin/lite/LiteLinkEngine;->mSinkNativeHandle:J

    return-wide v0
.end method

.method private getWriteLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/netease/yunxin/lite/LiteLinkEngine;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

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

    .line 30
    iput-wide p1, p0, Lcom/netease/yunxin/lite/LiteLinkEngine;->mNativeHandle:J

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

    .line 40
    iput-wide p1, p0, Lcom/netease/yunxin/lite/LiteLinkEngine;->mSinkNativeHandle:J

    return-void
.end method


# virtual methods
.method public native directCallHangup(Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionInfo"
        }
    .end annotation
.end method

.method public native directCallStartCall(Lcom/netease/yunxin/lite/model/pstn/LinkEngineDirectCallParam;Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callParam",
            "sessionInfo"
        }
    .end annotation
.end method

.method public native initialize(Lcom/netease/yunxin/lite/model/pstn/LinkEngineParameter;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation
.end method

.method public native reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "apiType",
            "code",
            "data"
        }
    .end annotation
.end method

.method public native setSessionConfig(Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionInfo"
        }
    .end annotation
.end method

.method public native unInitialize()I
.end method
