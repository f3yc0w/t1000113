.class public final Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentTimelineElement"
.end annotation


# instance fields
.field final duration:J

.field final startTime:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    .line 484
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 492
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 495
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    .line 496
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    iget-wide v4, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    iget-wide v4, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 501
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
