.class public Lcom/twobigears/audio360/AudioAssetManager;
.super Ljava/lang/Object;
.source "AudioAssetManager.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/twobigears/audio360/AudioAssetManager;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/twobigears/audio360/AudioAssetManager;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/AudioAssetManager;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioAssetManager;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 32
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioAssetManager;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 33
    iget-boolean v4, p0, Lcom/twobigears/audio360/AudioAssetManager;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 34
    iput-boolean v4, p0, Lcom/twobigears/audio360/AudioAssetManager;->swigCMemOwn:Z

    .line 35
    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_AudioAssetManager(J)V

    .line 37
    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/AudioAssetManager;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/twobigears/audio360/AudioAssetManager;->delete()V

    return-void
.end method

.method public getBytesInMemory()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioAssetManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioAssetManager_getBytesInMemory(JLcom/twobigears/audio360/AudioAssetManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFormat(Lcom/twobigears/audio360/AudioAssetHandle;)Ljava/lang/String;
    .locals 6

    .line 64
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioAssetManager;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioAssetHandle;->getCPtr(Lcom/twobigears/audio360/AudioAssetHandle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioAssetManager_getFormat(JLcom/twobigears/audio360/AudioAssetManager;JLcom/twobigears/audio360/AudioAssetHandle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMode(Lcom/twobigears/audio360/AudioAssetHandle;)Lcom/twobigears/audio360/AssetAccessMode;
    .locals 6

    .line 60
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioAssetManager;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioAssetHandle;->getCPtr(Lcom/twobigears/audio360/AudioAssetHandle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioAssetManager_getMode(JLcom/twobigears/audio360/AudioAssetManager;JLcom/twobigears/audio360/AudioAssetHandle;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/AssetAccessMode;->swigToEnum(I)Lcom/twobigears/audio360/AssetAccessMode;

    move-result-object p1

    return-object p1
.end method

.method public getNewDecoder(Lcom/twobigears/audio360/AudioAssetHandle;IF)Lcom/twobigears/audio360/AudioFormatDecoder;
    .locals 8

    .line 51
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioAssetManager;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioAssetHandle;->getCPtr(Lcom/twobigears/audio360/AudioAssetHandle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/twobigears/audio360/Audio360JNI;->AudioAssetManager_getNewDecoder(JLcom/twobigears/audio360/AudioAssetManager;JLcom/twobigears/audio360/AudioAssetHandle;IF)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p3, Lcom/twobigears/audio360/AudioFormatDecoder;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/twobigears/audio360/AudioFormatDecoder;-><init>(JZ)V

    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public getNewStream(Lcom/twobigears/audio360/AudioAssetHandle;)Lcom/twobigears/audio360/IOStream;
    .locals 6

    .line 46
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioAssetManager;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioAssetHandle;->getCPtr(Lcom/twobigears/audio360/AudioAssetHandle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioAssetManager_getNewStream(JLcom/twobigears/audio360/AudioAssetManager;JLcom/twobigears/audio360/AudioAssetHandle;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Lcom/twobigears/audio360/IOStream;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/twobigears/audio360/IOStream;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public loadAudio(Lcom/twobigears/audio360/AudioAssetHandle;Ljava/lang/String;Lcom/twobigears/audio360/AssetDescriptor;Lcom/twobigears/audio360/AssetAccessMode;)Lcom/twobigears/audio360/EngineError;
    .locals 11

    .line 42
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioAssetManager;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioAssetHandle;->getCPtr(Lcom/twobigears/audio360/AudioAssetHandle;)J

    move-result-wide v3

    invoke-static {p3}, Lcom/twobigears/audio360/AssetDescriptor;->getCPtr(Lcom/twobigears/audio360/AssetDescriptor;)J

    move-result-wide v7

    invoke-virtual {p4}, Lcom/twobigears/audio360/AssetAccessMode;->swigValue()I

    move-result v10

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p3

    invoke-static/range {v0 .. v10}, Lcom/twobigears/audio360/Audio360JNI;->AudioAssetManager_loadAudio(JLcom/twobigears/audio360/AudioAssetManager;JLcom/twobigears/audio360/AudioAssetHandle;Ljava/lang/String;JLcom/twobigears/audio360/AssetDescriptor;I)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public unloadAudio(Lcom/twobigears/audio360/AudioAssetHandle;)Z
    .locals 6

    .line 56
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioAssetManager;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioAssetHandle;->getCPtr(Lcom/twobigears/audio360/AudioAssetHandle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioAssetManager_unloadAudio(JLcom/twobigears/audio360/AudioAssetManager;JLcom/twobigears/audio360/AudioAssetHandle;)Z

    move-result p1

    return p1
.end method
