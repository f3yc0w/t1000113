.class public final synthetic Lcom/google/android/exoplr2avp/drm/DrmSessionManager$-CC;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# direct methods
.method public static $default$preacquireSession(Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager$DrmSessionReference;
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    .line 150
    sget-object p1, Lcom/google/android/exoplr2avp/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Lcom/google/android/exoplr2avp/drm/DrmSessionManager$DrmSessionReference;

    return-object p1
.end method

.method public static $default$prepare(Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)V
    .locals 0

    return-void
.end method

.method public static $default$release(Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)V
    .locals 0

    return-void
.end method

.method public static getDummyDrmSessionManager()Lcom/google/android/exoplr2avp/drm/DrmSessionManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    sget-object v0, Lcom/google/android/exoplr2avp/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    return-object v0
.end method
