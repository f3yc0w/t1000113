.class final Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/util/ListenerSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

.field public final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private needsIterationFinishedEvent:Z

.field private released:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    .line 265
    new-instance p1, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplr2avp/util/ListenerSet$Event<",
            "TT;>;)V"
        }
    .end annotation

    .line 276
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;->add(I)Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    :cond_0
    const/4 p1, 0x1

    .line 280
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 281
    iget-object p1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/google/android/exoplr2avp/util/ListenerSet$Event;->invoke(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public iterationFinished(Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 286
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;->build()Lcom/google/android/exoplr2avp/util/FlagSet;

    move-result-object v0

    .line 290
    new-instance v1, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    const/4 v1, 0x0

    .line 291
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 292
    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Lcom/google/android/exoplr2avp/util/FlagSet;)V

    :cond_0
    return-void
.end method

.method public release(Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->released:Z

    .line 270
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;->build()Lcom/google/android/exoplr2avp/util/FlagSet;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Lcom/google/android/exoplr2avp/util/FlagSet;)V

    :cond_0
    return-void
.end method
