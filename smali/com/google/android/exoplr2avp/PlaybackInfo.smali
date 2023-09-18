.class final Lcom/google/android/exoplr2avp/PlaybackInfo;
.super Ljava/lang/Object;
.source "PlaybackInfo.java"


# static fields
.field private static final PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;


# instance fields
.field public volatile bufferedPositionUs:J

.field public final discontinuityStartPositionUs:J

.field public final isLoading:Z

.field public final loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

.field public final offloadSchedulingEnabled:Z

.field public final periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

.field public final playWhenReady:Z

.field public final playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

.field public final playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

.field public final playbackState:I

.field public final playbackSuppressionReason:I

.field public volatile positionUs:J

.field public final requestedContentPositionUs:J

.field public final sleepingForOffload:Z

.field public final staticMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field public final timeline:Lcom/google/android/exoplr2avp/Timeline;

.field public volatile totalBufferedDurationUs:J

.field public final trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

.field public final trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplr2avp/ExoPlaybackException;ZLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplr2avp/PlaybackParameters;JJJZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/Timeline;",
            "Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;",
            "JJI",
            "Lcom/google/android/exoplr2avp/ExoPlaybackException;",
            "Z",
            "Lcom/google/android/exoplr2avp/source/TrackGroupArray;",
            "Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/metadata/Metadata;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;",
            "ZI",
            "Lcom/google/android/exoplr2avp/PlaybackParameters;",
            "JJJZZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 167
    iput-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    move-object v1, p2

    .line 168
    iput-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-wide v1, p3

    .line 169
    iput-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    move-wide v1, p5

    .line 170
    iput-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    move v1, p7

    .line 171
    iput v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    move-object v1, p8

    .line 172
    iput-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move v1, p9

    .line 173
    iput-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    move-object v1, p10

    .line 174
    iput-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-object v1, p11

    .line 175
    iput-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-object v1, p12

    .line 176
    iput-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object/from16 v1, p13

    .line 177
    iput-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move/from16 v1, p14

    .line 178
    iput-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    move/from16 v1, p15

    .line 179
    iput v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    move-object/from16 v1, p16

    .line 180
    iput-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-wide/from16 v1, p17

    .line 181
    iput-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v1, p19

    .line 182
    iput-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v1, p21

    .line 183
    iput-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    move/from16 v1, p23

    .line 184
    iput-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v1, p24

    .line 185
    iput-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    return-void
.end method

.method public static createDummy(Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;)Lcom/google/android/exoplr2avp/PlaybackInfo;
    .locals 26

    move-object/from16 v11, p0

    .line 103
    new-instance v25, Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-object/from16 v0, v25

    sget-object v1, Lcom/google/android/exoplr2avp/Timeline;->EMPTY:Lcom/google/android/exoplr2avp/Timeline;

    sget-object v13, Lcom/google/android/exoplr2avp/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-object v2, v13

    sget-object v10, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    .line 113
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    sget-object v16, Lcom/google/android/exoplr2avp/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplr2avp/PlaybackParameters;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v24}, Lcom/google/android/exoplr2avp/PlaybackInfo;-><init>(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplr2avp/ExoPlaybackException;ZLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplr2avp/PlaybackParameters;JJJZZ)V

    return-object v25
.end method

.method public static getDummyPeriodForEmptyTimeline()Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 190
    sget-object v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    return-object v0
.end method


# virtual methods
.method public copyWithIsLoading(Z)Lcom/google/android/exoplr2avp/PlaybackInfo;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v10, p1

    .line 338
    new-instance v26, Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    iget-object v11, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplr2avp/PlaybackInfo;-><init>(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplr2avp/ExoPlaybackException;ZLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplr2avp/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithLoadingMediaPeriodId(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/PlaybackInfo;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 368
    new-instance v26, Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-boolean v15, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplr2avp/PlaybackInfo;-><init>(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplr2avp/ExoPlaybackException;ZLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplr2avp/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithNewPosition(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplr2avp/PlaybackInfo;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;",
            "JJJJ",
            "Lcom/google/android/exoplr2avp/source/TrackGroupArray;",
            "Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/metadata/Metadata;",
            ">;)",
            "Lcom/google/android/exoplr2avp/PlaybackInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v22, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v20, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 218
    new-instance v26, Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget v8, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    iget-object v14, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplr2avp/PlaybackInfo;-><init>(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplr2avp/ExoPlaybackException;ZLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplr2avp/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithOffloadSchedulingEnabled(Z)Lcom/google/android/exoplr2avp/PlaybackInfo;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v24, p1

    .line 463
    new-instance v26, Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplr2avp/PlaybackInfo;-><init>(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplr2avp/ExoPlaybackException;ZLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplr2avp/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithPlayWhenReady(ZI)Lcom/google/android/exoplr2avp/PlaybackInfo;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v16, p2

    .line 402
    new-instance v26, Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplr2avp/PlaybackInfo;-><init>(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplr2avp/ExoPlaybackException;ZLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplr2avp/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithPlaybackError(Lcom/google/android/exoplr2avp/ExoPlaybackException;)Lcom/google/android/exoplr2avp/PlaybackInfo;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 308
    new-instance v26, Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    iget-boolean v10, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplr2avp/PlaybackInfo;-><init>(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplr2avp/ExoPlaybackException;ZLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplr2avp/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)Lcom/google/android/exoplr2avp/PlaybackInfo;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    .line 432
    new-instance v26, Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplr2avp/PlaybackInfo;-><init>(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplr2avp/ExoPlaybackException;ZLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplr2avp/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithPlaybackState(I)Lcom/google/android/exoplr2avp/PlaybackInfo;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v8, p1

    .line 278
    new-instance v26, Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-object v9, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplr2avp/PlaybackInfo;-><init>(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplr2avp/ExoPlaybackException;ZLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplr2avp/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithSleepingForOffload(Z)Lcom/google/android/exoplr2avp/PlaybackInfo;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v25, p1

    .line 493
    new-instance v26, Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplr2avp/PlaybackInfo;-><init>(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplr2avp/ExoPlaybackException;ZLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplr2avp/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithTimeline(Lcom/google/android/exoplr2avp/Timeline;)Lcom/google/android/exoplr2avp/PlaybackInfo;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 248
    new-instance v26, Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v3, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v27, v2

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplr2avp/PlaybackInfo;-><init>(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplr2avp/ExoPlaybackException;ZLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplr2avp/PlaybackParameters;JJJZZ)V

    return-object v26
.end method