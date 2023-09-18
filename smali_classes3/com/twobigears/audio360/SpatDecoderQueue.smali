.class public Lcom/twobigears/audio360/SpatDecoderQueue;
.super Lcom/twobigears/audio360/SpatDecoderInterface;
.source "SpatDecoderQueue.java"


# instance fields
.field private eventListener_:Lcom/twobigears/audio360/EventListener;

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2

    .line 17
    invoke-static {p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderQueue_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/twobigears/audio360/SpatDecoderInterface;-><init>(JZ)V

    .line 18
    iput-wide p1, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/SpatDecoderQueue;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 22
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method private setEventListenerInternal(Lcom/twobigears/audio360/EventListener;)V
    .locals 6

    .line 85
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/EventListener;->getCPtr(Lcom/twobigears/audio360/EventListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderQueue_setEventListenerInternal(JLcom/twobigears/audio360/SpatDecoderQueue;JLcom/twobigears/audio360/EventListener;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 26
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 27
    iget-boolean v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCMemOwn:Z

    if-nez v0, :cond_0

    .line 31
    iput-wide v2, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCPtr:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCMemOwn:Z

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/twobigears/audio360/SpatDecoderInterface;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enqueueDataFloat(Ljava/nio/ByteBuffer;ILcom/twobigears/audio360/ChannelMap;)I
    .locals 6

    .line 81
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCPtr:J

    invoke-virtual {p3}, Lcom/twobigears/audio360/ChannelMap;->swigValue()I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderQueue_enqueueDataFloat(JLcom/twobigears/audio360/SpatDecoderQueue;Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method public enqueueDataInt16(Ljava/nio/ByteBuffer;ILcom/twobigears/audio360/ChannelMap;)I
    .locals 6

    .line 77
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCPtr:J

    invoke-virtual {p3}, Lcom/twobigears/audio360/ChannelMap;->swigValue()I

    move-result v5

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderQueue_enqueueDataInt16(JLcom/twobigears/audio360/SpatDecoderQueue;Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method public enqueueSilence(ILcom/twobigears/audio360/ChannelMap;)I
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCPtr:J

    invoke-virtual {p2}, Lcom/twobigears/audio360/ChannelMap;->swigValue()I

    move-result p2

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderQueue_enqueueSilence(JLcom/twobigears/audio360/SpatDecoderQueue;II)I

    move-result p1

    return p1
.end method

.method public flushQueue()V
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderQueue_flushQueue(JLcom/twobigears/audio360/SpatDecoderQueue;)V

    return-void
.end method

.method public getEndOfStreamStatus()Z
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderQueue_getEndOfStreamStatus(JLcom/twobigears/audio360/SpatDecoderQueue;)Z

    move-result v0

    return v0
.end method

.method public getFreeSpaceInQueue(Lcom/twobigears/audio360/ChannelMap;)I
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/ChannelMap;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderQueue_getFreeSpaceInQueue(JLcom/twobigears/audio360/SpatDecoderQueue;I)I

    move-result p1

    return p1
.end method

.method public getNumSamplesDequeuedPerChannel()Ljava/math/BigInteger;
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderQueue_getNumSamplesDequeuedPerChannel(JLcom/twobigears/audio360/SpatDecoderQueue;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getQueueSize(Lcom/twobigears/audio360/ChannelMap;)I
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/ChannelMap;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderQueue_getQueueSize(JLcom/twobigears/audio360/SpatDecoderQueue;I)I

    move-result p1

    return p1
.end method

.method public setEndOfStream(Z)V
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderQueue_setEndOfStream(JLcom/twobigears/audio360/SpatDecoderQueue;Z)V

    return-void
.end method

.method public setEventListener(Lcom/twobigears/audio360/EventListener;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->eventListener_:Lcom/twobigears/audio360/EventListener;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/twobigears/audio360/EventListener;->delete()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->eventListener_:Lcom/twobigears/audio360/EventListener;

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/twobigears/audio360/SpatDecoderQueue;->eventListener_:Lcom/twobigears/audio360/EventListener;

    .line 45
    invoke-direct {p0, p1}, Lcom/twobigears/audio360/SpatDecoderQueue;->setEventListenerInternal(Lcom/twobigears/audio360/EventListener;)V

    return-void
.end method
