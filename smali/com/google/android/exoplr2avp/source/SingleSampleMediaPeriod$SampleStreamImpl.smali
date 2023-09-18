.class final Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# static fields
.field private static final STREAM_STATE_END_OF_STREAM:I = 0x2

.field private static final STREAM_STATE_SEND_FORMAT:I = 0x0

.field private static final STREAM_STATE_SEND_SAMPLE:I = 0x1


# instance fields
.field private notifiedDownstreamFormat:Z

.field private streamState:I

.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$1;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;-><init>(Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;)V

    return-void
.end method

.method private maybeNotifyDownstreamFormat()V
    .locals 8

    .line 398
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->notifiedDownstreamFormat:Z

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->access$300(Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->format:Lcom/google/android/exoplr2avp/Format;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    .line 400
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->format:Lcom/google/android/exoplr2avp/Format;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 399
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 405
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->notifiedDownstreamFormat:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->loadingFinished:Z

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->treatLoadErrorsAsEndOfStream:Z

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->loader:Lcom/google/android/exoplr2avp/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/Loader;->maybeThrowError()V

    :cond_0
    return-void
.end method

.method public readData(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I
    .locals 7

    .line 354
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->maybeNotifyDownstreamFormat()V

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->loadingFinished:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->sampleData:[B

    if-nez v0, :cond_0

    .line 356
    iput v1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    .line 359
    :cond_0
    iget v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 v2, -0x4

    if-ne v0, v1, :cond_1

    const/4 p1, 0x4

    .line 360
    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->addFlag(I)V

    return v2

    :cond_1
    and-int/lit8 v3, p3, 0x2

    const/4 v4, 0x1

    if-nez v3, :cond_6

    if-nez v0, :cond_2

    goto :goto_0

    .line 370
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez p1, :cond_3

    const/4 p1, -0x3

    return p1

    .line 373
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->sampleData:[B

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {p2, v4}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->addFlag(I)V

    const-wide/16 v5, 0x0

    .line 376
    iput-wide v5, p2, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->timeUs:J

    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_4

    .line 378
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    iget p1, p1, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->sampleSize:I

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 379
    iget-object p1, p2, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->sampleData:[B

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    iget v3, v3, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->sampleSize:I

    invoke-virtual {p1, p2, v0, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_4
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_5

    .line 382
    iput v1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    :cond_5
    return v2

    .line 365
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;->format:Lcom/google/android/exoplr2avp/Format;

    iput-object p2, p1, Lcom/google/android/exoplr2avp/FormatHolder;->format:Lcom/google/android/exoplr2avp/Format;

    .line 366
    iput v4, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 p1, -0x5

    return p1
.end method

.method public reset()V
    .locals 2

    .line 334
    iget v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 335
    iput v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    :cond_0
    return-void
.end method

.method public skipData(J)I
    .locals 3

    .line 389
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->maybeNotifyDownstreamFormat()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 390
    iget p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 391
    iput p2, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
