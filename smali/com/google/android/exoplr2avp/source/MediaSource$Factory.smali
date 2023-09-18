.class public interface abstract Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# static fields
.field public static final UNSUPPORTED:Lcom/google/android/exoplr2avp/source/MediaSource$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    sget-object v0, Lcom/google/android/exoplr2avp/source/MediaSourceFactory;->UNSUPPORTED:Lcom/google/android/exoplr2avp/source/MediaSourceFactory;

    sput-object v0, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;->UNSUPPORTED:Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    return-void
.end method


# virtual methods
.method public abstract createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/MediaSource;
.end method

.method public abstract getSupportedTypes()[I
.end method

.method public abstract setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
.end method

.method public abstract setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
.end method
