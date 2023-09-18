.class public Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;
.super Ljava/lang/Object;
.source "AudioDeviceEventListener.java"

# interfaces
.implements Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;


# instance fields
.field private mNativeHandle:J

.field private final mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method private constructor <init>(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandle:J

    .line 17
    iput-wide p1, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandle:J

    return-void
.end method

.method private native onAudioDeviceChanged(JIZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "selectedAudioDevice",
            "hasExternalMic"
        }
    .end annotation
.end method

.method private native onAudioModeChange(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "mode"
        }
    .end annotation
.end method

.method private native onVolumeChange(JII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "volume",
            "maxVolume"
        }
    .end annotation
.end method

.method private setNativeHandle(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 45
    iput-wide p1, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandle:J

    .line 46
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method public onAudioDeviceChanged(ILjava/util/Set;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "selectedAudioDevice",
            "availableAudioDevices",
            "hasExternalMic"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 23
    iget-object p2, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 24
    iget-wide v0, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->onAudioDeviceChanged(JIZ)V

    .line 25
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onAudioModeChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 38
    iget-wide v0, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->onAudioModeChange(JI)V

    .line 39
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onVolumeChange(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "volume",
            "maxVolume"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 31
    iget-wide v0, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->onVolumeChange(JII)V

    .line 32
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/AudioDeviceEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
