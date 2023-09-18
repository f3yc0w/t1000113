.class public final Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;
.super Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylist;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$PlaylistType;,
        Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$RenditionReport;,
        Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$SegmentBase;,
        Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;,
        Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;,
        Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$ServerControl;
    }
.end annotation


# static fields
.field public static final PLAYLIST_TYPE_EVENT:I = 0x2

.field public static final PLAYLIST_TYPE_UNKNOWN:I = 0x0

.field public static final PLAYLIST_TYPE_VOD:I = 0x1


# instance fields
.field public final discontinuitySequence:I

.field public final durationUs:J

.field public final hasDiscontinuitySequence:Z

.field public final hasEndTag:Z

.field public final hasPositiveStartOffset:Z

.field public final hasProgramDateTime:Z

.field public final mediaSequence:J

.field public final partTargetDurationUs:J

.field public final playlistType:I

.field public final preciseStart:Z

.field public final protectionSchemes:Lcom/google/android/exoplr2avp/drm/DrmInitData;

.field public final renditionReports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$RenditionReport;",
            ">;"
        }
    .end annotation
.end field

.field public final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public final serverControl:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$ServerControl;

.field public final startOffsetUs:J

.field public final startTimeUs:J

.field public final targetDurationUs:J

.field public final trailingParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;",
            ">;"
        }
    .end annotation
.end field

.field public final version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLcom/google/android/exoplr2avp/drm/DrmInitData;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$ServerControl;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JZJZIJIJJZZZ",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$ServerControl;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$RenditionReport;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-wide v1, p4

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p18

    .line 503
    invoke-direct {p0, p2, p3, v5}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move v3, p1

    .line 504
    iput v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    move-wide/from16 v3, p7

    .line 505
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    move/from16 v3, p6

    .line 506
    iput-boolean v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->preciseStart:Z

    move/from16 v3, p9

    .line 507
    iput-boolean v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasDiscontinuitySequence:Z

    move/from16 v3, p10

    .line 508
    iput v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    move-wide/from16 v3, p11

    .line 509
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    move/from16 v3, p13

    .line 510
    iput v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->version:I

    move-wide/from16 v3, p14

    .line 511
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    move-wide/from16 v3, p16

    .line 512
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    move/from16 v3, p19

    .line 513
    iput-boolean v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    move/from16 v3, p20

    .line 514
    iput-boolean v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    move-object/from16 v3, p21

    .line 515
    iput-object v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->protectionSchemes:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    .line 516
    invoke-static/range {p22 .. p22}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 517
    invoke-static/range {p23 .. p23}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 518
    invoke-static/range {p25 .. p25}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->renditionReports:Ljava/util/Map;

    .line 519
    invoke-interface/range {p23 .. p23}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    .line 520
    invoke-static/range {p23 .. p23}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;

    .line 521
    iget-wide v6, v3, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->relativeStartTimeUs:J

    iget-wide v8, v3, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->durationUs:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    goto :goto_0

    .line 522
    :cond_0
    invoke-interface/range {p22 .. p22}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 523
    invoke-static/range {p22 .. p22}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 524
    iget-wide v6, v3, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    iget-wide v8, v3, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    goto :goto_0

    .line 526
    :cond_1
    iput-wide v4, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v6

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v3, v1, v4

    if-ltz v3, :cond_3

    .line 535
    iget-wide v6, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    invoke-static {v6, v7, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 536
    :cond_3
    iget-wide v6, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :goto_1
    iput-wide v6, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    cmp-long v3, v1, v4

    if-ltz v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 537
    :goto_2
    iput-boolean v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasPositiveStartOffset:Z

    move-object/from16 v1, p24

    .line 538
    iput-object v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    return-void
.end method


# virtual methods
.method public copy(Ljava/util/List;)Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic copy(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->copy(Ljava/util/List;)Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    return-object p1
.end method

.method public copyWith(JI)Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;
    .locals 28

    move-object/from16 v0, p0

    move-wide/from16 v8, p1

    move/from16 v11, p3

    .line 585
    new-instance v27, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;

    move-object/from16 v1, v27

    iget v2, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->tags:Ljava/util/List;

    iget-wide v5, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    iget-boolean v7, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->preciseStart:Z

    iget-wide v12, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget v14, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->version:I

    move-object/from16 p1, v1

    move/from16 p2, v2

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    move-wide v15, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    move-wide/from16 v17, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->protectionSchemes:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->renditionReports:Ljava/util/Map;

    move-object/from16 v26, v1

    const/4 v10, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {v1 .. v26}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLcom/google/android/exoplr2avp/drm/DrmInitData;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$ServerControl;Ljava/util/Map;)V

    return-object v27
.end method

.method public copyWithEndTag()Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;
    .locals 30

    move-object/from16 v0, p0

    .line 613
    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 616
    :cond_0
    new-instance v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;

    move-object v2, v1

    iget v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->tags:Ljava/util/List;

    iget-wide v6, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    iget-boolean v8, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->preciseStart:Z

    iget-wide v9, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-boolean v11, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasDiscontinuitySequence:Z

    iget v12, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    iget-wide v13, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget v15, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->version:I

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    move-wide/from16 v18, v1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    move/from16 v20, v1

    const/16 v21, 0x1

    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    move/from16 v22, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->protectionSchemes:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->renditionReports:Ljava/util/Map;

    move-object/from16 v27, v1

    move-object/from16 v2, v29

    invoke-direct/range {v2 .. v27}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLcom/google/android/exoplr2avp/drm/DrmInitData;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$ServerControl;Ljava/util/Map;)V

    return-object v28
.end method

.method public getEndTimeUs()J
    .locals 4

    .line 572
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isNewerThan(Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;)Z
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 553
    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-wide v3, p1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_1

    return v5

    .line 560
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz v1, :cond_3

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 564
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 565
    iget-object v2, p1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_5

    if-ne v1, v2, :cond_4

    .line 566
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v1, :cond_4

    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    return v0
.end method