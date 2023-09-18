.class public Lcom/twobigears/audio360/TBQuat;
.super Ljava/lang/Object;
.source "TBQuat.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 74
    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->new_TBQuat__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 78
    invoke-static {p1, p2, p3, p4}, Lcom/twobigears/audio360/Audio360JNI;->new_TBQuat__SWIG_1(FFFF)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/twobigears/audio360/TBQuat;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/twobigears/audio360/TBQuat;)V
    .locals 2

    .line 82
    invoke-static {p1}, Lcom/twobigears/audio360/TBQuat;->getCPtr(Lcom/twobigears/audio360/TBQuat;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/twobigears/audio360/Audio360JNI;->new_TBQuat__SWIG_2(JLcom/twobigears/audio360/TBQuat;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-void
.end method

.method public static antiRotateVectorByQuat(Lcom/twobigears/audio360/TBQuat;Lcom/twobigears/audio360/TBVector;)Lcom/twobigears/audio360/TBVector;
    .locals 7

    .line 118
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    invoke-static {p0}, Lcom/twobigears/audio360/TBQuat;->getCPtr(Lcom/twobigears/audio360/TBQuat;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_antiRotateVectorByQuat(JLcom/twobigears/audio360/TBQuat;JLcom/twobigears/audio360/TBVector;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public static convertFromOpenGLQuaternion(FFFF)Lcom/twobigears/audio360/TBQuat;
    .locals 1

    .line 98
    new-instance v0, Lcom/twobigears/audio360/TBQuat;

    invoke-static {p0, p1, p2, p3}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_convertFromOpenGLQuaternion(FFFF)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-object v0
.end method

.method public static generateRandomQuat()Lcom/twobigears/audio360/TBQuat;
    .locals 4

    .line 154
    new-instance v0, Lcom/twobigears/audio360/TBQuat;

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_generateRandomQuat()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-object v0
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/TBQuat;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static getEulerAnglesFromQuat(Lcom/twobigears/audio360/TBQuat;)Lcom/twobigears/audio360/TBVector;
    .locals 3

    .line 106
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    invoke-static {p0}, Lcom/twobigears/audio360/TBQuat;->getCPtr(Lcom/twobigears/audio360/TBQuat;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_getEulerAnglesFromQuat(JLcom/twobigears/audio360/TBQuat;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public static getForwardFromQuat(Lcom/twobigears/audio360/TBQuat;)Lcom/twobigears/audio360/TBVector;
    .locals 3

    .line 126
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    invoke-static {p0}, Lcom/twobigears/audio360/TBQuat;->getCPtr(Lcom/twobigears/audio360/TBQuat;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_getForwardFromQuat(JLcom/twobigears/audio360/TBQuat;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public static getFromToQuatRotation(Lcom/twobigears/audio360/TBVector;Lcom/twobigears/audio360/TBVector;)Lcom/twobigears/audio360/TBQuat;
    .locals 7

    .line 122
    new-instance v0, Lcom/twobigears/audio360/TBQuat;

    invoke-static {p0}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_getFromToQuatRotation(JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-object v0
.end method

.method public static getQuatFromEulerAngles(FFF)Lcom/twobigears/audio360/TBQuat;
    .locals 1

    .line 102
    new-instance v0, Lcom/twobigears/audio360/TBQuat;

    invoke-static {p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_getQuatFromEulerAngles(FFF)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-object v0
.end method

.method public static getQuatFromForwardAndUpVectors(Lcom/twobigears/audio360/TBVector;Lcom/twobigears/audio360/TBVector;)Lcom/twobigears/audio360/TBQuat;
    .locals 7

    .line 138
    new-instance v0, Lcom/twobigears/audio360/TBQuat;

    invoke-static {p0}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_getQuatFromForwardAndUpVectors(JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-object v0
.end method

.method public static getQuatFromMatrix(FFFFFFFFF)Lcom/twobigears/audio360/TBQuat;
    .locals 1

    .line 142
    new-instance v0, Lcom/twobigears/audio360/TBQuat;

    invoke-static/range {p0 .. p8}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_getQuatFromMatrix(FFFFFFFFF)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-direct {v0, p0, p1, p2}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-object v0
.end method

.method public static getRightFromQuat(Lcom/twobigears/audio360/TBQuat;)Lcom/twobigears/audio360/TBVector;
    .locals 3

    .line 134
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    invoke-static {p0}, Lcom/twobigears/audio360/TBQuat;->getCPtr(Lcom/twobigears/audio360/TBQuat;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_getRightFromQuat(JLcom/twobigears/audio360/TBQuat;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public static getUpFromQuat(Lcom/twobigears/audio360/TBQuat;)Lcom/twobigears/audio360/TBVector;
    .locals 3

    .line 130
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    invoke-static {p0}, Lcom/twobigears/audio360/TBQuat;->getCPtr(Lcom/twobigears/audio360/TBQuat;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_getUpFromQuat(JLcom/twobigears/audio360/TBQuat;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method

.method public static identity()Lcom/twobigears/audio360/TBQuat;
    .locals 4

    .line 146
    new-instance v0, Lcom/twobigears/audio360/TBQuat;

    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_identity()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-object v0
.end method

.method public static quatProductUnNormalised(Lcom/twobigears/audio360/TBQuat;Lcom/twobigears/audio360/TBQuat;)Lcom/twobigears/audio360/TBQuat;
    .locals 7

    .line 110
    new-instance v0, Lcom/twobigears/audio360/TBQuat;

    invoke-static {p0}, Lcom/twobigears/audio360/TBQuat;->getCPtr(Lcom/twobigears/audio360/TBQuat;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/twobigears/audio360/TBQuat;->getCPtr(Lcom/twobigears/audio360/TBQuat;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_quatProductUnNormalised(JLcom/twobigears/audio360/TBQuat;JLcom/twobigears/audio360/TBQuat;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-object v0
.end method

.method public static rotateVectorByQuat(Lcom/twobigears/audio360/TBQuat;Lcom/twobigears/audio360/TBVector;)Lcom/twobigears/audio360/TBVector;
    .locals 7

    .line 114
    new-instance v0, Lcom/twobigears/audio360/TBVector;

    invoke-static {p0}, Lcom/twobigears/audio360/TBQuat;->getCPtr(Lcom/twobigears/audio360/TBQuat;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/twobigears/audio360/TBVector;->getCPtr(Lcom/twobigears/audio360/TBVector;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_rotateVectorByQuat(JLcom/twobigears/audio360/TBQuat;JLcom/twobigears/audio360/TBVector;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/twobigears/audio360/TBVector;-><init>(JZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 32
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 33
    iget-boolean v4, p0, Lcom/twobigears/audio360/TBQuat;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 34
    iput-boolean v4, p0, Lcom/twobigears/audio360/TBQuat;->swigCMemOwn:Z

    .line 35
    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_TBQuat(J)V

    .line 37
    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/twobigears/audio360/TBQuat;->delete()V

    return-void
.end method

.method public getW()F
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_w_get(JLcom/twobigears/audio360/TBQuat;)F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_x_get(JLcom/twobigears/audio360/TBQuat;)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_y_get(JLcom/twobigears/audio360/TBQuat;)F

    move-result v0

    return v0
.end method

.method public getZ()F
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_z_get(JLcom/twobigears/audio360/TBQuat;)F

    move-result v0

    return v0
.end method

.method public invert()Lcom/twobigears/audio360/TBQuat;
    .locals 4

    .line 94
    new-instance v0, Lcom/twobigears/audio360/TBQuat;

    iget-wide v1, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_invert(JLcom/twobigears/audio360/TBQuat;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/TBQuat;-><init>(JZ)V

    return-object v0
.end method

.method public normalise()V
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_normalise(JLcom/twobigears/audio360/TBQuat;)V

    return-void
.end method

.method public setW(F)V
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_w_set(JLcom/twobigears/audio360/TBQuat;F)V

    return-void
.end method

.method public setX(F)V
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_x_set(JLcom/twobigears/audio360/TBQuat;F)V

    return-void
.end method

.method public setY(F)V
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_y_set(JLcom/twobigears/audio360/TBQuat;F)V

    return-void
.end method

.method public setZ(F)V
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_z_set(JLcom/twobigears/audio360/TBQuat;F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_toString__SWIG_1(JLcom/twobigears/audio360/TBQuat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/twobigears/audio360/TBQuat;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->TBQuat_toString__SWIG_0(JLcom/twobigears/audio360/TBQuat;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
