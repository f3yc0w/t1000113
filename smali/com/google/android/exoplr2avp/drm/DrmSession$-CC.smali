.class public final synthetic Lcom/google/android/exoplr2avp/drm/DrmSession$-CC;
.super Ljava/lang/Object;
.source "DrmSession.java"


# direct methods
.method public static $default$playClearSamplesWithoutKeys(Lcom/google/android/exoplr2avp/drm/DrmSession;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static replaceSession(Lcom/google/android/exoplr2avp/drm/DrmSession;Lcom/google/android/exoplr2avp/drm/DrmSession;)V
    .locals 1

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 55
    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/drm/DrmSession;->acquire(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_1
    if-eqz p0, :cond_2

    .line 58
    invoke-interface {p0, v0}, Lcom/google/android/exoplr2avp/drm/DrmSession;->release(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_2
    return-void
.end method
