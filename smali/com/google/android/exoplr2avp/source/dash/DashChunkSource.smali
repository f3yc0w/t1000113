.class public interface abstract Lcom/google/android/exoplr2avp/source/dash/DashChunkSource;
.super Ljava/lang/Object;
.source "DashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/chunk/ChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract updateManifest(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;I)V
.end method

.method public abstract updateTrackSelection(Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;)V
.end method
