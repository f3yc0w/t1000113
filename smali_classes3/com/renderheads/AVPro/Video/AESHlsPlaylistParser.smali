.class public final Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser;
.super Ljava/lang/Object;
.source "AESHlsPlaylistParser.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser$SegmentFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
        "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field private final m_HlsPlaylistParser:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParser;

.field private final m_Key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParser;-><init>()V

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser;->m_HlsPlaylistParser:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParser;

    .line 4
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser;->m_Key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylist;
    .locals 51
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser;->m_HlsPlaylistParser:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParser;

    if-eqz v1, :cond_0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylist;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    instance-of v2, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser;->m_Key:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data:application/octet-stream;base64,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser;->m_Key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    check-cast v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;

    .line 14
    iget-object v3, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    const/16 v22, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-lez v3, :cond_2

    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_2
    iget-object v4, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    :goto_2
    move-object v13, v4

    .line 17
    new-instance v15, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser$SegmentFactory;

    .line 18
    invoke-direct {v15, v0}, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser$SegmentFactory;-><init>(Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser;)V

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v3, :cond_8

    .line 19
    iget-object v4, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v12, :cond_7

    .line 23
    iget-object v4, v12, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->initializationSegment:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;

    invoke-virtual {v15, v4, v2}, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser$SegmentFactory;->GetSegment(Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v23

    .line 26
    iget-object v4, v12, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v10, v4

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    :goto_4
    if-lez v10, :cond_4

    .line 27
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    :cond_4
    iget-object v4, v12, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    :goto_5
    move-object v11, v4

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v10, :cond_6

    .line 31
    iget-object v4, v12, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;

    if-eqz v7, :cond_5

    .line 35
    iget-object v4, v7, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->initializationSegment:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;

    invoke-virtual {v15, v4, v2}, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser$SegmentFactory;->GetSegment(Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v6

    .line 37
    new-instance v8, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;

    move-object v4, v8

    iget-object v5, v7, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->url:Ljava/lang/String;

    move-object/from16 p1, v8

    move/from16 v16, v9

    iget-wide v8, v7, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->durationUs:J

    move-object v0, v7

    move/from16 v50, v3

    move-object/from16 v3, p1

    move/from16 p1, v50

    move-wide v7, v8

    iget v9, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->relativeDiscontinuitySequence:I

    move/from16 v24, v16

    move/from16 p2, v10

    move-object/from16 v16, v11

    iget-wide v10, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->relativeStartTimeUs:J

    move/from16 v25, p2

    move-object/from16 p2, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v12

    iget-object v12, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->drmInitData:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    move-object/from16 v49, v16

    move-object/from16 v26, v13

    iget-object v13, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->encryptionIV:Ljava/lang/String;

    move/from16 v27, v14

    move-object v14, v13

    move-object/from16 v29, v3

    move-object/from16 v28, v4

    iget-wide v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->byteRangeOffset:J

    move-object v13, v15

    move-wide v15, v3

    iget-wide v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->byteRangeLength:J

    move-wide/from16 v17, v3

    iget-boolean v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->hasGapTag:Z

    move/from16 v19, v3

    iget-boolean v3, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    move/from16 v20, v3

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->isPreload:Z

    move/from16 v21, v0

    move-object v0, v13

    move-object/from16 v3, v26

    move-object v13, v2

    move-object/from16 v4, v28

    invoke-direct/range {v4 .. v21}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;JIJLcom/google/android/exoplr2avp/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v4, v29

    .line 38
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_5
    move-object/from16 p2, v1

    move/from16 p1, v3

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v1, v11

    move-object/from16 v49, v12

    move-object v3, v13

    move/from16 v27, v14

    move-object v0, v15

    :goto_7
    add-int/lit8 v9, v24, 0x1

    move-object v15, v0

    move-object v11, v1

    move-object v13, v3

    move/from16 v10, v25

    move/from16 v14, v27

    move-object/from16 v12, v49

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-object/from16 v1, p2

    goto/16 :goto_6

    :cond_6
    move-object/from16 p2, v1

    move/from16 p1, v3

    move-object v1, v11

    move-object/from16 v49, v12

    move-object v3, v13

    move/from16 v27, v14

    move-object v0, v15

    .line 43
    new-instance v14, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object v4, v14

    move-object/from16 v6, v49

    iget-object v5, v6, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    iget-object v7, v6, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->title:Ljava/lang/String;

    iget-wide v8, v6, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    iget v10, v6, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    iget-wide v11, v6, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    iget-object v13, v6, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->drmInitData:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    iget-object v15, v6, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object/from16 v45, v3

    move-object/from16 v24, v4

    iget-wide v3, v6, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeOffset:J

    move-wide/from16 v16, v3

    iget-wide v3, v6, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeLength:J

    move-wide/from16 v18, v3

    iget-boolean v3, v6, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->hasGapTag:Z

    move/from16 v20, v3

    move-object/from16 v6, v23

    move-object v3, v14

    move-object v14, v2

    move-object/from16 v21, v1

    move-object/from16 v4, v24

    invoke-direct/range {v4 .. v21}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLcom/google/android/exoplr2avp/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    move-object/from16 v1, v45

    .line 44
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    move-object/from16 p2, v1

    move/from16 p1, v3

    move-object v1, v13

    move/from16 v27, v14

    move-object v0, v15

    :goto_8
    add-int/lit8 v14, v27, 0x1

    move/from16 v3, p1

    move-object v15, v0

    move-object v13, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    goto/16 :goto_3

    :cond_8
    move-object v3, v1

    move-object v1, v13

    move-object v0, v15

    .line 49
    iget-object v4, v3, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v13, v4

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    :goto_9
    if-lez v13, :cond_a

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a

    :cond_a
    iget-object v4, v3, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    :goto_a
    move-object v15, v4

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v13, :cond_c

    .line 53
    iget-object v4, v3, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;

    if-eqz v12, :cond_b

    .line 57
    iget-object v4, v12, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->initializationSegment:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;

    invoke-virtual {v0, v4, v2}, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser$SegmentFactory;->GetSegment(Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v6

    .line 60
    new-instance v10, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;

    move-object v4, v10

    iget-object v5, v12, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->url:Ljava/lang/String;

    iget-wide v7, v12, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->durationUs:J

    iget v9, v12, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->relativeDiscontinuitySequence:I

    move-object/from16 p1, v10

    iget-wide v10, v12, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->relativeStartTimeUs:J

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 p1, v13

    iget-object v13, v12, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->drmInitData:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    move-object/from16 v45, v1

    move-object v1, v12

    move-object v12, v13

    iget-object v13, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->encryptionIV:Ljava/lang/String;

    move/from16 v23, v14

    move-object v14, v13

    move-object/from16 p2, v3

    move-object/from16 v24, v4

    iget-wide v3, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->byteRangeOffset:J

    move-object v13, v15

    move-wide v15, v3

    iget-wide v3, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->byteRangeLength:J

    move-wide/from16 v17, v3

    iget-boolean v3, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->hasGapTag:Z

    move/from16 v19, v3

    iget-boolean v3, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    move/from16 v20, v3

    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;->isPreload:Z

    move/from16 v21, v1

    move/from16 v1, p1

    move-object v3, v13

    move-object v13, v2

    move-object/from16 v4, v24

    invoke-direct/range {v4 .. v21}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;JIJLcom/google/android/exoplr2avp/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    .line 61
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_b
    move-object/from16 v22, v0

    move-object/from16 v45, v1

    move-object/from16 p2, v3

    move v1, v13

    move/from16 v23, v14

    move-object v3, v15

    :goto_c
    add-int/lit8 v14, v23, 0x1

    move v13, v1

    move-object v15, v3

    move-object/from16 v0, v22

    move-object/from16 v1, v45

    move-object/from16 v3, p2

    goto :goto_b

    :cond_c
    move-object/from16 v45, v1

    move-object/from16 p2, v3

    move-object v3, v15

    .line 66
    new-instance v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;

    move-object/from16 v23, v0

    move-object/from16 v1, p2

    iget v2, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    move/from16 v24, v2

    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    move-object/from16 v25, v2

    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->tags:Ljava/util/List;

    move-object/from16 v26, v2

    iget-wide v4, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    move-wide/from16 v27, v4

    iget-boolean v2, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->preciseStart:Z

    move/from16 v29, v2

    iget-wide v4, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    move-wide/from16 v30, v4

    iget-boolean v2, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasDiscontinuitySequence:Z

    move/from16 v32, v2

    iget v2, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    move/from16 v33, v2

    iget-wide v4, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    move-wide/from16 v34, v4

    iget v2, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->version:I

    move/from16 v36, v2

    iget-wide v4, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    move-wide/from16 v37, v4

    iget-wide v4, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    move-wide/from16 v39, v4

    iget-boolean v2, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    move/from16 v41, v2

    iget-boolean v2, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    move/from16 v42, v2

    iget-boolean v2, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    move/from16 v43, v2

    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->protectionSchemes:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    move-object/from16 v44, v2

    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->serverControl:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$ServerControl;

    move-object/from16 v47, v2

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;->renditionReports:Ljava/util/Map;

    move-object/from16 v48, v1

    move-object/from16 v46, v3

    invoke-direct/range {v23 .. v48}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLcom/google/android/exoplr2avp/drm/DrmInitData;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$ServerControl;Ljava/util/Map;)V

    return-object v0

    :cond_d
    return-object v1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "uri",
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylist;

    move-result-object p1

    return-object p1
.end method
