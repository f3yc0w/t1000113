.class final Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SeekPosition"
.end annotation


# instance fields
.field public final timeline:Lcom/google/android/exoplr2avp/Timeline;

.field public final windowIndex:I

.field public final windowPositionUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/Timeline;IJ)V
    .locals 0

    .line 2981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2982
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 2983
    iput p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    .line 2984
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    return-void
.end method
