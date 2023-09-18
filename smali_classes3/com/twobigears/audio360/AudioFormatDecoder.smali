.class public Lcom/twobigears/audio360/AudioFormatDecoder;
.super Ljava/lang/Object;
.source "AudioFormatDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twobigears/audio360/AudioFormatDecoder$Info;
    }
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    return-void
.end method

.method public static create(Lcom/twobigears/audio360/IOStream;ZI)Lcom/twobigears/audio360/AudioFormatDecoder;
    .locals 2

    .line 129
    invoke-static {p0}, Lcom/twobigears/audio360/IOStream;->getCPtr(Lcom/twobigears/audio360/IOStream;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_create__SWIG_3(JLcom/twobigears/audio360/IOStream;ZI)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 130
    :cond_0
    new-instance p2, Lcom/twobigears/audio360/AudioFormatDecoder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/twobigears/audio360/AudioFormatDecoder;-><init>(JZ)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method public static create(Lcom/twobigears/audio360/IOStream;ZIF)Lcom/twobigears/audio360/AudioFormatDecoder;
    .locals 6

    .line 124
    invoke-static {p0}, Lcom/twobigears/audio360/IOStream;->getCPtr(Lcom/twobigears/audio360/IOStream;)J

    move-result-wide v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_create__SWIG_2(JLcom/twobigears/audio360/IOStream;ZIF)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 125
    :cond_0
    new-instance p2, Lcom/twobigears/audio360/AudioFormatDecoder;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/twobigears/audio360/AudioFormatDecoder;-><init>(JZ)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method public static create(Ljava/lang/String;I)Lcom/twobigears/audio360/AudioFormatDecoder;
    .locals 3

    .line 119
    invoke-static {p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_create__SWIG_1(Ljava/lang/String;I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Lcom/twobigears/audio360/AudioFormatDecoder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/twobigears/audio360/AudioFormatDecoder;-><init>(JZ)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static create(Ljava/lang/String;IF)Lcom/twobigears/audio360/AudioFormatDecoder;
    .locals 2

    .line 114
    invoke-static {p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_create__SWIG_0(Ljava/lang/String;IF)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 115
    :cond_0
    new-instance p2, Lcom/twobigears/audio360/AudioFormatDecoder;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/twobigears/audio360/AudioFormatDecoder;-><init>(JZ)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/AudioFormatDecoder;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public decode(Ljava/nio/ByteBuffer;I)J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_decode(JLcom/twobigears/audio360/AudioFormatDecoder;Ljava/nio/ByteBuffer;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public decoderError()Z
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_decoderError(JLcom/twobigears/audio360/AudioFormatDecoder;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 32
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 33
    iget-boolean v4, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 34
    iput-boolean v4, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCMemOwn:Z

    .line 35
    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_AudioFormatDecoder(J)V

    .line 37
    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J
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

.method public endOfStream()Z
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_endOfStream(JLcom/twobigears/audio360/AudioFormatDecoder;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/twobigears/audio360/AudioFormatDecoder;->delete()V

    return-void
.end method

.method public flush()V
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_flush__SWIG_1(JLcom/twobigears/audio360/AudioFormatDecoder;)V

    return-void
.end method

.method public flush(Z)V
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_flush__SWIG_0(JLcom/twobigears/audio360/AudioFormatDecoder;Z)V

    return-void
.end method

.method public getChannelMap()Lcom/twobigears/audio360/ChannelMap;
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_getChannelMap(JLcom/twobigears/audio360/AudioFormatDecoder;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/ChannelMap;->swigToEnum(I)Lcom/twobigears/audio360/ChannelMap;

    move-result-object v0

    return-object v0
.end method

.method public getInfo(Lcom/twobigears/audio360/AudioFormatDecoder$Info;)I
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/AudioFormatDecoder$Info;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_getInfo(JLcom/twobigears/audio360/AudioFormatDecoder;I)I

    move-result p1

    return p1
.end method

.method public getMaxBufferSizePerChannel()I
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_getMaxBufferSizePerChannel(JLcom/twobigears/audio360/AudioFormatDecoder;)I

    move-result v0

    return v0
.end method

.method public getMsPerChannel()D
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_getMsPerChannel(JLcom/twobigears/audio360/AudioFormatDecoder;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_getName(JLcom/twobigears/audio360/AudioFormatDecoder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumBits()I
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_getNumBits(JLcom/twobigears/audio360/AudioFormatDecoder;)I

    move-result v0

    return v0
.end method

.method public getNumOfChannels()I
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_getNumOfChannels(JLcom/twobigears/audio360/AudioFormatDecoder;)I

    move-result v0

    return v0
.end method

.method public getNumSamplesPerChannel()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_getNumSamplesPerChannel(JLcom/twobigears/audio360/AudioFormatDecoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumTotalSamples()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_getNumTotalSamples(JLcom/twobigears/audio360/AudioFormatDecoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputSampleRate()F
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_getOutputSampleRate(JLcom/twobigears/audio360/AudioFormatDecoder;)F

    move-result v0

    return v0
.end method

.method public getSamplePosition()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_getSamplePosition(JLcom/twobigears/audio360/AudioFormatDecoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSampleRate()F
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_getSampleRate(JLcom/twobigears/audio360/AudioFormatDecoder;)F

    move-result v0

    return v0
.end method

.method public seekToSample(J)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatDecoder;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatDecoder_seekToSample(JLcom/twobigears/audio360/AudioFormatDecoder;J)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method
