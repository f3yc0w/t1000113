.class public final Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$Factory;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final chunkExtractorFactory:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$Factory;

.field private final dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private final maxSegmentsPerLoad:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$Factory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;I)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$Factory;->chunkExtractorFactory:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$Factory;

    .line 97
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$Factory;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 98
    iput p3, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$Factory;->maxSegmentsPerLoad:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;I)V
    .locals 1

    .line 81
    sget-object v0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor;->FACTORY:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$Factory;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$Factory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;I)V

    return-void
.end method


# virtual methods
.method public createDashChunkSource(Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;I[ILcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;IJZLjava/util/List;Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;Lcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/dash/DashChunkSource;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;",
            "Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;",
            "I[I",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;",
            "IJZ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/Format;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;",
            "Lcom/google/android/exoplr2avp/upstream/TransferListener;",
            "Lcom/google/android/exoplr2avp/analytics/PlayerId;",
            ")",
            "Lcom/google/android/exoplr2avp/source/dash/DashChunkSource;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p13

    .line 116
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$Factory;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v12

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {v12, v1}, Lcom/google/android/exoplr2avp/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    .line 120
    :cond_0
    new-instance v1, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;

    move-object v3, v1

    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$Factory;->chunkExtractorFactory:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$Factory;

    iget v15, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$Factory;->maxSegmentsPerLoad:I

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v13, p8

    move/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p14

    invoke-direct/range {v3 .. v19}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;-><init>(Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$Factory;Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;I[ILcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;ILcom/google/android/exoplr2avp/upstream/DataSource;JIZLjava/util/List;Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    return-object v1
.end method
