.class final Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

.field private final track:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;I)V
    .locals 0

    .line 930
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 931
    iput p2, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$SampleStreamImpl;)I
    .locals 0

    .line 926
    iget p0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    return p0
.end method


# virtual methods
.method public isReady()Z
    .locals 2

    .line 936
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 941
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->maybeThrowError(I)V

    return-void
.end method

.method public readData(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I
    .locals 2

    .line 947
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->readData(ILcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I

    move-result p1

    return p1
.end method

.method public skipData(J)I
    .locals 2

    .line 952
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    iget v1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->skipData(IJ)I

    move-result p1

    return p1
.end method
