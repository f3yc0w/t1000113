.class public final synthetic Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$yorVMTTfbl45OVBtWE9xsFALKrQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$TrackInfo$Factory;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$yorVMTTfbl45OVBtWE9xsFALKrQ;->f$0:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$yorVMTTfbl45OVBtWE9xsFALKrQ;->f$1:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    iput-boolean p3, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$yorVMTTfbl45OVBtWE9xsFALKrQ;->f$2:Z

    return-void
.end method


# virtual methods
.method public final create(ILcom/google/android/exoplr2avp/source/TrackGroup;[I)Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$yorVMTTfbl45OVBtWE9xsFALKrQ;->f$0:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$yorVMTTfbl45OVBtWE9xsFALKrQ;->f$1:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$DefaultTrackSelector$yorVMTTfbl45OVBtWE9xsFALKrQ;->f$2:Z

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->lambda$selectAudioTrack$3$DefaultTrackSelector(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;ZILcom/google/android/exoplr2avp/source/TrackGroup;[I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
