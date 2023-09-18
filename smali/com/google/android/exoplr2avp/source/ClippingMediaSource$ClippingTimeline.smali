.class final Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;
.super Lcom/google/android/exoplr2avp/source/ForwardingTimeline;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippingTimeline"
.end annotation


# instance fields
.field private final durationUs:J

.field private final endUs:J

.field private final isDynamic:Z

.field private final startUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/Timeline;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;
        }
    .end annotation

    .line 313
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplr2avp/Timeline;)V

    .line 314
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 317
    new-instance v0, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object p1

    const-wide/16 v3, 0x0

    .line 318
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 319
    iget-boolean v0, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->isPlaceholder:Z

    if-nez v0, :cond_1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->isSeekable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    new-instance p1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v2}, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, p4, v5

    if-nez v0, :cond_2

    .line 322
    iget-wide p4, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    goto :goto_1

    :cond_2
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    .line 323
    :goto_1
    iget-wide v3, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    .line 324
    iget-wide v3, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    cmp-long v0, p4, v3

    if-lez v0, :cond_3

    .line 325
    iget-wide p4, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    :cond_3
    cmp-long v0, p2, p4

    if-gtz v0, :cond_4

    goto :goto_2

    .line 328
    :cond_4
    new-instance p1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    .line 331
    :cond_5
    :goto_2
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    .line 332
    iput-wide p4, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long v0, p4, v5

    if-nez v0, :cond_6

    move-wide p2, v5

    goto :goto_3

    :cond_6
    sub-long p2, p4, p2

    .line 333
    :goto_3
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    .line 334
    iget-boolean p2, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->isDynamic:Z

    if-eqz p2, :cond_8

    if-eqz v0, :cond_7

    iget-wide p2, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    cmp-long v0, p2, v5

    if-eqz v0, :cond_8

    iget-wide p1, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    cmp-long p3, p4, p1

    if-nez p3, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    return-void

    .line 315
    :cond_9
    new-instance p1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v1}, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;
    .locals 12

    .line 364
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 365
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long v10, v0, v2

    .line 367
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    move-wide v8, v2

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v10

    move-wide v8, v0

    .line 368
    :goto_0
    iget-object v5, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v6, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->uid:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/exoplr2avp/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;J)Lcom/google/android/exoplr2avp/Timeline$Window;
    .locals 4

    .line 342
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;J)Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 343
    iget-wide p3, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->positionInFirstPeriodUs:J

    .line 344
    iget-wide p3, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    iput-wide p3, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    .line 345
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    iput-boolean p1, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->isDynamic:Z

    .line 346
    iget-wide p3, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->defaultPositionUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    .line 347
    iget-wide p3, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->defaultPositionUs:J

    .line 349
    iget-wide p3, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long p1, p3, v0

    iget-wide p3, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->defaultPositionUs:J

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    iput-wide p3, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->defaultPositionUs:J

    .line 350
    iget-wide p3, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr p3, v2

    iput-wide p3, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->defaultPositionUs:J

    .line 352
    :cond_1
    iget-wide p3, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {p3, p4}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide p3

    .line 353
    iget-wide v2, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->presentationStartTimeMs:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    .line 354
    iget-wide v2, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->presentationStartTimeMs:J

    add-long/2addr v2, p3

    iput-wide v2, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->presentationStartTimeMs:J

    .line 356
    :cond_2
    iget-wide v2, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_3

    .line 357
    iget-wide v0, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    add-long/2addr v0, p3

    iput-wide v0, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    :cond_3
    return-object p2
.end method
