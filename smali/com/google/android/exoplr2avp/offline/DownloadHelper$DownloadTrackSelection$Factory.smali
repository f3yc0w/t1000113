.class final Lcom/google/android/exoplr2avp/offline/DownloadHelper$DownloadTrackSelection$Factory;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/offline/DownloadHelper$DownloadTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/offline/DownloadHelper$1;)V
    .locals 0

    .line 1141
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$DownloadTrackSelection$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public createTrackSelections([Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline;)[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;
    .locals 2

    .line 1149
    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    const/4 p3, 0x0

    .line 1150
    :goto_0
    array-length p4, p1

    if-ge p3, p4, :cond_1

    .line 1152
    aget-object p4, p1, p3

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_1

    .line 1154
    :cond_0
    new-instance p4, Lcom/google/android/exoplr2avp/offline/DownloadHelper$DownloadTrackSelection;

    aget-object v0, p1, p3

    iget-object v0, v0, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplr2avp/source/TrackGroup;

    aget-object v1, p1, p3

    iget-object v1, v1, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Definition;->tracks:[I

    invoke-direct {p4, v0, v1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$DownloadTrackSelection;-><init>(Lcom/google/android/exoplr2avp/source/TrackGroup;[I)V

    :goto_1
    aput-object p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method
