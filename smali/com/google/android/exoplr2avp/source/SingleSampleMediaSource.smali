.class public final Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;
.super Lcom/google/android/exoplr2avp/source/BaseMediaSource;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private final dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

.field private final durationUs:J

.field private final format:Lcom/google/android/exoplr2avp/Format;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

.field private final mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

.field private final timeline:Lcom/google/android/exoplr2avp/Timeline;

.field private transferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

.field private final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;JLcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    .line 154
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/BaseMediaSource;-><init>()V

    move-object v2, p3

    .line 155
    iput-object v2, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    move-wide v2, p4

    .line 156
    iput-wide v2, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->durationUs:J

    move-object/from16 v4, p6

    .line 157
    iput-object v4, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    move/from16 v4, p7

    .line 158
    iput-boolean v4, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    .line 159
    new-instance v4, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 161
    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 162
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v4

    .line 163
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setSubtitleConfigurations(Ljava/util/List;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v4

    move-object/from16 v5, p8

    .line 164
    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v4

    .line 165
    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    .line 166
    new-instance v4, Lcom/google/android/exoplr2avp/Format$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplr2avp/Format$Builder;-><init>()V

    iget-object v5, v1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    const-string/jumbo v6, "text/x-unknown"

    .line 168
    invoke-static {v5, v6}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 169
    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v4

    iget v5, v1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->selectionFlags:I

    .line 170
    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v4

    iget v5, v1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->roleFlags:I

    .line 171
    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 172
    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v4

    .line 173
    iget-object v5, v1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v4

    .line 174
    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->format:Lcom/google/android/exoplr2avp/Format;

    .line 175
    new-instance v4, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;-><init>()V

    iget-object v1, v1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 177
    invoke-virtual {v4, v1}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    move-result-object v1

    const/4 v4, 0x1

    .line 178
    invoke-virtual {v1, v4}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 180
    new-instance v9, Lcom/google/android/exoplr2avp/source/SinglePeriodTimeline;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-wide v2, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplr2avp/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplr2avp/MediaItem;)V

    iput-object v9, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;JLcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$1;)V
    .locals 0

    .line 38
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;JLcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MediaPeriod;
    .locals 10

    .line 210
    new-instance p2, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->transferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->format:Lcom/google/android/exoplr2avp/Format;

    iget-wide v5, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->durationUs:J

    iget-object v7, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    .line 217
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->createEventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v8

    iget-boolean v9, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSpec;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/Format;JLcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;Z)V

    return-object p2
.end method

.method public getMediaItem()Lcom/google/android/exoplr2avp/MediaItem;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->transferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    .line 200
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;->refreshSourceInfo(Lcom/google/android/exoplr2avp/Timeline;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 0

    .line 223
    check-cast p1, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->release()V

    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 0

    return-void
.end method
