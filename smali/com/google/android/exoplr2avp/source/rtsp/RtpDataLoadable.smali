.class final Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;
.super Ljava/lang/Object;
.source "RtpDataLoadable.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable$EventListener;
    }
.end annotation


# instance fields
.field private final eventListener:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable$EventListener;

.field private extractor:Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;

.field private volatile loadCancelled:Z

.field private volatile nextRtpTimestamp:J

.field private final output:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

.field private volatile pendingSeekPositionUs:J

.field private final playbackThreadHandler:Landroid/os/Handler;

.field private final rtpDataChannelFactory:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;

.field public final rtspMediaTrack:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaTrack;

.field public final trackId:I


# direct methods
.method public constructor <init>(ILcom/google/android/exoplr2avp/source/rtsp/RtspMediaTrack;Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable$EventListener;Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->trackId:I

    .line 96
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->rtspMediaTrack:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaTrack;

    .line 97
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->eventListener:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable$EventListener;

    .line 98
    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->output:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    .line 99
    invoke-static {}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->playbackThreadHandler:Landroid/os/Handler;

    .line 100
    iput-object p5, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->rtpDataChannelFactory:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 101
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->pendingSeekPositionUs:J

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->loadCancelled:Z

    return-void
.end method

.method public synthetic lambda$load$0$RtpDataLoadable(Ljava/lang/String;Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->eventListener:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable$EventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable$EventListener;->onTransportReady(Ljava/lang/String;Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel;)V

    return-void
.end method

.method public load()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->rtpDataChannelFactory:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;

    iget v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->trackId:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;->createAndOpenDataChannel(I)Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel;->getTransport()Ljava/lang/String;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->playbackThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplr2avp/source/rtsp/-$$Lambda$RtpDataLoadable$vOjBJqHAv-fzK-dKSVlbZb2vNs0;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/android/exoplr2avp/source/rtsp/-$$Lambda$RtpDataLoadable$vOjBJqHAv-fzK-dKSVlbZb2vNs0;-><init>(Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;Ljava/lang/String;Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    new-instance v1, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorInput;

    .line 148
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/exoplr2avp/upstream/DataReader;

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplr2avp/upstream/DataReader;JJ)V

    .line 149
    new-instance v2, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->rtspMediaTrack:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaTrack;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaTrack;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    iget v4, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->trackId:I

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;-><init>(Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;I)V

    iput-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->extractor:Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;

    .line 150
    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->output:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->init(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;)V

    .line 152
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->loadCancelled:Z

    if-nez v2, :cond_2

    .line 153
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->pendingSeekPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 154
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->extractor:Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;

    iget-wide v6, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->nextRtpTimestamp:J

    iget-wide v8, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->pendingSeekPositionUs:J

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->seek(JJ)V

    .line 155
    iput-wide v4, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->pendingSeekPositionUs:J

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->extractor:Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;

    new-instance v3, Lcom/google/android/exoplr2avp/extractor/PositionHolder;

    invoke-direct {v3}, Lcom/google/android/exoplr2avp/extractor/PositionHolder;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 166
    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplr2avp/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    .line 167
    throw v1
.end method

.method public resetForSeek()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->extractor:Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->preSeek()V

    return-void
.end method

.method public seekToUs(JJ)V
    .locals 0

    .line 187
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->pendingSeekPositionUs:J

    .line 188
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->nextRtpTimestamp:J

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->extractor:Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->hasReadFirstRtpPacket()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->extractor:Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->setFirstSequenceNumber(I)V

    :cond_0
    return-void
.end method

.method public setTimestamp(J)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->extractor:Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->hasReadFirstRtpPacket()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;->extractor:Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->setFirstTimestamp(J)V

    :cond_0
    return-void
.end method
