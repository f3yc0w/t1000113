.class final Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "RtspMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;

.field private final track:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;I)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    iput p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$SampleStreamImpl;->track:I

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->access$1100(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->access$1100(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public readData(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->readData(ILcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I

    move-result p1

    return p1
.end method

.method public skipData(J)I
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->skipData(IJ)I

    move-result p1

    return p1
.end method
