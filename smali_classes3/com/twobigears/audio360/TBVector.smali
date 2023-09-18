.class public Lcom/twobigears/audio360/TBVector;
.super Ljava/lang/Object;
.source "TBVector.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 66
    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->new_TBVector__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 74
    invoke-static {p1}, Lcom/twobigears/audio360/Audio360JNI;->new_TBVector__SWIG_2(F)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 70
    invoke-static {p1, p2, p3}, Lcom/twobigears/audio360/Audio360JNI;->new_TBVector__SWIG_1(FFF)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/twobigears/audio360/TBVector;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    return-void
.end method

.method public static Angle(Lcom/twobigears/audio360/TBVector;Lcom/twobigears/audio360/TBVector;)F
    .locals 6

    .line 98
    invoke-static {p0}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_Angle(JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)F

    move-result p0

    return p0
.end method

.method public static CrossProduct(Lcom/twobigears/audio360/TBVector;Lcom/twobigears/audio360/TBVector;)Lcom/twobigears/audio360/TBVector;
    .locals 7

    .line 78
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    invoke-static {p0}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_CrossProduct(JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public static DotProduct(Lcom/twobigears/audio360/TBVector;Lcom/twobigears/audio360/TBVector;)F
    .locals 6

    .line 94
    invoke-static {p0}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_DotProduct(JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)F

    move-result p0

    return p0
.end method

.method public static clampMagnitude(Lcom/twobigears/audio360/TBVector;F)V
    .locals 2

    .line 106
    invoke-static {p0}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_clampMagnitude(JLcom/twobigears/audio360/TBVector;F)V

    return-void
.end method

.method public static forward()Lcom/twobigears/audio360/TBVector;
    .locals 4

    .line 86
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_forward()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/TBVector;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static getVectorFromAziEle(FF)Lcom/twobigears/audio360/TBVector;
    .locals 2

    .line 150
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    invoke-static {p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_getVectorFromAziEle(FF)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public static getVectorFromAziEleDist(FFF)Lcom/twobigears/audio360/TBVector;
    .locals 1

    .line 154
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    invoke-static {p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_getVectorFromAziEleDist(FFF)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public static getVectorFromEuler(Lcom/twobigears/audio360/TBVector;)Lcom/twobigears/audio360/TBVector;
    .locals 3

    .line 158
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    invoke-static {p0}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_getVectorFromEuler(JLcom/twobigears/audio360/TBVector;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public static magSquared(Lcom/twobigears/audio360/TBVector;)F
    .locals 2

    .line 110
    invoke-static {p0}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_magSquared(JLcom/twobigears/audio360/TBVector;)F

    move-result p0

    return p0
.end method

.method public static magnitude(Lcom/twobigears/audio360/TBVector;)F
    .locals 2

    .line 102
    invoke-static {p0}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_magnitude(JLcom/twobigears/audio360/TBVector;)F

    move-result p0

    return p0
.end method

.method public static normalise(Lcom/twobigears/audio360/TBVector;)V
    .locals 2

    .line 114
    invoke-static {p0}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_normalise(JLcom/twobigears/audio360/TBVector;)V

    return-void
.end method

.method public static projectOntoPlane(Lcom/twobigears/audio360/TBVector;Lcom/twobigears/audio360/TBVector;)Lcom/twobigears/audio360/TBVector;
    .locals 7

    .line 126
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    invoke-static {p0}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_projectOntoPlane(JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public static rotateByVectors(Lcom/twobigears/audio360/TBVector;Lcom/twobigears/audio360/TBVector;Lcom/twobigears/audio360/TBVector;)V
    .locals 9

    .line 130
    invoke-static {p0}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_rotateByVectors(JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)V

    return-void
.end method

.method public static up()Lcom/twobigears/audio360/TBVector;
    .locals 4

    .line 90
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_up()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public static zero()Lcom/twobigears/audio360/TBVector;
    .locals 4

    .line 82
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_zero()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method


# virtual methods
.method public abs()V
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_abs__SWIG_0(JLcom/twobigears/audio360/TBVector;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 32
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 33
    iget-boolean v4, p0, Lcom/twobigears/audio360/TBVector;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 34
    iput-boolean v4, p0, Lcom/twobigears/audio360/TBVector;->swigCMemOwn:Z

    .line 35
    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_TBVector(J)V

    .line 37
    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/twobigears/audio360/TBVector;->delete()V

    return-void
.end method

.method public getX()F
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_x_get(JLcom/twobigears/audio360/TBVector;)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_y_get(JLcom/twobigears/audio360/TBVector;)F

    move-result v0

    return v0
.end method

.method public getZ()F
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_z_get(JLcom/twobigears/audio360/TBVector;)F

    move-result v0

    return v0
.end method

.method public max_val()F
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_max_val(JLcom/twobigears/audio360/TBVector;)F

    move-result v0

    return v0
.end method

.method public min_val()F
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_min_val(JLcom/twobigears/audio360/TBVector;)F

    move-result v0

    return v0
.end method

.method public set(FFF)V
    .locals 6

    .line 118
    iget-wide v0, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_set(JLcom/twobigears/audio360/TBVector;FFF)V

    return-void
.end method

.method public setX(F)V
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_x_set(JLcom/twobigears/audio360/TBVector;F)V

    return-void
.end method

.method public setY(F)V
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_y_set(JLcom/twobigears/audio360/TBVector;F)V

    return-void
.end method

.method public setZ(F)V
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_z_set(JLcom/twobigears/audio360/TBVector;F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_toString__SWIG_1(JLcom/twobigears/audio360/TBVector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/twobigears/audio360/TBVector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TBVector_toString__SWIG_0(JLcom/twobigears/audio360/TBVector;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
