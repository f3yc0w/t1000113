.class public interface abstract Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;
.super Ljava/lang/Object;
.source "DrmSessionEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public abstract onDrmKeysLoaded(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
.end method

.method public abstract onDrmKeysRemoved(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
.end method

.method public abstract onDrmKeysRestored(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
.end method

.method public abstract onDrmSessionAcquired(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onDrmSessionAcquired(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;I)V
.end method

.method public abstract onDrmSessionManagerError(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
.end method

.method public abstract onDrmSessionReleased(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
.end method
