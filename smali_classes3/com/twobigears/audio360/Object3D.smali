.class public Lcom/twobigears/audio360/Object3D;
.super Lcom/twobigears/audio360/TransportControl;
.source "Object3D.java"


# instance fields
.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2

    .line 17
    invoke-static {p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->Object3D_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/twobigears/audio360/TransportControl;-><init>(JZ)V

    .line 18
    iput-wide p1, p0, Lcom/twobigears/audio360/Object3D;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/Object3D;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 22
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/Object3D;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 26
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/Object3D;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 27
    iget-boolean v0, p0, Lcom/twobigears/audio360/Object3D;->swigCMemOwn:Z

    if-nez v0, :cond_0

    .line 31
    iput-wide v2, p0, Lcom/twobigears/audio360/Object3D;->swigCPtr:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/twobigears/audio360/Object3D;->swigCMemOwn:Z

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/twobigears/audio360/TransportControl;->delete()V
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

.method public getPosition()Lcom/twobigears/audio360/TBVector;
    .locals 4

    .line 41
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    iget-wide v1, p0, Lcom/twobigears/audio360/Object3D;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->Object3D_getPosition(JLcom/twobigears/audio360/Object3D;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public getRotation()Lcom/twobigears/audio360/TBQuat;
    .locals 4

    .line 53
    new-instance v0, Lcom/twobigears/audio360/TBQuat;

    iget-wide v1, p0, Lcom/twobigears/audio360/Object3D;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->Object3D_getRotation(JLcom/twobigears/audio360/Object3D;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-object v0
.end method

.method public setPosition(Lcom/twobigears/audio360/TBVector;)Lcom/twobigears/audio360/EngineError;
    .locals 6

    .line 37
    iget-wide v0, p0, Lcom/twobigears/audio360/Object3D;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->Object3D_setPosition(JLcom/twobigears/audio360/Object3D;JLcom/twobigears/audio360/TBVector;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setRotation(Lcom/twobigears/audio360/TBQuat;)Lcom/twobigears/audio360/EngineError;
    .locals 6

    .line 45
    iget-wide v0, p0, Lcom/twobigears/audio360/Object3D;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/TBQuat;->getCPtr(Lcom/twobigears/audio360/TBQuat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->Object3D_setRotation__SWIG_0(JLcom/twobigears/audio360/Object3D;JLcom/twobigears/audio360/TBQuat;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setRotation(Lcom/twobigears/audio360/TBVector;Lcom/twobigears/audio360/TBVector;)Lcom/twobigears/audio360/EngineError;
    .locals 9

    .line 49
    iget-wide v0, p0, Lcom/twobigears/audio360/Object3D;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/twobigears/audio360/Audio360JNI;->Object3D_setRotation__SWIG_1(JLcom/twobigears/audio360/Object3D;JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method
