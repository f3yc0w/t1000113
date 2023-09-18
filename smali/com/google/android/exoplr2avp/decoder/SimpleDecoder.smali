.class public abstract Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;
.super Ljava/lang/Object;
.source "SimpleDecoder.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/decoder/Decoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;",
        "O:",
        "Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;",
        "E:",
        "Lcom/google/android/exoplr2avp/decoder/DecoderException;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplr2avp/decoder/Decoder<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field private availableInputBufferCount:I

.field private final availableInputBuffers:[Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private availableOutputBufferCount:I

.field private final availableOutputBuffers:[Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private final decodeThread:Ljava/lang/Thread;

.field private dequeuedInputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private exception:Lcom/google/android/exoplr2avp/decoder/DecoderException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private flushed:Z

.field private final lock:Ljava/lang/Object;

.field private final queuedInputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final queuedOutputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field private released:Z

.field private skippedOutputBufferCount:I


# direct methods
.method protected constructor <init>([Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;[Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 58
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    .line 60
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableInputBufferCount:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 61
    :goto_0
    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableInputBufferCount:I

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->createInputBuffer()Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iput-object p2, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;

    .line 65
    array-length p2, p2

    iput p2, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableOutputBufferCount:I

    .line 66
    :goto_1
    iget p2, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableOutputBufferCount:I

    if-ge p1, p2, :cond_1

    .line 67
    iget-object p2, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->createOutputBuffer()Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 69
    :cond_1
    new-instance p1, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder$1;

    const-string p2, "ExoPlayer:SimpleDecoder"

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder$1;-><init>(Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    .line 76
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->run()V

    return-void
.end method

.method private canDecodeBuffer()Z
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableOutputBufferCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private decode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->released:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->canDecodeBuffer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 221
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->released:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 222
    monitor-exit v0

    return v2

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    .line 225
    iget-object v3, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;

    iget v4, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableOutputBufferCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableOutputBufferCount:I

    aget-object v3, v3, v4

    .line 226
    iget-boolean v4, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->flushed:Z

    .line 227
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->flushed:Z

    .line 228
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 230
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 231
    invoke-virtual {v3, v0}, Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;->addFlag(I)V

    goto :goto_2

    .line 233
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, -0x80000000

    .line 234
    invoke-virtual {v3, v0}, Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;->addFlag(I)V

    .line 236
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->isFirstSample()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x8000000

    .line 237
    invoke-virtual {v3, v0}, Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;->addFlag(I)V

    .line 241
    :cond_4
    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->decode(Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;Z)Lcom/google/android/exoplr2avp/decoder/DecoderException;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/decoder/DecoderException;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 245
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/decoder/DecoderException;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    .line 253
    iget-object v4, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 254
    :try_start_2
    iput-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->exception:Lcom/google/android/exoplr2avp/decoder/DecoderException;

    .line 255
    monitor-exit v4

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 260
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 261
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->flushed:Z

    if-eqz v0, :cond_6

    .line 262
    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;->release()V

    goto :goto_3

    .line 263
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 264
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 265
    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;->release()V

    goto :goto_3

    .line 267
    :cond_7
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    iput v0, v3, Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;->skippedOutputBufferCount:I

    .line 268
    iput v2, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 272
    :goto_3
    invoke-direct {p0, v1}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->releaseInputBufferInternal(Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;)V

    .line 273
    monitor-exit v4

    return v5

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 228
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method private maybeNotifyDecodeLoop()V
    .locals 1

    .line 195
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->canDecodeBuffer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    return-void
.end method

.method private maybeThrowException()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/decoder/DecoderException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->exception:Lcom/google/android/exoplr2avp/decoder/DecoderException;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    throw v0
.end method

.method private releaseInputBufferInternal(Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 283
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->clear()V

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableInputBufferCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableInputBufferCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method private releaseOutputBufferInternal(Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 288
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;->clear()V

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableOutputBuffers:[Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableOutputBufferCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableOutputBufferCount:I

    aput-object p1, v0, v1

    return-void
.end method

.method private run()V
    .locals 2

    .line 202
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->decode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 207
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected abstract createInputBuffer()Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected abstract createOutputBuffer()Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method protected abstract createUnexpectedDecodeException(Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/decoder/DecoderException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method protected abstract decode(Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;Z)Lcom/google/android/exoplr2avp/decoder/DecoderException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public final dequeueInputBuffer()Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/decoder/DecoderException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->maybeThrowException()V

    .line 99
    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 101
    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableInputBufferCount:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableInputBufferCount:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    .line 104
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/decoder/DecoderException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->dequeueInputBuffer()Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final dequeueOutputBuffer()Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/decoder/DecoderException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->maybeThrowException()V

    .line 124
    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 125
    monitor-exit v0

    return-object v1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/decoder/DecoderException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 147
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->flushed:Z

    const/4 v1, 0x0

    .line 148
    iput v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->skippedOutputBufferCount:I

    .line 149
    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    if-eqz v1, :cond_0

    .line 150
    invoke-direct {p0, v1}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->releaseInputBufferInternal(Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;)V

    const/4 v1, 0x0

    .line 151
    iput-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    .line 153
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    invoke-direct {p0, v1}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->releaseInputBufferInternal(Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;)V

    goto :goto_0

    .line 156
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;->release()V

    goto :goto_1

    .line 159
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final queueInputBuffer(Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/decoder/DecoderException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->maybeThrowException()V

    .line 112
    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 113
    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 114
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->maybeNotifyDecodeLoop()V

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/decoder/DecoderException;
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->queueInputBuffer(Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 166
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->released:Z

    .line 167
    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 168
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected releaseOutputBuffer(Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->releaseOutputBufferInternal(Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;)V

    .line 140
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->maybeNotifyDecodeLoop()V

    .line 141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final setInitialInputBufferSize(I)V
    .locals 4

    .line 88
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableInputBufferCount:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/SimpleDecoder;->availableInputBuffers:[Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 90
    invoke-virtual {v3, p1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
