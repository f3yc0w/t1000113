.class public final synthetic Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$hSCGmI6XxTtO_SwMZZ3J_ZJASYs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$hSCGmI6XxTtO_SwMZZ3J_ZJASYs;->f$0:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    return-void
.end method


# virtual methods
.method public final get(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$hSCGmI6XxTtO_SwMZZ3J_ZJASYs;->f$0:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->lambda$createMediaSourceInternal$6(Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    move-result-object p1

    return-object p1
.end method
