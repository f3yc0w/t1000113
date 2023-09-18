.class public final synthetic Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$DT-PZjhjg2QZYoxJ5i4PlOFCgdY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$DT-PZjhjg2QZYoxJ5i4PlOFCgdY;->f$0:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$DT-PZjhjg2QZYoxJ5i4PlOFCgdY;->f$1:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$DT-PZjhjg2QZYoxJ5i4PlOFCgdY;->f$0:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$DT-PZjhjg2QZYoxJ5i4PlOFCgdY;->f$1:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->lambda$drmKeysRestored$3$DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V

    return-void
.end method
