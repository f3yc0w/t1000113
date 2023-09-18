.class public Lcom/twobigears/audio360/IOStream;
.super Ljava/lang/Object;
.source "IOStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twobigears/audio360/IOStream$StreamOptions;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/twobigears/audio360/IOStream;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J

    return-void
.end method

.method public static createFileStream(Ljava/lang/String;Lcom/twobigears/audio360/IOStream$StreamOptions;)Lcom/twobigears/audio360/IOStream;
    .locals 3

    .line 83
    invoke-virtual {p1}, Lcom/twobigears/audio360/IOStream$StreamOptions;->swigValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_createFileStream__SWIG_1(Ljava/lang/String;I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Lcom/twobigears/audio360/IOStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/twobigears/audio360/IOStream;-><init>(JZ)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static createFileStream(Ljava/lang/String;Lcom/twobigears/audio360/IOStream$StreamOptions;Lcom/twobigears/audio360/AssetDescriptor;)Lcom/twobigears/audio360/IOStream;
    .locals 2

    .line 78
    invoke-virtual {p1}, Lcom/twobigears/audio360/IOStream$StreamOptions;->swigValue()I

    move-result p1

    invoke-static {p2}, Lcom/twobigears/audio360/AssetDescriptor;->getCPtr(Lcom/twobigears/audio360/AssetDescriptor;)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_createFileStream__SWIG_0(Ljava/lang/String;IJLcom/twobigears/audio360/AssetDescriptor;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 79
    :cond_0
    new-instance p2, Lcom/twobigears/audio360/IOStream;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/twobigears/audio360/IOStream;-><init>(JZ)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method public static createMemoryStream(Lcom/twobigears/audio360/SWIGTYPE_p_void;J)Lcom/twobigears/audio360/IOStream;
    .locals 2

    .line 93
    invoke-static {p0}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_createMemoryStream__SWIG_1(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 94
    :cond_0
    new-instance p2, Lcom/twobigears/audio360/IOStream;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/twobigears/audio360/IOStream;-><init>(JZ)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method public static createMemoryStream(Lcom/twobigears/audio360/SWIGTYPE_p_void;JJ)Lcom/twobigears/audio360/IOStream;
    .locals 6

    .line 88
    invoke-static {p0}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_createMemoryStream__SWIG_0(JJJ)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p4, p0, p2

    if-nez p4, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 89
    :cond_0
    new-instance p2, Lcom/twobigears/audio360/IOStream;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p1, p3}, Lcom/twobigears/audio360/IOStream;-><init>(JZ)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/IOStream;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public canSeek()Z
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_canSeek(JLcom/twobigears/audio360/IOStream;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 32
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 33
    iget-boolean v4, p0, Lcom/twobigears/audio360/IOStream;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 34
    iput-boolean v4, p0, Lcom/twobigears/audio360/IOStream;->swigCMemOwn:Z

    .line 35
    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_IOStream(J)V

    .line 37
    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J
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

    .line 70
    iget-wide v0, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_endOfStream(JLcom/twobigears/audio360/IOStream;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/twobigears/audio360/IOStream;->delete()V

    return-void
.end method

.method public getFD()I
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_getFD(JLcom/twobigears/audio360/IOStream;)I

    move-result v0

    return v0
.end method

.method public getPosition()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_getPosition(JLcom/twobigears/audio360/IOStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_getSize(JLcom/twobigears/audio360/IOStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public pushBackByte(I)I
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_pushBackByte(JLcom/twobigears/audio360/IOStream;I)I

    move-result p1

    return p1
.end method

.method public read(Ljava/nio/ByteBuffer;J)J
    .locals 6

    .line 100
    iget-wide v0, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_read(JLcom/twobigears/audio360/IOStream;Ljava/nio/ByteBuffer;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public ready()Z
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_ready(JLcom/twobigears/audio360/IOStream;)Z

    move-result v0

    return v0
.end method

.method public setPosition(J)Z
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_setPosition__SWIG_0(JLcom/twobigears/audio360/IOStream;J)Z

    move-result p1

    return p1
.end method

.method public setPosition(JI)Z
    .locals 6

    .line 50
    iget-wide v0, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_setPosition__SWIG_1(JLcom/twobigears/audio360/IOStream;JI)Z

    move-result p1

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;J)J
    .locals 6

    .line 107
    iget-wide v0, p0, Lcom/twobigears/audio360/IOStream;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->IOStream_write(JLcom/twobigears/audio360/IOStream;Ljava/nio/ByteBuffer;J)J

    move-result-wide p1

    return-wide p1
.end method
