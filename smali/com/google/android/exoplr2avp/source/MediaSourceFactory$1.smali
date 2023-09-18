.class Lcom/google/android/exoplr2avp/source/MediaSourceFactory$1;
.super Ljava/lang/Object;
.source "MediaSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/MediaSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/MediaSource;
    .locals 0

    .line 55
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getSupportedTypes()[I
    .locals 1

    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/MediaSourceFactory$1;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/MediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/MediaSourceFactory;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/MediaSourceFactory$1;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/MediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/MediaSourceFactory;
    .locals 0

    return-object p0
.end method
