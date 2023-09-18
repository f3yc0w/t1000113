.class public Lcom/twobigears/audio360/AudioEngine;
.super Ljava/lang/Object;
.source "AudioEngine.java"


# static fields
.field public static final AUDIO360_MAX_BUS_NAME_SIZE:I = 0x100


# instance fields
.field private eventListener_:Lcom/twobigears/audio360/EventListener;

.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/twobigears/audio360/AudioEngine;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    return-void
.end method

.method public static create(FIILandroid/content/Context;)Lcom/twobigears/audio360/AudioEngine;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 378
    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_create__SWIG_3(FIILandroid/content/res/AssetManager;)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long v1, p0, p2

    if-nez v1, :cond_1

    goto :goto_1

    .line 379
    :cond_1
    new-instance v0, Lcom/twobigears/audio360/AudioEngine;

    const/4 p2, 0x0

    invoke-direct {v0, p0, p1, p2}, Lcom/twobigears/audio360/AudioEngine;-><init>(JZ)V

    :goto_1
    return-object v0
.end method

.method public static create(FILandroid/content/Context;)Lcom/twobigears/audio360/AudioEngine;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 373
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_create__SWIG_2(FILandroid/content/res/AssetManager;)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long p2, p0, v1

    if-nez p2, :cond_1

    goto :goto_1

    .line 374
    :cond_1
    new-instance v0, Lcom/twobigears/audio360/AudioEngine;

    const/4 p2, 0x0

    invoke-direct {v0, p0, p1, p2}, Lcom/twobigears/audio360/AudioEngine;-><init>(JZ)V

    :goto_1
    return-object v0
.end method

.method public static create(FLandroid/content/Context;)Lcom/twobigears/audio360/AudioEngine;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_create__SWIG_1(FLandroid/content/res/AssetManager;)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_1

    goto :goto_1

    .line 369
    :cond_1
    new-instance v0, Lcom/twobigears/audio360/AudioEngine;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/twobigears/audio360/AudioEngine;-><init>(JZ)V

    :goto_1
    return-object v0
.end method

