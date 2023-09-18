.class final Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PositionUpdateForPlaylistChange"
.end annotation


# instance fields
.field public final endPlayback:Z

.field public final forceBufferingState:Z

.field public final periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

.field public final periodPositionUs:J

.field public final requestedContentPositionUs:J

.field public final setTargetLiveOffset:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJZZZ)V
    .locals 0

    .line 3002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3003
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 3004
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodPositionUs:J

    .line 3005
    iput-wide p4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->requestedContentPositionUs:J

    .line 3006
    iput-boolean p6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->forceBufferingState:Z

    .line 3007
    iput-boolean p7, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->endPlayback:Z

    .line 3008
    iput-boolean p8, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    return-void
.end method
