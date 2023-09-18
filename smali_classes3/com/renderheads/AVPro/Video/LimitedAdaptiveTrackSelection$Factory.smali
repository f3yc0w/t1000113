.class public Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;
.super Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection$Factory;
.source "LimitedAdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field public final bandwidthFraction:F

.field public final bufferedFractionToLiveEdgeForQualityIncrease:F

.field public final clock:Lcom/google/android/exoplr2avp/util/Clock;

.field public m_VideoStreamLimiter:Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;

.field public final maxDurationForQualityDecreaseMs:I

.field public final minDurationForQualityIncreaseMs:I

.field public final minDurationToRetainAfterDiscardMs:I


# direct methods
.method public constructor <init>(IIIFFLcom/google/android/exoplr2avp/util/Clock;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "minDurationForQualityIncreaseMs",
            "maxDurationForQualityDecreaseMs",
            "minDurationToRetainAfterDiscardMs",
            "bandwidthFraction",
            "bufferedFractionToLiveEdgeForQualityIncrease",
            "clock"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    .line 4
    iput p1, p0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    .line 5
    iput p2, p0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    .line 6
    iput p3, p0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    .line 7
    iput p4, p0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;->bandwidthFraction:F

    .line 8
    iput p5, p0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 9
    iput-object p6, p0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    return-void
.end method


# virtual methods
.method public createAdaptiveTrackSelection(Lcom/google/android/exoplr2avp/source/TrackGroup;[IILcom/google/android/exoplr2avp/upstream/BandwidthMeter;Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "group",
            "tracks",
            "type",
            "bandwidthMeter",
            "adaptationCheckpoints"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v16, p5

    .line 1
    new-instance v13, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection;

    move-object v1, v13

    iget v6, v0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    int-to-long v6, v6

    iget v8, v0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    int-to-long v8, v8

    iget v10, v0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    int-to-long v10, v10

    iget v14, v0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;->bandwidthFraction:F

    iget v15, v0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    iget-object v12, v0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    move-object/from16 v17, v12

    const v12, 0xf4240

    const v18, 0xf4240

    move-object/from16 v19, v13

    move/from16 v13, v18

    invoke-direct/range {v1 .. v17}, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection;-><init>(Lcom/google/android/exoplr2avp/source/TrackGroup;[IILcom/google/android/exoplr2avp/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Lcom/google/android/exoplr2avp/util/Clock;)V

    .line 2
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;->m_VideoStreamLimiter:Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;

    move-object/from16 v2, v19

    invoke-static {v2, v1}, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection;->access$002(Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection;Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;)Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;

    return-object v2
.end method
