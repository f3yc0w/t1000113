.class public interface abstract Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo$Factory;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create(ILcom/google/android/exoplr2avp/source/TrackGroup;[I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplr2avp/source/TrackGroup;",
            "[I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method
