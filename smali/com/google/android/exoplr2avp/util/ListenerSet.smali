.class public final Lcom/google/android/exoplr2avp/util/ListenerSet;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;,
        Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;,
        Lcom/google/android/exoplr2avp/util/ListenerSet$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MSG_ITERATION_FINISHED:I


# instance fields
.field private final clock:Lcom/google/android/exoplr2avp/util/Clock;

.field private final flushingEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

.field private final iterationFinishedEvent:Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final queuedEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplr2avp/util/Clock;Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplr2avp/util/Clock;",
            "Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplr2avp/util/Clock;Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplr2avp/util/Clock;Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplr2avp/util/Clock;",
            "Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p3, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    .line 99
    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 100
    iput-object p4, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;

    .line 101
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    .line 102
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    .line 105
    new-instance p1, Lcom/google/android/exoplr2avp/util/-$$Lambda$ListenerSet$Zon1Y-d19BWy_LQ3URQ3WqVRriQ;

    invoke-direct {p1, p0}, Lcom/google/android/exoplr2avp/util/-$$Lambda$ListenerSet$Zon1Y-d19BWy_LQ3URQ3WqVRriQ;-><init>(Lcom/google/android/exoplr2avp/util/ListenerSet;)V

    invoke-interface {p3, p2, p1}, Lcom/google/android/exoplr2avp/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    move-result-object p1

    .line 106
    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 243
    iget-object p1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;

    .line 244
    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->iterationFinished(Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$Zon1Y-d19BWy_LQ3URQ3WqVRriQ(Lcom/google/android/exoplr2avp/util/ListenerSet;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$queueEvent$0(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;

    .line 190
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->invoke(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 145
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;

    invoke-direct {v1, p1}, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public copy(Landroid/os/Looper;Lcom/google/android/exoplr2avp/util/Clock;Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)Lcom/google/android/exoplr2avp/util/ListenerSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplr2avp/util/Clock;",
            "Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)",
            "Lcom/google/android/exoplr2avp/util/ListenerSet<",
            "TT;>;"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/google/android/exoplr2avp/util/ListenerSet;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/exoplr2avp/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplr2avp/util/Clock;Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)V

    return-object v0
.end method

.method public copy(Landroid/os/Looper;Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)Lcom/google/android/exoplr2avp/util/ListenerSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)",
            "Lcom/google/android/exoplr2avp/util/ListenerSet<",
            "TT;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->copy(Landroid/os/Looper;Lcom/google/android/exoplr2avp/util/Clock;Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)Lcom/google/android/exoplr2avp/util/ListenerSet;

    move-result-object p1

    return-object p1
.end method

.method public flushEvents()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->sendMessageAtFrontOfQueue(Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;)Z

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 204
    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 205
    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    if-eqz v0, :cond_2

    return-void

    .line 210
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplr2avp/util/ListenerSet$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 187
    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/exoplr2avp/util/-$$Lambda$ListenerSet$DVkVkrgVacqzqAQBdKazvku2TgI;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/exoplr2avp/util/-$$Lambda$ListenerSet$DVkVkrgVacqzqAQBdKazvku2TgI;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;

    .line 236
    iget-object v2, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->release(Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->released:Z

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;

    .line 161
    iget-object v2, v1, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->release(Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)V

    .line 163
    iget-object v2, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplr2avp/util/ListenerSet$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 226
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public size()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    return v0
.end method
