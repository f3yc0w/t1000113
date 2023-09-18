.class public interface abstract Lcom/google/android/exoplr2avp/offline/DownloadManager$Listener;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDownloadChanged(Lcom/google/android/exoplr2avp/offline/DownloadManager;Lcom/google/android/exoplr2avp/offline/Download;Ljava/lang/Exception;)V
.end method

.method public abstract onDownloadRemoved(Lcom/google/android/exoplr2avp/offline/DownloadManager;Lcom/google/android/exoplr2avp/offline/Download;)V
.end method

.method public abstract onDownloadsPausedChanged(Lcom/google/android/exoplr2avp/offline/DownloadManager;Z)V
.end method

.method public abstract onIdle(Lcom/google/android/exoplr2avp/offline/DownloadManager;)V
.end method

.method public abstract onInitialized(Lcom/google/android/exoplr2avp/offline/DownloadManager;)V
.end method

.method public abstract onRequirementsStateChanged(Lcom/google/android/exoplr2avp/offline/DownloadManager;Lcom/google/android/exoplr2avp/scheduler/Requirements;I)V
.end method

.method public abstract onWaitingForRequirementsChanged(Lcom/google/android/exoplr2avp/offline/DownloadManager;Z)V
.end method
