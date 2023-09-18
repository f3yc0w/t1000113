.class public abstract Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;
.super Lcom/google/android/exoplr2avp/BaseRenderer;
.source "DecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer$AudioSinkListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplr2avp/decoder/Decoder<",
        "Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;",
        "+",
        "Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;",
        "+",
        "Lcom/google/android/exoplr2avp/decoder/DecoderException;",
        ">;>",
        "Lcom/google/android/exoplr2avp/BaseRenderer;",
        "Lcom/google/android/exoplr2avp/util/MediaClock;"
    }
.end annotation


# static fields
.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DecoderAudioRenderer"


# instance fields
.field private allowFirstBufferPositionDiscontinuity:Z

.field private allowPositionDiscontinuity:Z

.field private final audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

.field private audioTrackNeedsConfigure:Z

.field private currentPositionUs:J

.field private decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

.field private decoderDrmSession:Lcom/google/android/exoplr2avp/drm/DrmSession;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private encoderDelay:I

.field private encoderPadding:I

.field private final eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

.field private experimentalKeepAudioTrackOnSeek:Z

.field private firstStreamSampleRead:Z

.field private final flagsOnlyBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

.field private inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

.field private inputFormat:Lcom/google/android/exoplr2avp/Format;

.field private inputStreamEnded:Z

.field private outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

.field private outputStreamEnded:Z

