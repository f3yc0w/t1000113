.class public final synthetic Lcom/google/android/exoplr2avp/source/MediaPeriod$-CC;
.super Ljava/lang/Object;
.source "MediaPeriod.java"


# direct methods
.method public static $default$getStreamKeys(Lcom/google/android/exoplr2avp/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplr2avp/source/MediaPeriod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/offline/StreamKey;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
