.class final Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$TrackState;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackState"
.end annotation


# instance fields
.field public final trackEnabledStates:[Z

.field public final trackIsAudioVideoFlags:[Z

.field public final trackNotifiedDownstreamFormats:[Z

.field public final tracks:Lcom/google/android/exoplr2avp/source/TrackGroupArray;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/TrackGroupArray;[Z)V
    .locals 0

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$TrackState;->tracks:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    .line 1109
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$TrackState;->trackIsAudioVideoFlags:[Z

    .line 1110
    iget p2, p1, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$TrackState;->trackEnabledStates:[Z

    .line 1111
    iget p1, p1, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$TrackState;->trackNotifiedDownstreamFormats:[Z

    return-void
.end method
