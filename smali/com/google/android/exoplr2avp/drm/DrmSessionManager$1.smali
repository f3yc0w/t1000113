.class Lcom/google/android/exoplr2avp/drm/DrmSessionManager$1;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/drm/DrmSessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/drm/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireSession(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/drm/DrmSession;
    .locals 2

    .line 56
    iget-object p1, p2, Lcom/google/android/exoplr2avp/Format;->drmInitData:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 59
    :cond_0
    new-instance p1, Lcom/google/android/exoplr2avp/drm/ErrorStateDrmSession;

    new-instance p2, Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;

    new-instance v0, Lcom/google/android/exoplr2avp/drm/UnsupportedDrmException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/drm/UnsupportedDrmException;-><init>(I)V

    const/16 v1, 0x1771

    invoke-direct {p2, v0, v1}, Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplr2avp/drm/ErrorStateDrmSession;-><init>(Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;)V

    return-object p1
.end method

.method public getCryptoType(Lcom/google/android/exoplr2avp/Format;)I
    .locals 0

    .line 68
    iget-object p1, p1, Lcom/google/android/exoplr2avp/Format;->drmInitData:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic preacquireSession(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager$DrmSessionReference;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/drm/DrmSessionManager$-CC;->$default$preacquireSession(Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager$DrmSessionReference;

    move-result-object p1

    return-object p1
.end method

.method public synthetic prepare()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/drm/DrmSessionManager$-CC;->$default$prepare(Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)V

    return-void
.end method

.method public synthetic release()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/drm/DrmSessionManager$-CC;->$default$release(Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)V

    return-void
.end method

.method public setPlayer(Landroid/os/Looper;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V
    .locals 0

    return-void
.end method