.method public static create(Lcom/twobigears/audio360/EngineInitSettings;Landroid/content/Context;)Lcom/twobigears/audio360/AudioEngine;
    .locals 4

    .line 363
    invoke-static {p0}, Lcom/twobigears/audio360/EngineInitSettings;->getCPtr(Lcom/twobigears/audio360/EngineInitSettings;)J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_create__SWIG_0(JLcom/twobigears/audio360/EngineInitSettings;Landroid/content/res/AssetManager;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v3, p0, v0

    if-nez v3, :cond_1

    goto :goto_1

    .line 364
    :cond_1
    new-instance v2, Lcom/twobigears/audio360/AudioEngine;

    const/4 v0, 0x1

    invoke-direct {v2, p0, p1, v0}, Lcom/twobigears/audio360/AudioEngine;-><init>(JZ)V

    :goto_1
    return-object v2
.end method

.method public static getAudioDeviceName(I)Ljava/lang/String;
    .locals 0

    .line 315
    invoke-static {p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getAudioDeviceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/AudioEngine;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static getNumAudioDevices()I
    .locals 1

    .line 311
    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getNumAudioDevices()I

    move-result v0

    return v0
.end method

.method private setEventListenerInternal(Lcom/twobigears/audio360/EventListener;)V
    .locals 6

    .line 411
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/EventListener;->getCPtr(Lcom/twobigears/audio360/EventListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setEventListenerInternal(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/EventListener;)V

    return-void
.end method


# virtual methods
.method public closeAudioInput()Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 282
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_closeAudioInput(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lcom/twobigears/audio360/AudioObject;Lcom/twobigears/audio360/SWIGTYPE_p_void;)Lcom/twobigears/audio360/EngineError;
    .locals 8

    .line 178
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioObject;->getCPtr(Lcom/twobigears/audio360/AudioObject;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_connect__SWIG_1(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/AudioObject;J)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lcom/twobigears/audio360/SWIGTYPE_p_void;Lcom/twobigears/audio360/SWIGTYPE_p_void;)Lcom/twobigears/audio360/EngineError;
    .locals 7

    .line 174
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v5

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_connect__SWIG_0(JLcom/twobigears/audio360/AudioEngine;JJ)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public connectToMasterBus(Lcom/twobigears/audio360/AudioObject;)Lcom/twobigears/audio360/EngineError;
    .locals 6

    .line 170
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioObject;->getCPtr(Lcom/twobigears/audio360/AudioObject;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_connectToMasterBus__SWIG_1(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/AudioObject;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public connectToMasterBus(Lcom/twobigears/audio360/SWIGTYPE_p_void;)Lcom/twobigears/audio360/EngineError;
    .locals 4

    .line 166
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_connectToMasterBus__SWIG_0(JLcom/twobigears/audio360/AudioEngine;J)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public createAudioObject()Lcom/twobigears/audio360/AudioObject;
    .locals 5

    .line 398
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_createAudioObject__SWIG_1(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_0
    new-instance v2, Lcom/twobigears/audio360/AudioObject;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/AudioObject;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public createAudioObject(Lcom/twobigears/audio360/AudioObject;Lcom/twobigears/audio360/Options;)Lcom/twobigears/audio360/EngineError;
    .locals 7

    .line 150
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioObject;->getCPtr(Lcom/twobigears/audio360/AudioObject;)J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/twobigears/audio360/Options;->swigValue()I

    move-result v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_createAudioObject__SWIG_0(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/AudioObject;I)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public createBus(Lcom/twobigears/audio360/SWIGTYPE_p_p_void;)Lcom/twobigears/audio360/EngineError;
    .locals 4

    .line 158
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_p_void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_createBus(JLcom/twobigears/audio360/AudioEngine;J)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public createSpatDecoderFile(Lcom/twobigears/audio360/SpatDecoderFile;Lcom/twobigears/audio360/Options;)Lcom/twobigears/audio360/EngineError;
    .locals 7

    .line 142
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SpatDecoderFile;->getCPtr(Lcom/twobigears/audio360/SpatDecoderFile;)J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/twobigears/audio360/Options;->swigValue()I

    move-result v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_createSpatDecoderFile__SWIG_0(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/SpatDecoderFile;I)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public createSpatDecoderFile()Lcom/twobigears/audio360/SpatDecoderFile;
    .locals 5

    .line 393
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_createSpatDecoderFile__SWIG_1(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 394
    :cond_0
    new-instance v2, Lcom/twobigears/audio360/SpatDecoderFile;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/SpatDecoderFile;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public createSpatDecoderQueue()Lcom/twobigears/audio360/SpatDecoderQueue;
    .locals 5

    .line 383
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_createSpatDecoderQueue__SWIG_0(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 384
    :cond_0
    new-instance v2, Lcom/twobigears/audio360/SpatDecoderQueue;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/SpatDecoderQueue;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public createSpatDecoderQueue(Lcom/twobigears/audio360/ChannelMap;Lcom/twobigears/audio360/PCMType;)Lcom/twobigears/audio360/SpatDecoderQueue;
    .locals 3

    .line 388
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/ChannelMap;->swigValue()I

    move-result p1

    invoke-virtual {p2}, Lcom/twobigears/audio360/PCMType;->swigValue()I

    move-result p2

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_createSpatDecoderQueue__SWIG_1(JLcom/twobigears/audio360/AudioEngine;II)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 389
    :cond_0
    new-instance v0, Lcom/twobigears/audio360/SpatDecoderQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/twobigears/audio360/SpatDecoderQueue;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 32
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 33
    iget-boolean v4, p0, Lcom/twobigears/audio360/AudioEngine;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 34
    iput-boolean v4, p0, Lcom/twobigears/audio360/AudioEngine;->swigCMemOwn:Z

    .line 35
    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_AudioEngine(J)V

    .line 37
    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J
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

.method public destroyAudioObject(Lcom/twobigears/audio360/AudioObject;)V
    .locals 6

    .line 154
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioObject;->getCPtr(Lcom/twobigears/audio360/AudioObject;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_destroyAudioObject(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/AudioObject;)V

    return-void
.end method

.method public destroyBus(Lcom/twobigears/audio360/SWIGTYPE_p_p_void;)Lcom/twobigears/audio360/EngineError;
    .locals 4

    .line 162
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_p_void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_destroyBus(JLcom/twobigears/audio360/AudioEngine;J)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public destroySpatDecoderFile(Lcom/twobigears/audio360/SpatDecoderFile;)V
    .locals 6

    .line 146
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SpatDecoderFile;->getCPtr(Lcom/twobigears/audio360/SpatDecoderFile;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_destroySpatDecoderFile(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/SpatDecoderFile;)V

    return-void
.end method

.method public destroySpatDecoderQueue(Lcom/twobigears/audio360/SpatDecoderQueue;)V
    .locals 6

    .line 138
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SpatDecoderQueue;->getCPtr(Lcom/twobigears/audio360/SpatDecoderQueue;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_destroySpatDecoderQueue(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/SpatDecoderQueue;)V

    return-void
.end method

.method public disconnectOutput(Lcom/twobigears/audio360/AudioObject;)Lcom/twobigears/audio360/EngineError;
    .locals 6

    .line 186
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioObject;->getCPtr(Lcom/twobigears/audio360/AudioObject;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_disconnectOutput__SWIG_1(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/AudioObject;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public disconnectOutput(Lcom/twobigears/audio360/SWIGTYPE_p_void;)Lcom/twobigears/audio360/EngineError;
    .locals 4

    .line 182
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_disconnectOutput__SWIG_0(JLcom/twobigears/audio360/AudioEngine;J)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public enableLoudness()V
    .locals 2

    .line 242
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_enableLoudness__SWIG_1(JLcom/twobigears/audio360/AudioEngine;)V

    return-void
.end method

.method public enableLoudness(Z)V
    .locals 2

    .line 238
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_enableLoudness__SWIG_0(JLcom/twobigears/audio360/AudioEngine;Z)V

    return-void
.end method

.method public enableMasterMute(Z)V
    .locals 2

    .line 299
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_enableMasterMute(JLcom/twobigears/audio360/AudioEngine;Z)V

    return-void
.end method

.method public enablePositionalTracking(ZLcom/twobigears/audio360/TBVector;)Lcom/twobigears/audio360/EngineError;
    .locals 7

    .line 114
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p2}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_enablePositionalTracking(JLcom/twobigears/audio360/AudioEngine;ZJLcom/twobigears/audio360/TBVector;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public enableTestTone(Z)V
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_enableTestTone__SWIG_2(JLcom/twobigears/audio360/AudioEngine;Z)V

    return-void
.end method

.method public enableTestTone(ZF)V
    .locals 2

    .line 206
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_enableTestTone__SWIG_1(JLcom/twobigears/audio360/AudioEngine;ZF)V

    return-void
.end method

.method public enableTestTone(ZFF)V
    .locals 6

    .line 202
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_enableTestTone__SWIG_0(JLcom/twobigears/audio360/AudioEngine;ZFF)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/twobigears/audio360/AudioEngine;->delete()V

    return-void
.end method

.method public getAudioAssetManager()Lcom/twobigears/audio360/AudioAssetManager;
    .locals 5

    .line 286
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getAudioAssetManager(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :cond_0
    new-instance v2, Lcom/twobigears/audio360/AudioAssetManager;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/AudioAssetManager;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getAudioMix(Ljava/nio/ByteBuffer;II)Lcom/twobigears/audio360/EngineError;
    .locals 6

    .line 130
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getAudioMix(JLcom/twobigears/audio360/AudioEngine;Ljava/nio/ByteBuffer;II)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public getBufferSize()I
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getBufferSize(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    return v0
.end method

.method public getDSPTime()J
    .locals 2

    .line 246
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getDSPTime(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGain(Lcom/twobigears/audio360/SWIGTYPE_p_void;[F)Lcom/twobigears/audio360/EngineError;
    .locals 6

    .line 194
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getGain(JLcom/twobigears/audio360/AudioEngine;J[F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public getListenerForward()Lcom/twobigears/audio360/TBVector;
    .locals 4

    .line 94
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    iget-wide v1, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getListenerForward(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public getListenerPosition()Lcom/twobigears/audio360/TBVector;
    .locals 4

    .line 86
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    iget-wide v1, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getListenerPosition(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public getListenerRotation()Lcom/twobigears/audio360/TBQuat;
    .locals 4

    .line 90
    new-instance v0, Lcom/twobigears/audio360/TBQuat;

    iget-wide v1, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getListenerRotation(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-object v0
.end method

.method public getListenerScale()F
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getListenerScale(JLcom/twobigears/audio360/AudioEngine;)F

    move-result v0

    return v0
.end method

.method public getListenerUp()Lcom/twobigears/audio360/TBVector;
    .locals 4

    .line 98
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    iget-wide v1, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getListenerUp(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public getMasterBusName()Ljava/lang/String;
    .locals 2

    .line 407
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getMasterBusName(JLcom/twobigears/audio360/AudioEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMasterReverbBypass()Z
    .locals 2

    .line 323
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getMasterReverbBypass(JLcom/twobigears/audio360/AudioEngine;)Z

    move-result v0

    return v0
.end method

.method public getMasterReverbDampening()F
    .locals 2

    .line 347
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getMasterReverbDampening(JLcom/twobigears/audio360/AudioEngine;)F

    move-result v0

    return v0
.end method

.method public getMasterReverbRoomSize()F
    .locals 2

    .line 339
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getMasterReverbRoomSize(JLcom/twobigears/audio360/AudioEngine;)F

    move-result v0

    return v0
.end method

.method public getMasterReverbWetLevel()F
    .locals 2

    .line 331
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getMasterReverbWetLevel(JLcom/twobigears/audio360/AudioEngine;)F

    move-result v0

    return v0
.end method

.method public getMasterReverbWidth()F
    .locals 2

    .line 355
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getMasterReverbWidth(JLcom/twobigears/audio360/AudioEngine;)F

    move-result v0

    return v0
.end method

.method public getMasterVolume()F
    .locals 2

    .line 295
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getMasterVolume(JLcom/twobigears/audio360/AudioEngine;)F

    move-result v0

    return v0
.end method

.method public getName(Lcom/twobigears/audio360/SWIGTYPE_p_void;)Ljava/lang/String;
    .locals 4

    .line 403
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getName(JLcom/twobigears/audio360/AudioEngine;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNumBinaural()I
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getNumBinaural(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    return v0
.end method

.method public getNumOutputBuffers()J
    .locals 2

    .line 254
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getNumOutputBuffers(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputAudioDeviceName()Ljava/lang/String;
    .locals 2

    .line 266
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getOutputAudioDeviceName(JLcom/twobigears/audio360/AudioEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputLatencyMs()D
    .locals 2

    .line 262
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getOutputLatencyMs(JLcom/twobigears/audio360/AudioEngine;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputLatencySamples()I
    .locals 2

    .line 258
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getOutputLatencySamples(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    return v0
.end method

.method public getRenderedLoudness()Lcom/twobigears/audio360/LoudnessStatistics;
    .locals 4

    .line 230
    new-instance v0, Lcom/twobigears/audio360/LoudnessStatistics;

    iget-wide v1, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getRenderedLoudness(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/LoudnessStatistics;-><init>(JZ)V

    return-object v0
.end method

.method public getSampleRate()F
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getSampleRate(JLcom/twobigears/audio360/AudioEngine;)F

    move-result v0

    return v0
.end method

.method public getStats()Lcom/twobigears/audio360/EngineStatistics;
    .locals 4

    .line 307
    new-instance v0, Lcom/twobigears/audio360/EngineStatistics;

    iget-wide v1, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getStats(JLcom/twobigears/audio360/AudioEngine;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/EngineStatistics;-><init>(JZ)V

    return-object v0
.end method

.method public getVersionHash()Ljava/lang/String;
    .locals 2

    .line 226
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getVersionHash(JLcom/twobigears/audio360/AudioEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionMajor()I
    .locals 2

    .line 214
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getVersionMajor(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    return v0
.end method

.method public getVersionMinor()I
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getVersionMinor(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    return v0
.end method

.method public getVersionPatch()I
    .locals 2

    .line 222
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_getVersionPatch(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    return v0
.end method

.method public isMasterMuteEnabled()Z
    .locals 2

    .line 303
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_isMasterMuteEnabled(JLcom/twobigears/audio360/AudioEngine;)Z

    move-result v0

    return v0
.end method

.method public mixAudioInput(Z)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 274
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_mixAudioInput(JLcom/twobigears/audio360/AudioEngine;Z)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public openAudioInput(Ljava/lang/String;)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 270
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_openAudioInput(JLcom/twobigears/audio360/AudioEngine;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public positionalTrackingEnabled()Z
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_positionalTrackingEnabled(JLcom/twobigears/audio360/AudioEngine;)Z

    move-result v0

    return v0
.end method

.method public resetLoudness()V
    .locals 2

    .line 234
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_resetLoudness(JLcom/twobigears/audio360/AudioEngine;)V

    return-void
.end method

.method public saveGraph(Ljava/lang/String;)Z
    .locals 2

    .line 359
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_saveGraph(JLcom/twobigears/audio360/AudioEngine;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setAudioInputMixCallback(Lcom/twobigears/audio360/SWIGTYPE_p_f_p_float_size_t_size_t_p_void__void;Lcom/twobigears/audio360/SWIGTYPE_p_void;)Lcom/twobigears/audio360/EngineError;
    .locals 7

    .line 134
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_f_p_float_size_t_size_t_p_void__void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_f_p_float_size_t_size_t_p_void__void;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v5

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setAudioInputMixCallback(JLcom/twobigears/audio360/AudioEngine;JJ)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setEventListener(Lcom/twobigears/audio360/EventListener;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/twobigears/audio360/AudioEngine;->eventListener_:Lcom/twobigears/audio360/EventListener;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/twobigears/audio360/EventListener;->delete()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/twobigears/audio360/AudioEngine;->eventListener_:Lcom/twobigears/audio360/EventListener;

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/twobigears/audio360/AudioEngine;->eventListener_:Lcom/twobigears/audio360/EventListener;

    .line 50
    invoke-direct {p0, p1}, Lcom/twobigears/audio360/AudioEngine;->setEventListenerInternal(Lcom/twobigears/audio360/EventListener;)V

    return-void
.end method

.method public setGain(Lcom/twobigears/audio360/SWIGTYPE_p_void;FF)Lcom/twobigears/audio360/EngineError;
    .locals 7

    .line 190
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v3

    move-object v2, p0

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setGain(JLcom/twobigears/audio360/AudioEngine;JFF)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setInputMixGain(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 278
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setInputMixGain(JLcom/twobigears/audio360/AudioEngine;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setListenerPosition(Lcom/twobigears/audio360/TBVector;)V
    .locals 6

    .line 82
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setListenerPosition(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/TBVector;)V

    return-void
.end method

.method public setListenerRotation(FFF)V
    .locals 6

    .line 78
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setListenerRotation__SWIG_2(JLcom/twobigears/audio360/AudioEngine;FFF)V

    return-void
.end method

.method public setListenerRotation(Lcom/twobigears/audio360/TBQuat;)V
    .locals 6

    .line 74
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/TBQuat;->getCPtr(Lcom/twobigears/audio360/TBQuat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setListenerRotation__SWIG_1(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/TBQuat;)V

    return-void
.end method

.method public setListenerRotation(Lcom/twobigears/audio360/TBVector;Lcom/twobigears/audio360/TBVector;)V
    .locals 9

    .line 70
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setListenerRotation__SWIG_0(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)V

    return-void
.end method

.method public setListenerScale(F)V
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setListenerScale(JLcom/twobigears/audio360/AudioEngine;F)V

    return-void
.end method

.method public setMasterReverbBypass(Z)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 319
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setMasterReverbBypass(JLcom/twobigears/audio360/AudioEngine;Z)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setMasterReverbDampening(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 343
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setMasterReverbDampening(JLcom/twobigears/audio360/AudioEngine;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setMasterReverbRoomSize(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 335
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setMasterReverbRoomSize(JLcom/twobigears/audio360/AudioEngine;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setMasterReverbWetLevel(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 327
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setMasterReverbWetLevel(JLcom/twobigears/audio360/AudioEngine;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setMasterReverbWidth(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 351
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setMasterReverbWidth(JLcom/twobigears/audio360/AudioEngine;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setMasterVolume(FF)V
    .locals 2

    .line 291
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setMasterVolume(JLcom/twobigears/audio360/AudioEngine;FF)V

    return-void
.end method

.method public setName(Lcom/twobigears/audio360/SWIGTYPE_p_void;Ljava/lang/String;)Lcom/twobigears/audio360/EngineError;
    .locals 6

    .line 198
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setName(JLcom/twobigears/audio360/AudioEngine;JLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setNumBinaural(I)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setNumBinaural(JLcom/twobigears/audio360/AudioEngine;I)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setNumOutputBuffers(J)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 250
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_setNumOutputBuffers(JLcom/twobigears/audio360/AudioEngine;J)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public start()Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_start(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object v0

    return-object v0
.end method

.method public suspend()Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_suspend(JLcom/twobigears/audio360/AudioEngine;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioEngine_update(JLcom/twobigears/audio360/AudioEngine;)V

    return-void
.end method
