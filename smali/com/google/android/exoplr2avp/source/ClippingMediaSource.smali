.class public final Lcom/google/android/exoplr2avp/source/ClippingMediaSource;
.super Lcom/google/android/exoplr2avp/source/CompositeMediaSource;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;,
        Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplr2avp/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final allowDynamicClippingUpdates:Z

.field private clippingError:Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;

.field private clippingTimeline:Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;

.field private final enableInitialDiscontinuity:Z

.field private final endUs:J

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

.field private periodEndUs:J

.field private periodStartUs:J

.field private final relativeToDefaultPosition:Z

.field private final startUs:J

.field private final window:Lcom/google/android/exoplr2avp/Timeline$Window;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/MediaSource;J)V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 135
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource;JJZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/source/MediaSource;JJ)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 116
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource;JJZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/source/MediaSource;JJZZZ)V
    .locals 3

    .line 183
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/CompositeMediaSource;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 184
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 185
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaSource;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    .line 186
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->startUs:J

    .line 187
    iput-wide p4, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->endUs:J

    .line 188
    iput-boolean p6, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    .line 189
    iput-boolean p7, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    .line 190
    iput-boolean p8, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    .line 191
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 192
    new-instance p1, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    return-void
.end method

.method private refreshClippedTimeline(Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 15

    move-object v1, p0

    .line 253
    iget-object v0, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 254
    iget-object v0, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v5

    .line 255
    iget-object v0, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 274
    :cond_0
    iget-wide v9, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->periodStartUs:J

    sub-long/2addr v9, v5

    .line 276
    iget-wide v11, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->endUs:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_1

    goto :goto_0

    .line 278
    :cond_1
    iget-wide v7, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->periodEndUs:J

    sub-long/2addr v7, v5

    :goto_0
    move-wide v5, v9

    goto :goto_4

    .line 256
    :cond_2
    :goto_1
    iget-wide v9, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->startUs:J

    .line 257
    iget-wide v11, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->endUs:J

    .line 258
    iget-boolean v0, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v13

    add-long/2addr v9, v13

    add-long/2addr v11, v13

    :cond_3
    add-long v13, v5, v9

    .line 263
    iput-wide v13, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->periodStartUs:J

    .line 265
    iget-wide v13, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->endUs:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    add-long v7, v5, v11

    .line 267
    :goto_2
    iput-wide v7, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->periodEndUs:J

    .line 268
    iget-object v0, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_5

    .line 270
    iget-object v5, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;

    iget-wide v6, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v13, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->periodEndUs:J

    invoke-virtual {v5, v6, v7, v13, v14}, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;->updateClipping(JJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move-wide v5, v9

    move-wide v7, v11

    .line 281
    :goto_4
    :try_start_0
    new-instance v0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;-><init>(Lcom/google/android/exoplr2avp/Timeline;JJ)V

    iput-object v0, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->refreshSourceInfo(Lcom/google/android/exoplr2avp/Timeline;)V

    return-void

    :catch_0
    move-exception v0

    .line 283
    iput-object v0, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->clippingError:Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;

    .line 286
    :goto_5
    iget-object v0, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 287
    iget-object v0, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;

    iget-object v3, v1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->clippingError:Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;->setClippingError(Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MediaPeriod;
    .locals 8

    .line 216
    new-instance v7, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    .line 218
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/source/MediaSource;->createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MediaPeriod;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    iget-wide v3, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v5, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->periodEndUs:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;-><init>(Lcom/google/android/exoplr2avp/source/MediaPeriod;ZJJ)V

    .line 222
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public getMediaItem()Lcom/google/android/exoplr2avp/MediaItem;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaSource;->getMediaItem()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->clippingError:Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    .line 211
    invoke-super {p0}, Lcom/google/android/exoplr2avp/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    .line 209
    :cond_0
    throw v0
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 0

    .line 42
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/Timeline;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 0

    .line 244
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->clippingError:Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;

    if-eqz p1, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->refreshClippedTimeline(Lcom/google/android/exoplr2avp/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 1

    .line 202
    invoke-super {p0, p1}, Lcom/google/android/exoplr2avp/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    .line 203
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplr2avp/source/MediaSource;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    check-cast p1, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/source/MediaSource;->releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    .line 230
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-nez p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->refreshClippedTimeline(Lcom/google/android/exoplr2avp/Timeline;)V

    :cond_0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 1

    .line 237
    invoke-super {p0}, Lcom/google/android/exoplr2avp/source/CompositeMediaSource;->releaseSourceInternal()V

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->clippingError:Lcom/google/android/exoplr2avp/source/ClippingMediaSource$IllegalClippingException;

    .line 239
    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplr2avp/source/ClippingMediaSource$ClippingTimeline;

    return-void
.end method
