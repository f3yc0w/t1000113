.class public Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "DrmSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;
    }
.end annotation


# instance fields
.field private final listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

.field public final windowIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 108
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;",
            ">;I",
            "Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 119
    iput p2, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    .line 120
    iput-object p3, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V
    .locals 2

    .line 142
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public drmKeysLoaded()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 180
    iget-object v2, v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

    .line 181
    iget-object v1, v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$n3ORQGcCm1oxt8s8_zkEftOyqiY;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$n3ORQGcCm1oxt8s8_zkEftOyqiY;-><init>(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmKeysRemoved()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 209
    iget-object v2, v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

    .line 210
    iget-object v1, v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$kxsYyeihM5bhIZav6kwjdpRLLRE;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$kxsYyeihM5bhIZav6kwjdpRLLRE;-><init>(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmKeysRestored()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 199
    iget-object v2, v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

    .line 200
    iget-object v1, v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$DT-PZjhjg2QZYoxJ5i4PlOFCgdY;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$DT-PZjhjg2QZYoxJ5i4PlOFCgdY;-><init>(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmSessionAcquired(I)V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 167
    iget-object v2, v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

    .line 168
    iget-object v1, v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$p7-m8017HD4hCgE9PNz_CE44n8A;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$p7-m8017HD4hCgE9PNz_CE44n8A;-><init>(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;I)V

    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmSessionManagerError(Ljava/lang/Exception;)V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 189
    iget-object v2, v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

    .line 190
    iget-object v1, v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$b8X-okLQ5ByOLNrOFftUa9NwIm0;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$b8X-okLQ5ByOLNrOFftUa9NwIm0;-><init>(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;Ljava/lang/Exception;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drmSessionReleased()V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 219
    iget-object v2, v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

    .line 220
    iget-object v1, v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$ufDC4j93ZhJXlKvK3VH_45RFo84;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$ufDC4j93ZhJXlKvK3VH_45RFo84;-><init>(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$drmKeysLoaded$1$DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V
    .locals 2

    .line 182
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;->onDrmKeysLoaded(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public synthetic lambda$drmKeysRemoved$4$DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V
    .locals 2

    .line 212
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;->onDrmKeysRemoved(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public synthetic lambda$drmKeysRestored$3$DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V
    .locals 2

    .line 202
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;->onDrmKeysRestored(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public synthetic lambda$drmSessionAcquired$0$DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;I)V
    .locals 2

    .line 171
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;->onDrmSessionAcquired(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    .line 172
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;->onDrmSessionAcquired(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;I)V

    return-void
.end method

.method public synthetic lambda$drmSessionManagerError$2$DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;Ljava/lang/Exception;)V
    .locals 2

    .line 192
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;->onDrmSessionManagerError(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic lambda$drmSessionReleased$5$DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V
    .locals 2

    .line 222
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;->onDrmSessionReleased(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public removeEventListener(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;

    .line 154
    iget-object v2, v1, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

    if-ne v2, p1, :cond_0

    .line 155
    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public withParameters(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;
    .locals 2

    .line 132
    new-instance v0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    return-object v0
.end method
