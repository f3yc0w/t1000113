.class public interface abstract Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;
.super Ljava/lang/Object;
.source "DashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/dash/DashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createDashChunkSource(Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;I[ILcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;IJZLjava/util/List;Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;Lcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/dash/DashChunkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;",
            "Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;",
            "I[I",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;",
            "IJZ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/Format;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;",
            "Lcom/google/android/exoplr2avp/upstream/TransferListener;",
            "Lcom/google/android/exoplr2avp/analytics/PlayerId;",
            ")",
            "Lcom/google/android/exoplr2avp/source/dash/DashChunkSource;"
        }
    .end annotation
.end method
