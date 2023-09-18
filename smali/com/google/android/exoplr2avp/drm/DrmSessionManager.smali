.class public interface abstract Lcom/google/android/exoplr2avp/drm/DrmSessionManager;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/drm/DrmSessionManager$DrmSessionReference;
    }
.end annotation


# static fields
.field public static final DRM_UNSUPPORTED:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

.field public static final DUMMY:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/google/android/exoplr2avp/drm/DrmSessionManager$1;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/drm/DrmSessionManager$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    .line 77
    sput-object v0, Lcom/google/android/exoplr2avp/drm/DrmSessionManager;->DUMMY:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    return-void
.end method


# virtual methods
.method public abstract acquireSession(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/drm/DrmSession;
.end method

.method public abstract getCryptoType(Lcom/google/android/exoplr2avp/Format;)I
.end method

.method public abstract preacquireSession(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager$DrmSessionReference;
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method

.method public abstract setPlayer(Landroid/os/Looper;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V
.end method
