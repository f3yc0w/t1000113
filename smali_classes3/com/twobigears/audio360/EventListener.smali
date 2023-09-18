.class public abstract Lcom/twobigears/audio360/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->new_EventListener()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twobigears/audio360/EventListener;-><init>(JZ)V

    .line 60
    iget-wide v0, p0, Lcom/twobigears/audio360/EventListener;->swigCPtr:J

    invoke-static {p0, v0, v1, v2, v2}, Lcom/twobigears/audio360/Audio360JNI;->EventListener_director_connect(Lcom/twobigears/audio360/EventListener;JZZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/twobigears/audio360/EventListener;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/twobigears/audio360/EventListener;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/EventListener;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/EventListener;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 32
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/EventListener;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 33
    iget-boolean v4, p0, Lcom/twobigears/audio360/EventListener;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 34
    iput-boolean v4, p0, Lcom/twobigears/audio360/EventListener;->swigCMemOwn:Z

    .line 35
    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_EventListener(J)V

    .line 37
    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/EventListener;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/twobigears/audio360/EventListener;->delete()V

    return-void
.end method

.method public abstract onNewEvent(Lcom/twobigears/audio360/Event;)V
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/twobigears/audio360/EventListener;->swigCMemOwn:Z

    .line 43
    invoke-virtual {p0}, Lcom/twobigears/audio360/EventListener;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/twobigears/audio360/EventListener;->swigCMemOwn:Z

    .line 48
    iget-wide v1, p0, Lcom/twobigears/audio360/EventListener;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/twobigears/audio360/Audio360JNI;->EventListener_change_ownership(Lcom/twobigears/audio360/EventListener;JZ)V

    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/twobigears/audio360/EventListener;->swigCMemOwn:Z

    .line 53
    iget-wide v1, p0, Lcom/twobigears/audio360/EventListener;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/twobigears/audio360/Audio360JNI;->EventListener_change_ownership(Lcom/twobigears/audio360/EventListener;JZ)V

    return-void
.end method
