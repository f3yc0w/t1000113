.class public final Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueInfo;
.super Ljava/lang/Object;
.source "WebvttCueInfo.java"


# instance fields
.field public final cue:Lcom/google/android/exoplr2avp/text/Cue;

.field public final endTimeUs:J

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/text/Cue;JJ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueInfo;->cue:Lcom/google/android/exoplr2avp/text/Cue;

    .line 29
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueInfo;->startTimeUs:J

    .line 30
    iput-wide p4, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueInfo;->endTimeUs:J

    return-void
.end method
