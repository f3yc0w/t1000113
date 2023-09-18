.class Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/drm/DrmSessionManager$DrmSessionReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreacquiredSessionReference"
.end annotation


# instance fields
.field private final eventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

.field private isReleased:Z

.field private session:Lcom/google/android/exoplr2avp/drm/DrmSession;

.field final synthetic this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    .line 991
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    iput-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    return-void
.end method


# virtual methods
.method public acquire(Lcom/google/android/exoplr2avp/Format;)V
    .locals 2

    .line 1001
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$700(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$TthmwvFBFgfBvl03geY2Frjgeh8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$TthmwvFBFgfBvl03geY2Frjgeh8;-><init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;Lcom/google/android/exoplr2avp/Format;)V

    .line 1002
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$acquire$0$DefaultDrmSessionManager$PreacquiredSessionReference(Lcom/google/android/exoplr2avp/Format;)V
    .locals 4

    .line 1004
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$800(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    .line 1011
    invoke-static {v0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$1400(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    const/4 v3, 0x0

    .line 1010
    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$1500(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Landroid/os/Looper;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;Z)Lcom/google/android/exoplr2avp/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->session:Lcom/google/android/exoplr2avp/drm/DrmSession;

    .line 1015
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$1300(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$release$1$DefaultDrmSessionManager$PreacquiredSessionReference()V
    .locals 2

    .line 1026
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->session:Lcom/google/android/exoplr2avp/drm/DrmSession;

    if-eqz v0, :cond_1

    .line 1030
    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->eventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/drm/DrmSession;->release(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 1032
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$1300(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 1033
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->isReleased:Z

    return-void
.end method

.method public release()V
    .locals 2

    .line 1023
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    .line 1024
    invoke-static {v0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$700(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$YYIZ9YQXGfzkkx-Bk3RXQRuR95Y;

    invoke-direct {v1, p0}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSessionManager$PreacquiredSessionReference$YYIZ9YQXGfzkkx-Bk3RXQRuR95Y;-><init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$PreacquiredSessionReference;)V

    .line 1023
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method
