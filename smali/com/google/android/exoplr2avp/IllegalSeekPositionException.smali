.class public final Lcom/google/android/exoplr2avp/IllegalSeekPositionException;
.super Ljava/lang/IllegalStateException;
.source "IllegalSeekPositionException.java"


# instance fields
.field public final positionMs:J

.field public final timeline:Lcom/google/android/exoplr2avp/Timeline;

.field public final windowIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/Timeline;IJ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/exoplr2avp/IllegalSeekPositionException;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 38
    iput p2, p0, Lcom/google/android/exoplr2avp/IllegalSeekPositionException;->windowIndex:I

    .line 39
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/IllegalSeekPositionException;->positionMs:J

    return-void
.end method
