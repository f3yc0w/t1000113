.class public Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;
.super Ljava/lang/Object;
.source "Player_ExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->AddMediaToCache(Ljava/lang/String;Ljava/lang/String;DIIDII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/renderheads/AVPro/Video/Player_ExoPlayer;

.field public final synthetic val$maximumRequiredBitRate:D

.field public final synthetic val$maximumRequiredResolutionHeight:I

.field public final synthetic val$maximumRequiredResolutionWidth:I

.field public final synthetic val$minimumRequiredBitRate:D

.field public final synthetic val$minimumRequiredResolutionHeight:I

.field public final synthetic val$minimumRequiredResolutionWidth:I

.field public final synthetic val$trackSelectorParameters:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

.field public final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/renderheads/AVPro/Video/Player_ExoPlayer;Landroid/net/Uri;DIIDIILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$trackSelectorParameters",
            "val$maximumRequiredResolutionHeight",
            "val$maximumRequiredResolutionWidth",
            "val$maximumRequiredBitRate",
            "val$minimumRequiredResolutionWidth",
            "val$minimumRequiredResolutionHeight",
            "val$minimumRequiredBitRate",
            "val$uri"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->this$0:Lcom/renderheads/AVPro/Video/Player_ExoPlayer;

    iput-object p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$uri:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$minimumRequiredBitRate:D

    iput p5, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$minimumRequiredResolutionHeight:I

    iput p6, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$minimumRequiredResolutionWidth:I

    iput-wide p7, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$maximumRequiredBitRate:D

    iput p9, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$maximumRequiredResolutionWidth:I

    iput p10, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$maximumRequiredResolutionHeight:I

    iput-object p11, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$trackSelectorParameters:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepareError(Lcom/google/android/exoplr2avp/offline/DownloadHelper;Ljava/io/IOException;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadHelper",
            "e"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error whilst preparing to cache video : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AVProVideo"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->release()V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplr2avp/offline/DownloadHelper;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadHelper"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->this$0:Lcom/renderheads/AVPro/Video/Player_ExoPlayer;

    iget-object v3, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_ExoPlayer;Lcom/google/android/exoplr2avp/offline/DownloadHelper;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getPeriodCount()I

    move-result v4

    if-ge v3, v4, :cond_13

    .line 7
    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->clearTrackSelections(I)V

    .line 10
    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getMappedTrackInfo(I)Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v4

    const/4 v5, 0x0

    .line 11
    :goto_1
    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v6

    if-ge v5, v6, :cond_12

    .line 13
    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v6

    .line 14
    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v7

    .line 17
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x2

    if-ne v7, v9, :cond_d

    const/4 v7, 0x0

    .line 23
    :goto_2
    iget v9, v6, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-ge v7, v9, :cond_b

    .line 25
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-virtual {v6, v7}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, -0x1

    .line 30
    :goto_3
    iget v14, v10, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v12, v14, :cond_8

    .line 33
    invoke-virtual {v4, v5, v7, v12}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    .line 38
    invoke-virtual {v10, v12}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v13

    .line 39
    iget v14, v13, Lcom/google/android/exoplr2avp/Format;->bitrate:I

    int-to-double v14, v14

    move/from16 v16, v3

    iget-wide v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$minimumRequiredBitRate:D

    const/16 v17, 0x1

    cmpl-double v18, v14, v2

    if-ltz v18, :cond_0

    iget v2, v13, Lcom/google/android/exoplr2avp/Format;->height:I

    iget v3, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$minimumRequiredResolutionHeight:I

    if-lt v2, v3, :cond_0

    iget v2, v13, Lcom/google/android/exoplr2avp/Format;->width:I

    iget v3, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$minimumRequiredResolutionWidth:I

    if-lt v2, v3, :cond_0

    move/from16 v18, v12

    const/4 v2, 0x1

    goto :goto_4

    :cond_0
    move/from16 v18, v12

    const/4 v2, 0x0

    .line 40
    :goto_4
    iget-wide v11, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$maximumRequiredBitRate:D

    cmpg-double v19, v14, v11

    if-lez v19, :cond_1

    const-wide/16 v14, 0x0

    cmpg-double v19, v11, v14

    if-gtz v19, :cond_3

    :cond_1
    iget v11, v13, Lcom/google/android/exoplr2avp/Format;->width:I

    iget v12, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$maximumRequiredResolutionWidth:I

    if-le v11, v12, :cond_2

    if-gtz v12, :cond_3

    :cond_2
    iget v11, v13, Lcom/google/android/exoplr2avp/Format;->height:I

    iget v12, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$maximumRequiredResolutionHeight:I

    if-le v11, v12, :cond_4

    if-gtz v12, :cond_3

    goto :goto_5

    :cond_3
    const/16 v17, 0x0

    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    if-nez v17, :cond_6

    .line 46
    :cond_5
    iget v2, v13, Lcom/google/android/exoplr2avp/Format;->width:I

    if-gez v2, :cond_7

    iget v2, v13, Lcom/google/android/exoplr2avp/Format;->height:I

    if-gez v2, :cond_7

    .line 49
    :cond_6
    iget v2, v13, Lcom/google/android/exoplr2avp/Format;->bitrate:I

    iget v2, v13, Lcom/google/android/exoplr2avp/Format;->width:I

    iget v2, v13, Lcom/google/android/exoplr2avp/Format;->height:I

    .line 50
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v12, v18, 0x1

    move/from16 v3, v16

    move/from16 v13, v18

    goto :goto_3

    :cond_8
    move/from16 v16, v3

    .line 55
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, -0x1

    if-le v13, v2, :cond_9

    .line 58
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 64
    new-instance v2, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-static {v9}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v16

    goto/16 :goto_2

    :cond_b
    move/from16 v16, v3

    .line 68
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 71
    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$trackSelectorParameters:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move/from16 v3, v16

    invoke-virtual {v1, v3, v5, v2, v8}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->addTrackSelectionForSingleRenderer(IILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;Ljava/util/List;)V

    goto :goto_8

    :cond_c
    move/from16 v3, v16

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    .line 77
    :goto_6
    iget v7, v6, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-ge v2, v7, :cond_10

    .line 79
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {v6, v2}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v9

    const/4 v10, 0x0

    .line 83
    :goto_7
    iget v11, v9, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v10, v11, :cond_e

    .line 85
    invoke-virtual {v9, v10}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/exoplr2avp/Format;->toString()Ljava/lang/String;

    .line 86
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 89
    :cond_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_f

    .line 92
    new-instance v9, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-static {v7}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v7

    invoke-direct {v9, v2, v7}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 97
    :cond_10
    :goto_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 100
    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$trackSelectorParameters:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v1, v3, v5, v2, v8}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->addTrackSelectionForSingleRenderer(IILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;Ljava/util/List;)V

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 123
    :cond_13
    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getDownloadRequest(Ljava/lang/String;[B)Lcom/google/android/exoplr2avp/offline/DownloadRequest;

    move-result-object v2

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadRequest streamKeys = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/google/android/exoplr2avp/offline/DownloadRequest;->streamKeys:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->access$100()Lcom/google/android/exoplr2avp/offline/DownloadManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->addDownload(Lcom/google/android/exoplr2avp/offline/DownloadRequest;)V

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->release()V

    return-void
.end method
