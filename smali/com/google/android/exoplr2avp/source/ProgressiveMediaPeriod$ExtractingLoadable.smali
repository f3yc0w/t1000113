.class final Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;
.implements Lcom/google/android/exoplr2avp/source/IcyDataSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field private final dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

.field private dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

.field private final extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

.field private icyTrackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

.field private length:J

.field private volatile loadCanceled:Z

.field private final loadCondition:Lcom/google/android/exoplr2avp/util/ConditionVariable;

.field private final loadTaskId:J

.field private pendingExtractorSeek:Z

.field private final positionHolder:Lcom/google/android/exoplr2avp/extractor/PositionHolder;

.field private final progressiveMediaExtractor:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;

.field private seekTimeUs:J

.field private seenIcyMetadata:Z

.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;Landroid/net/Uri;Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;Lcom/google/android/exoplr2avp/util/ConditionVariable;)V
    .locals 0

    .line 982
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 983
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 984
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-direct {p1, p3}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    .line 985
    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;

    .line 986
    iput-object p5, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    .line 987
    iput-object p6, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplr2avp/util/ConditionVariable;

    .line 988
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/PositionHolder;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/extractor/PositionHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplr2avp/extractor/PositionHolder;

    const/4 p1, 0x1

    .line 989
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    const-wide/16 p1, -0x1

    .line 990
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    .line 991
    invoke-static {}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->getNewId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J

    const-wide/16 p1, 0x0

    .line 992
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplr2avp/upstream/StatsDataSource;
    .locals 0

    .line 957
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;)J
    .locals 2

    .line 957
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadTaskId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;)Lcom/google/android/exoplr2avp/upstream/DataSpec;
    .locals 0

    .line 957
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;)J
    .locals 2

    .line 957
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;)J
    .locals 2

    .line 957
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V
    .locals 0

    .line 957
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    return-void
.end method

