.class public Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;
.super Ljava/lang/Object;
.source "AVProDrmSessionManagerProvider.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;


# instance fields
.field public m_DrmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaItem"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AVProDrmSessionManagerProvider::get : m_DrmSessionManager = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;->m_DrmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;->m_DrmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    return-object p1
.end method
