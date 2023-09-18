.class final Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;
.super Ljava/lang/Object;
.source "EventSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/SampleStream;


# instance fields
.field private currentIndex:I

.field private final eventMessageEncoder:Lcom/google/android/exoplr2avp/metadata/emsg/EventMessageEncoder;

.field private eventStream:Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;

.field private eventStreamAppendable:Z

.field private eventTimesUs:[J

.field private isFormatSentDownstream:Z

.field private pendingSeekPositionUs:J

.field private final upstreamFormat:Lcom/google/android/exoplr2avp/Format;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;Lcom/google/android/exoplr2avp/Format;Z)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->upstreamFormat:Lcom/google/android/exoplr2avp/Format;

    .line 51
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventStream:Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;

    .line 52
    new-instance p2, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessageEncoder;

    invoke-direct {p2}, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessageEncoder;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventMessageEncoder:Lcom/google/android/exoplr2avp/metadata/emsg/EventMessageEncoder;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 53
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->pendingSeekPositionUs:J

    .line 54
    iget-object p2, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;->presentationTimesUs:[J

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventTimesUs:[J

    .line 55
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->updateEventStream(Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;Z)V

    return-void
.end method


# virtual methods
.method public eventStreamId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventStream:Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public maybeThrowError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public readData(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I
    .locals 6

    .line 103
    iget v0, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->currentIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventTimesUs:[J

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x4

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    .line 104
    iget-boolean v5, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventStreamAppendable:Z

    if-nez v5, :cond_1

    .line 105
    invoke-virtual {p2, v4}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->setFlags(I)V

    return v3

    :cond_1
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_6

    .line 108
    iget-boolean v5, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->isFormatSentDownstream:Z

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p1, -0x3

    return p1

    :cond_3
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_4

    add-int/lit8 p1, v0, 0x1

    .line 119
    iput p1, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->currentIndex:I

    :cond_4
    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_5

    .line 122
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventMessageEncoder:Lcom/google/android/exoplr2avp/metadata/emsg/EventMessageEncoder;

    iget-object p3, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventStream:Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;

    iget-object p3, p3, Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;->events:[Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessageEncoder;->encode(Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;)[B

    move-result-object p1

    .line 123
    array-length p3, p1

    invoke-virtual {p2, p3}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 124
    iget-object p3, p2, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 126
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventTimesUs:[J

    aget-wide v0, p1, v0

    iput-wide v0, p2, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->timeUs:J

    .line 127
    invoke-virtual {p2, v2}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->setFlags(I)V

    return v3

    .line 109
    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->upstreamFormat:Lcom/google/android/exoplr2avp/Format;

    iput-object p2, p1, Lcom/google/android/exoplr2avp/FormatHolder;->format:Lcom/google/android/exoplr2avp/Format;

    .line 110
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->isFormatSentDownstream:Z

    const/4 p1, -0x5

    return p1
.end method

.method public seekToUs(J)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventTimesUs:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/exoplr2avp/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->currentIndex:I

    .line 86
    iget-boolean v3, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventStreamAppendable:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventTimesUs:[J

    array-length v3, v3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 87
    :goto_1
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->pendingSeekPositionUs:J

    return-void
.end method

.method public skipData(J)I
    .locals 4

    .line 133
    iget v0, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->currentIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventTimesUs:[J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->binarySearchCeil([JJZZ)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 134
    iget p2, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->currentIndex:I

    sub-int p2, p1, p2

    .line 135
    iput p1, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->currentIndex:I

    return p2
.end method

.method public updateEventStream(Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;Z)V
    .locals 8

    .line 63
    iget v0, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->currentIndex:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventTimesUs:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v4, v3, v0

    .line 65
    :goto_0
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventStreamAppendable:Z

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventStream:Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;

    .line 67
    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/EventStream;->presentationTimesUs:[J

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->eventTimesUs:[J

    .line 68
    iget-wide v6, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->pendingSeekPositionUs:J

    cmp-long p2, v6, v1

    if-eqz p2, :cond_1

    .line 69
    invoke-virtual {p0, v6, v7}, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->seekToUs(J)V

    goto :goto_1

    :cond_1
    cmp-long p2, v4, v1

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 72
    invoke-static {p1, v4, v5, p2, p2}, Lcom/google/android/exoplr2avp/util/Util;->binarySearchCeil([JJZZ)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/source/dash/EventSampleStream;->currentIndex:I

    :cond_2
    :goto_1
    return-void
.end method
