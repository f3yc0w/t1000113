.class public final Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;
.super Ljava/lang/Object;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

.field private tag:Ljava/lang/Object;

.field private trackId:Ljava/lang/String;

.field private treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 58
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    return-void
.end method


# virtual methods
.method public createMediaSource(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;J)Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;
    .locals 11

    .line 125
    new-instance v10, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;->trackId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-boolean v7, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    iget-object v8, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;->tag:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;JLcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$1;)V

    return-object v10
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setTrackId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;->trackId:Ljava/lang/String;

    return-object p0
.end method

.method public setTreatLoadErrorsAsEndOfStream(Z)Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;->treatLoadErrorsAsEndOfStream:Z

    return-object p0
.end method