.method private buildDataSpec(J)Lcom/google/android/exoplr2avp/upstream/DataSpec;
    .locals 2

    .line 1081
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 1082
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    move-result-object v0

    .line 1083
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    .line 1084
    invoke-static {p2}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->access$1400(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->setKey(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    move-result-object p1

    const/4 p2, 0x6

    .line 1085
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    move-result-object p1

    .line 1087
    invoke-static {}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->access$1300()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    move-result-object p1

    .line 1088
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object p1

    return-object p1
.end method

.method private setLoadPosition(JJ)V
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplr2avp/extractor/PositionHolder;

    iput-wide p1, v0, Lcom/google/android/exoplr2avp/extractor/PositionHolder;->position:J

    .line 1093
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    const/4 p1, 0x1

    .line 1094
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    const/4 p1, 0x0

    .line 1095
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 999
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    return-void
.end method

.method public load()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_9

    .line 1005
    iget-boolean v3, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v3, :cond_9

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    .line 1007
    :try_start_0
    iget-object v6, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplr2avp/extractor/PositionHolder;

    iget-wide v13, v6, Lcom/google/android/exoplr2avp/extractor/PositionHolder;->position:J

    .line 1008
    invoke-direct {v1, v13, v14}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 1009
    iget-object v7, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    add-long/2addr v6, v13

    .line 1011
    iput-wide v6, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    .line 1013
    :cond_0
    iget-object v6, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    iget-object v7, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-virtual {v7}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplr2avp/metadata/icy/IcyHeaders;->parse(Ljava/util/Map;)Lcom/google/android/exoplr2avp/metadata/icy/IcyHeaders;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->access$702(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;Lcom/google/android/exoplr2avp/metadata/icy/IcyHeaders;)Lcom/google/android/exoplr2avp/metadata/icy/IcyHeaders;

    .line 1014
    iget-object v6, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    .line 1015
    iget-object v7, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    invoke-static {v7}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->access$700(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;)Lcom/google/android/exoplr2avp/metadata/icy/IcyHeaders;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    invoke-static {v7}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->access$700(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;)Lcom/google/android/exoplr2avp/metadata/icy/IcyHeaders;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplr2avp/metadata/icy/IcyHeaders;->metadataInterval:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 1016
    new-instance v6, Lcom/google/android/exoplr2avp/source/IcyDataSource;

    iget-object v7, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    iget-object v8, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    invoke-static {v8}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->access$700(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;)Lcom/google/android/exoplr2avp/metadata/icy/IcyHeaders;

    move-result-object v8

    iget v8, v8, Lcom/google/android/exoplr2avp/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-direct {v6, v7, v8, v1}, Lcom/google/android/exoplr2avp/source/IcyDataSource;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/source/IcyDataSource$Listener;)V

    .line 1017
    iget-object v7, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    invoke-virtual {v7}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->icyTrack()Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 1018
    invoke-static {}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->access$800()Lcom/google/android/exoplr2avp/Format;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    :cond_1
    move-object v8, v6

    .line 1020
    iget-object v7, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;

    iget-object v9, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    iget-object v6, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    .line 1023
    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v10

    iget-wide v11, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    iget-object v15, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    move-wide/from16 v16, v11

    move-wide v11, v13

    move-wide v4, v13

    move-wide/from16 v13, v16

    .line 1020
    invoke-interface/range {v7 .. v15}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;->init(Lcom/google/android/exoplr2avp/upstream/DataReader;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplr2avp/extractor/ExtractorOutput;)V

    .line 1028
    iget-object v6, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->access$700(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;)Lcom/google/android/exoplr2avp/metadata/icy/IcyHeaders;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1029
    iget-object v6, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;

    invoke-interface {v6}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;->disableSeekingOnMp3Streams()V

    .line 1032
    :cond_2
    iget-boolean v6, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v6, :cond_3

    .line 1033
    iget-object v6, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;

    iget-wide v7, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-interface {v6, v4, v5, v7, v8}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;->seek(JJ)V

    .line 1034
    iput-boolean v0, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    :cond_3
    :goto_1
    move-wide v13, v4

    :cond_4
    if-nez v2, :cond_5

    .line 1036
    iget-boolean v4, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    .line 1038
    :try_start_1
    iget-object v4, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplr2avp/util/ConditionVariable;

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/util/ConditionVariable;->block()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1042
    :try_start_2
    iget-object v4, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;

    iget-object v5, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplr2avp/extractor/PositionHolder;

    invoke-interface {v4, v5}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;->read(Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I

    move-result v2

    .line 1043
    iget-object v4, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;

    invoke-interface {v4}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v4

    .line 1044
    iget-object v6, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->access$900(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;)J

    move-result-wide v6

    add-long/2addr v6, v13

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    .line 1046
    iget-object v6, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Lcom/google/android/exoplr2avp/util/ConditionVariable;

    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/util/ConditionVariable;->close()Z

    .line 1047
    iget-object v6, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->access$1100(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    invoke-static {v7}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->access$1000(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1040
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    .line 1053
    :cond_6
    iget-object v3, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;

    invoke-interface {v3}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_7

    .line 1054
    iget-object v3, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplr2avp/extractor/PositionHolder;

    iget-object v4, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;

    invoke-interface {v4}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/exoplr2avp/extractor/PositionHolder;->position:J

    .line 1056
    :cond_7
    :goto_2
    iget-object v3, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-static {v3}, Lcom/google/android/exoplr2avp/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eq v2, v3, :cond_8

    .line 1053
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    .line 1054
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Lcom/google/android/exoplr2avp/extractor/PositionHolder;

    iget-object v3, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->progressiveMediaExtractor:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;

    invoke-interface {v3}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;->getCurrentInputPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/exoplr2avp/extractor/PositionHolder;->position:J

    .line 1056
    :cond_8
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    .line 1057
    throw v0

    :cond_9
    return-void
.end method

.method public onIcyMetadata(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V
    .locals 9

    .line 1067
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->access$1200(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 1068
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    .line 1069
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 1070
    invoke-interface {v2, p1, v6}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1071
    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V

    const/4 p1, 0x1

    .line 1073
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    return-void
.end method
