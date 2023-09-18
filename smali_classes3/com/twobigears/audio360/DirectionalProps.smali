.class public Lcom/twobigears/audio360/DirectionalProps;
.super Ljava/lang/Object;
.source "DirectionalProps.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->new_DirectionalProps__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twobigears/audio360/DirectionalProps;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 62
    invoke-static {p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->new_DirectionalProps__SWIG_1(FF)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/twobigears/audio360/DirectionalProps;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/twobigears/audio360/DirectionalProps;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/twobigears/audio360/DirectionalProps;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/DirectionalProps;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/DirectionalProps;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 32
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/DirectionalProps;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 33
    iget-boolean v4, p0, Lcom/twobigears/audio360/DirectionalProps;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 34
    iput-boolean v4, p0, Lcom/twobigears/audio360/DirectionalProps;->swigCMemOwn:Z

    .line 35
    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_DirectionalProps(J)V

    .line 37
    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/DirectionalProps;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/twobigears/audio360/DirectionalProps;->delete()V

    return-void
.end method

.method public getConeArea()F
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/twobigears/audio360/DirectionalProps;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->DirectionalProps_coneArea_get(JLcom/twobigears/audio360/DirectionalProps;)F

    move-result v0

    return v0
.end method

.method public getEffectLevel()F
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/twobigears/audio360/DirectionalProps;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->DirectionalProps_effectLevel_get(JLcom/twobigears/audio360/DirectionalProps;)F

    move-result v0

    return v0
.end method

.method public set(FF)V
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/twobigears/audio360/DirectionalProps;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->DirectionalProps_set(JLcom/twobigears/audio360/DirectionalProps;FF)V

    return-void
.end method

.method public setConeArea(F)V
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/twobigears/audio360/DirectionalProps;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->DirectionalProps_coneArea_set(JLcom/twobigears/audio360/DirectionalProps;F)V

    return-void
.end method

.method public setEffectLevel(F)V
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/twobigears/audio360/DirectionalProps;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->DirectionalProps_effectLevel_set(JLcom/twobigears/audio360/DirectionalProps;F)V

    return-void
.end method