.field private sourceDrmSession:Lcom/google/android/exoplr2avp/drm/DrmSession;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;[Lcom/google/android/exoplr2avp/audio/AudioProcessor;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioCapabilities;[Lcom/google/android/exoplr2avp/audio/AudioProcessor;)V
    .locals 2

    .line 179
    new-instance v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;-><init>()V

    sget-object v1, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 184
    invoke-static {p3, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 183
    invoke-virtual {v0, p3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setAudioCapabilities(Lcom/google/android/exoplr2avp/audio/AudioCapabilities;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p3

    .line 185
    invoke-virtual {p3, p4}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setAudioProcessors([Lcom/google/android/exoplr2avp/audio/AudioProcessor;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p3

    .line 186
    invoke-virtual {p3}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->build()Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    move-result-object p3

    .line 179
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioSink;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioSink;)V
    .locals 2

    const/4 v0, 0x1

    .line 199
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/BaseRenderer;-><init>(I)V

    .line 200
    new-instance v1, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;)V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    .line 201
    iput-object p3, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    .line 202
    new-instance p1, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer$AudioSinkListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer$AudioSinkListener;-><init>(Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer$1;)V

    invoke-interface {p3, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setListener(Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;)V

    .line 203
    invoke-static {}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->newNoDataInstance()Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    const/4 p1, 0x0

    .line 204
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    .line 205
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;[Lcom/google/android/exoplr2avp/audio/AudioProcessor;)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioCapabilities;[Lcom/google/android/exoplr2avp/audio/AudioProcessor;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;)Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    return-object p0
.end method

.method private drainOutputBuffer()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;,
            Lcom/google/android/exoplr2avp/decoder/DecoderException;,
            Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;,
            Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    if-nez v0, :cond_0

    return v1

    .line 385
    :cond_0
    iget v0, v0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;->skippedOutputBufferCount:I

    if-lez v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget v2, v0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    iget v3, v3, Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 387
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->handleDiscontinuity()V

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;->isFirstSample()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->handleDiscontinuity()V

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 395
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 397
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 398
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 400
    iput-boolean v3, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    goto :goto_0

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 403
    iput-object v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    .line 405
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->processEndOfStream()V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .line 407
    iget-object v1, v0, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplr2avp/Format;

    iget-boolean v2, v0, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;->isRecoverable:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;ZI)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 414
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    if-eqz v0, :cond_5

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    .line 416
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->getOutputFormat(Lcom/google/android/exoplr2avp/decoder/Decoder;)Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Format;->buildUpon()Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    iget v4, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->encoderDelay:I

    .line 418
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    iget v4, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->encoderPadding:I

    .line 419
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    .line 421
    iget-object v4, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v4, v0, v1, v2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->configure(Lcom/google/android/exoplr2avp/Format;I[I)V

    .line 422
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 425
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    iget-wide v5, v5, Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;->timeUs:J

    invoke-interface {v0, v4, v5, v6, v3}, Lcom/google/android/exoplr2avp/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 427
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 428
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 429
    iput-object v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    return v3

    :cond_6
    return v1
.end method

.method private feedInputBuffer()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/decoder/DecoderException;,
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 444
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    if-nez v2, :cond_1

    .line 445
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    if-nez v0, :cond_1

    return v1

    .line 451
    :cond_1
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 452
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 453
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    invoke-interface {v0, v4}, Lcom/google/android/exoplr2avp/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 454
    iput-object v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    .line 455
    iput v3, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    return v1

    .line 459
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->getFormatHolder()Lcom/google/android/exoplr2avp/FormatHolder;

    move-result-object v0

    .line 460
    iget-object v3, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->readSource(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I

    move-result v3

    const/4 v5, -0x5

    if-eq v3, v5, :cond_7

    const/4 v0, -0x4

    if-eq v3, v0, :cond_4

    const/4 v0, -0x3

    if-ne v3, v0, :cond_3

    return v1

    .line 486
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 467
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 468
    iput-boolean v4, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    invoke-interface {v0, v3}, Lcom/google/android/exoplr2avp/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 470
    iput-object v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    return v1

    .line 473
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->firstStreamSampleRead:Z

    if-nez v0, :cond_6

    .line 474
    iput-boolean v4, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->firstStreamSampleRead:Z

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 477
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->flip()V

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    iput-object v1, v0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->format:Lcom/google/android/exoplr2avp/Format;

    .line 479
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->onQueueInputBuffer(Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;)V

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 481
    iput-boolean v4, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 482
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget v1, v0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->queuedInputBufferCount:I

    .line 483
    iput-object v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    return v4

    .line 464
    :cond_7
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->onInputFormatChanged(Lcom/google/android/exoplr2avp/FormatHolder;)V

    return v4

    :cond_8
    :goto_0
    return v1
.end method

.method private flushDecoder()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 496
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    if-eqz v0, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 498
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 500
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    .line 501
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    if-eqz v1, :cond_1

    .line 502
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 503
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/decoder/Decoder;->flush()V

    const/4 v0, 0x0

    .line 506
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    :goto_0
    return-void
.end method

.method private maybeInitDecoder()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    if-eqz v0, :cond_0

    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplr2avp/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->setDecoderDrmSession(Lcom/google/android/exoplr2avp/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 642
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplr2avp/drm/DrmSession;

    if-eqz v1, :cond_2

    .line 643
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/drm/DrmSession;->getCryptoConfig()Lcom/google/android/exoplr2avp/decoder/CryptoConfig;

    move-result-object v0

    if-nez v0, :cond_2

    .line 645
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplr2avp/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/drm/DrmSession;->getError()Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/16 v1, 0xfa1

    .line 657
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "createAudioDecoder"

    .line 658
    invoke-static {v4}, Lcom/google/android/exoplr2avp/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 659
    iget-object v4, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-virtual {p0, v4, v0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->createDecoder(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/CryptoConfig;)Lcom/google/android/exoplr2avp/decoder/Decoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    .line 660
    invoke-static {}, Lcom/google/android/exoplr2avp/util/TraceUtil;->endSection()V

    .line 661
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 662
    iget-object v4, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    .line 663
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v5

    sub-long v8, v6, v2

    .line 662
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 666
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget v2, v0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 673
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;I)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    const-string v2, "DecoderAudioRenderer"

    const-string v3, "Audio codec error"

    .line 668
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 669
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->audioCodecError(Ljava/lang/Exception;)V

    .line 670
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;I)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private onInputFormatChanged(Lcom/google/android/exoplr2avp/FormatHolder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 703
    iget-object v0, p1, Lcom/google/android/exoplr2avp/FormatHolder;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/exoplr2avp/Format;

    .line 704
    iget-object p1, p1, Lcom/google/android/exoplr2avp/FormatHolder;->drmSession:Lcom/google/android/exoplr2avp/drm/DrmSession;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->setSourceDrmSession(Lcom/google/android/exoplr2avp/drm/DrmSession;)V

    .line 705
    iget-object v3, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    .line 706
    iput-object v4, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    .line 707
    iget p1, v4, Lcom/google/android/exoplr2avp/Format;->encoderDelay:I

    iput p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->encoderDelay:I

    .line 708
    iget p1, v4, Lcom/google/android/exoplr2avp/Format;->encoderPadding:I

    iput p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->encoderPadding:I

    .line 710
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    if-nez p1, :cond_0

    .line 711
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 712
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-void

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplr2avp/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplr2avp/drm/DrmSession;

    if-eq v0, v1, :cond_1

    .line 718
    new-instance v0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    .line 720
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;II)V

    goto :goto_0

    .line 726
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v4}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->canReuseDecoder(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 729
    :goto_0
    iget p1, v0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->result:I

    if-nez p1, :cond_3

    .line 730
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 732
    iput v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    goto :goto_1

    .line 735
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 736
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 737
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 740
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method private processEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 491
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    .line 492
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->playToEndOfStream()V

    return-void
.end method

.method private releaseDecoder()V
    .locals 3

    const/4 v0, 0x0

    .line 679
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    .line 680
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    const/4 v1, 0x0

    .line 681
    iput v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    .line 682
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 683
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget v2, v1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 685
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/decoder/Decoder;->release()V

    .line 686
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    .line 687
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    .line 689
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->setDecoderDrmSession(Lcom/google/android/exoplr2avp/drm/DrmSession;)V

    return-void
.end method

.method private setDecoderDrmSession(Lcom/google/android/exoplr2avp/drm/DrmSession;)V
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplr2avp/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplr2avp/drm/DrmSession;Lcom/google/android/exoplr2avp/drm/DrmSession;)V

    .line 699
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderDrmSession:Lcom/google/android/exoplr2avp/drm/DrmSession;

    return-void
.end method

.method private setSourceDrmSession(Lcom/google/android/exoplr2avp/drm/DrmSession;)V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplr2avp/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/drm/DrmSession$-CC;->replaceSession(Lcom/google/android/exoplr2avp/drm/DrmSession;Lcom/google/android/exoplr2avp/drm/DrmSession;)V

    .line 694
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->sourceDrmSession:Lcom/google/android/exoplr2avp/drm/DrmSession;

    return-void
.end method

.method private updateCurrentPosition()V
    .locals 5

    .line 756
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 759
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 761
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->currentPositionUs:J

    const/4 v0, 0x0

    .line 762
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected canReuseDecoder(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;
    .locals 7

    .line 373
    new-instance v6, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;II)V

    return-object v6
.end method

.method protected abstract createDecoder(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/CryptoConfig;)Lcom/google/android/exoplr2avp/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/Format;",
            "Lcom/google/android/exoplr2avp/decoder/CryptoConfig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/decoder/DecoderException;
        }
    .end annotation
.end method

.method public experimentalSetEnableKeepAudioTrackOnSeek(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->experimentalKeepAudioTrackOnSeek:Z

    return-void
.end method

.method public getMediaClock()Lcom/google/android/exoplr2avp/util/MediaClock;
    .locals 0

    return-object p0
.end method

.method protected abstract getOutputFormat(Lcom/google/android/exoplr2avp/decoder/Decoder;)Lcom/google/android/exoplr2avp/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/exoplr2avp/Format;"
        }
    .end annotation
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 523
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 524
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->updateCurrentPosition()V

    .line 526
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method protected final getSinkFormatSupport(Lcom/google/android/exoplr2avp/Format;)I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->getFormatSupport(Lcom/google/android/exoplr2avp/Format;)I

    move-result p1

    return p1
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 629
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplr2avp/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 620
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setAudioSessionId(I)V

    goto :goto_0

    .line 617
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setSkipSilenceEnabled(Z)V

    goto :goto_0

    .line 613
    :cond_2
    check-cast p2, Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;

    .line 614
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setAuxEffectInfo(Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;)V

    goto :goto_0

    .line 609
    :cond_3
    check-cast p2, Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    .line 610
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    goto :goto_0

    .line 606
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setVolume(F)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputBuffer:Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onDisabled()V
    .locals 3

    const/4 v0, 0x0

    .line 583
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    const/4 v1, 0x1

    .line 584
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 586
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->setSourceDrmSession(Lcom/google/android/exoplr2avp/drm/DrmSession;)V

    .line 587
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 588
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    .line 591
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 542
    new-instance p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    .line 543
    iget-object p2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    .line 544
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->getConfiguration()Lcom/google/android/exoplr2avp/RendererConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/RendererConfiguration;->tunneling:Z

    if-eqz p1, :cond_0

    .line 545
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->enableTunnelingV21()V

    goto :goto_0

    .line 547
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->disableTunneling()V

    .line 549
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->getPlayerId()Lcom/google/android/exoplr2avp/analytics/PlayerId;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setPlayerId(Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    return-void
.end method

.method protected onPositionDiscontinuity()V
    .locals 1

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 554
    iget-boolean p3, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->experimentalKeepAudioTrackOnSeek:Z

    if-eqz p3, :cond_0

    .line 555
    iget-object p3, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplr2avp/audio/AudioSink;->experimentalFlushWithoutAudioTrackRelease()V

    goto :goto_0

    .line 557
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplr2avp/audio/AudioSink;->flush()V

    .line 560
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->currentPositionUs:J

    const/4 p1, 0x1

    .line 561
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 562
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    const/4 p1, 0x0

    .line 563
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 564
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    .line 565
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    if-eqz p1, :cond_1

    .line 566
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->flushDecoder()V

    :cond_1
    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;)V
    .locals 5

    .line 744
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->currentPositionUs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 749
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->currentPositionUs:J

    :cond_0
    const/4 p1, 0x0

    .line 751
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    :cond_1
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->play()V

    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 577
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->updateCurrentPosition()V

    .line 578
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->pause()V

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplr2avp/Format;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 597
    invoke-super/range {p0 .. p5}, Lcom/google/android/exoplr2avp/BaseRenderer;->onStreamChanged([Lcom/google/android/exoplr2avp/Format;JJ)V

    const/4 p1, 0x0

    .line 598
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->firstStreamSampleRead:Z

    return-void
.end method

.method public render(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 270
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    const/16 p2, 0x138a

    if-eqz p1, :cond_0

    .line 272
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->playToEndOfStream()V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 274
    iget-object p3, p1, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplr2avp/Format;

    iget-boolean p4, p1, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;ZI)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    if-nez p1, :cond_3

    .line 283
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->getFormatHolder()Lcom/google/android/exoplr2avp/FormatHolder;

    move-result-object p1

    .line 284
    iget-object p3, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->clear()V

    .line 285
    iget-object p3, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    const/4 p4, 0x2

    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->readSource(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_1

    .line 287
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->onInputFormatChanged(Lcom/google/android/exoplr2avp/FormatHolder;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne p3, p1, :cond_2

    .line 290
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const/4 p1, 0x1

    .line 291
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 293
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->processEndOfStream()V
    :try_end_1
    .catch Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const/4 p3, 0x0

    .line 295
    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;I)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_2
    return-void

    .line 306
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 308
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoder:Lcom/google/android/exoplr2avp/decoder/Decoder;

    if-eqz p1, :cond_6

    const/16 p1, 0x1389

    :try_start_2
    const-string p3, "drainAndFeed"

    .line 311
    invoke-static {p3}, Lcom/google/android/exoplr2avp/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 312
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->drainOutputBuffer()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    .line 313
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->feedInputBuffer()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    .line 314
    :cond_5
    invoke-static {}, Lcom/google/android/exoplr2avp/util/TraceUtil;->endSection()V
    :try_end_2
    .catch Lcom/google/android/exoplr2avp/decoder/DecoderException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 330
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_3

    :catch_2
    move-exception p1

    .line 327
    iget-object p3, p1, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplr2avp/Format;

    iget-boolean p4, p1, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;ZI)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    throw p1

    :catch_3
    move-exception p2

    .line 324
    iget-object p3, p2, Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;->format:Lcom/google/android/exoplr2avp/Format;

    iget-boolean p4, p2, Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;->isRecoverable:Z

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;ZI)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    throw p1

    :catch_4
    move-exception p2

    .line 321
    iget-object p3, p2, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-virtual {p0, p2, p3, p1}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;I)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    throw p1

    :catch_5
    move-exception p1

    const-string p2, "DecoderAudioRenderer"

    const-string p3, "Audio codec error"

    .line 317
    invoke-static {p2, p3, p1}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    iget-object p2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->audioCodecError(Ljava/lang/Exception;)V

    .line 319
    iget-object p2, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->inputFormat:Lcom/google/android/exoplr2avp/Format;

    const/16 p3, 0xfa3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;I)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    return-void
.end method

.method protected final sinkSupportsFormat(Lcom/google/android/exoplr2avp/Format;)Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z

    move-result p1

    return p1
.end method

.method public final supportsFormat(Lcom/google/android/exoplr2avp/Format;)I
    .locals 3

    .line 229
    iget-object v0, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 230
    invoke-static {v1}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->supportsFormatInternal(Lcom/google/android/exoplr2avp/Format;)I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    .line 234
    invoke-static {p1}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 237
    :cond_1
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    const/16 v1, 0x20

    :cond_2
    const/16 v0, 0x8

    .line 238
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(III)I

    move-result p1

    return p1
.end method

.method protected abstract supportsFormatInternal(Lcom/google/android/exoplr2avp/Format;)I
.end method
