.class public Lcom/twobigears/audio360/AudioFormatEncoder;
.super Ljava/lang/Object;
.source "AudioFormatEncoder.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/twobigears/audio360/AudioFormatEncoder;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/twobigears/audio360/AudioFormatEncoder;->swigCPtr:J

    return-void
.end method

.method public static create(Lcom/twobigears/audio360/IOStream;Lcom/twobigears/audio360/AudioFormat;FFJILcom/twobigears/audio360/AudioFormatQuality;)Lcom/twobigears/audio360/AudioFormatEncoder;
    .locals 10

    .line 78
    invoke-static {p0}, Lcom/twobigears/audio360/IOStream;->getCPtr(Lcom/twobigears/audio360/IOStream;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/twobigears/audio360/AudioFormat;->swigValue()I

    move-result v3

    invoke-virtual/range {p7 .. p7}, Lcom/twobigears/audio360/AudioFormatQuality;->swigValue()I

    move-result v9

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    invoke-static/range {v0 .. v9}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatEncoder_create(JLcom/twobigears/audio360/IOStream;IFFJII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v2, Lcom/twobigears/audio360/AudioFormatEncoder;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/AudioFormatEncoder;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static getBitRateForQualityIndex(Lcom/twobigears/audio360/AudioFormat;I[I)Lcom/twobigears/audio360/EngineError;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/twobigears/audio360/AudioFormat;->swigValue()I

    move-result p0

    invoke-static {p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatEncoder_getBitRateForQualityIndex(II[I)I

    move-result p0

    invoke-static {p0}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p0

    return-object p0
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/AudioFormatEncoder;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatEncoder;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static getIndexForQuality(Lcom/twobigears/audio360/AudioFormat;Lcom/twobigears/audio360/AudioFormatQuality;[I)Lcom/twobigears/audio360/EngineError;
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/twobigears/audio360/AudioFormat;->swigValue()I

    move-result p0

    invoke-virtual {p1}, Lcom/twobigears/audio360/AudioFormatQuality;->swigValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatEncoder_getIndexForQuality(II[I)I

    move-result p0

    invoke-static {p0}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 32
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatEncoder;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 33
    iget-boolean v4, p0, Lcom/twobigears/audio360/AudioFormatEncoder;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 34
    iput-boolean v4, p0, Lcom/twobigears/audio360/AudioFormatEncoder;->swigCMemOwn:Z

    .line 35
    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_AudioFormatEncoder(J)V

    .line 37
    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/AudioFormatEncoder;->swigCPtr:J
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

.method public encode(Ljava/nio/ByteBuffer;JZ)J
    .locals 7

    .line 42
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatEncoder;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatEncoder_encode(JLcom/twobigears/audio360/AudioFormatEncoder;Ljava/nio/ByteBuffer;JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method protected finalize()V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/twobigears/audio360/AudioFormatEncoder;->delete()V

    return-void
.end method

.method public getAudioFormat()Lcom/twobigears/audio360/AudioFormat;
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatEncoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatEncoder_getAudioFormat(JLcom/twobigears/audio360/AudioFormatEncoder;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/AudioFormat;->swigToEnum(I)Lcom/twobigears/audio360/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public getBitRate([I)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatEncoder;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatEncoder_getBitRate(JLcom/twobigears/audio360/AudioFormatEncoder;[I)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public getMaxBufferSize()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatEncoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatEncoder_getMaxBufferSize(JLcom/twobigears/audio360/AudioFormatEncoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumOfChannels()I
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatEncoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatEncoder_getNumOfChannels(JLcom/twobigears/audio360/AudioFormatEncoder;)I

    move-result v0

    return v0
.end method

.method public getOutputSampleRate()F
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatEncoder;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatEncoder_getOutputSampleRate(JLcom/twobigears/audio360/AudioFormatEncoder;)F

    move-result v0

    return v0
.end method

.method public getQualityIndex([I)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioFormatEncoder;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioFormatEncoder_getQualityIndex(JLcom/twobigears/audio360/AudioFormatEncoder;[I)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method
