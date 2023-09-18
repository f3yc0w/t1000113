.class public Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;
.super Ljava/lang/Object;
.source "DebugTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;
    }
.end annotation


# static fields
.field private static final REFRESH_INTERVAL_MS:I = 0x3e8


# instance fields
.field private final player:Lcom/google/android/exoplr2avp/ExoPlayer;

.field private started:Z

.field private final textView:Landroid/widget/TextView;

.field private final updater:Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/ExoPlayer;Landroid/widget/TextView;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/ExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 49
    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->player:Lcom/google/android/exoplr2avp/ExoPlayer;

    .line 50
    iput-object p2, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    .line 51
    new-instance p1, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;-><init>(Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$1;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->updater:Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;

    return-void
.end method

.method private static getDecoderCountersBufferCountString(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->ensureUpdated()V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sib:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedInputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " db:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mcdb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedToKeyframeCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPixelAspectRatioString(F)Ljava/lang/String;
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " par:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "%.02f"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private static getVideoFrameProcessingOffsetAverageString(JI)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    const-string p0, "N/A"

    return-object p0

    :cond_0
    long-to-double p0, p0

    int-to-double v0, p2

    div-double/2addr p0, v0

    double-to-long p0, p0

    .line 193
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getAudioString()Ljava/lang/String;
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->player:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getAudioFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->player:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->getAudioDecoderCounters()Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/Format;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hz:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->getDecoderCountersBufferCountString(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method protected getDebugString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->getPlayerStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->getVideoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->getAudioString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPlayerStateString()Ljava/lang/String;
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->player:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    const-string/jumbo v0, "unknown"

    goto :goto_0

    :cond_0
    const-string v0, "ended"

    goto :goto_0

    :cond_1
    const-string v0, "ready"

    goto :goto_0

    :cond_2
    const-string v0, "buffering"

    goto :goto_0

    :cond_3
    const-string v0, "idle"

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 114
    iget-object v5, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->player:Lcom/google/android/exoplr2avp/ExoPlayer;

    .line 116
    invoke-interface {v5}, Lcom/google/android/exoplr2avp/ExoPlayer;->getPlayWhenReady()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v4

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->player:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "playWhenReady:%s playbackState:%s item:%s"

    .line 114
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVideoString()Ljava/lang/String;
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->player:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->player:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->getVideoDecoderCounters()Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/Format;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " r:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/exoplr2avp/Format;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/exoplr2avp/Format;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/google/android/exoplr2avp/Format;->pixelWidthHeightRatio:F

    .line 134
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->getPixelAspectRatioString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->getDecoderCountersBufferCountString(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " vfpo: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    iget v0, v1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->videoFrameProcessingOffsetCount:I

    .line 137
    invoke-static {v3, v4, v0}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->getVideoFrameProcessingOffsetAverageString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public final start()V
    .locals 2

    .line 59
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->started:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->started:Z

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->player:Lcom/google/android/exoplr2avp/ExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->updater:Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->addListener(Lcom/google/android/exoplr2avp/Player$Listener;)V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->updateAndPost()V

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 72
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->started:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->started:Z

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->player:Lcom/google/android/exoplr2avp/ExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->updater:Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->removeListener(Lcom/google/android/exoplr2avp/Player$Listener;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->updater:Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final updateAndPost()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->updater:Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->updater:Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
