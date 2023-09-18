.class public final Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;
.super Lcom/google/android/exoplr2avp/BaseRenderer;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_INVOKE_RENDERER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MetadataRenderer"


# instance fields
.field private final buffer:Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

.field private decoder:Lcom/google/android/exoplr2avp/metadata/MetadataDecoder;

.field private final decoderFactory:Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;

.field private inputStreamEnded:Z

.field private final output:Lcom/google/android/exoplr2avp/metadata/MetadataOutput;

.field private final outputHandler:Landroid/os/Handler;

.field private outputStreamEnded:Z

.field private pendingMetadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

.field private pendingMetadataTimestampUs:J

.field private subsampleOffsetUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/metadata/MetadataOutput;Landroid/os/Looper;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;->DEFAULT:Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;-><init>(Lcom/google/android/exoplr2avp/metadata/MetadataOutput;Landroid/os/Looper;Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/metadata/MetadataOutput;Landroid/os/Looper;Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;)V
    .locals 1

    const/4 v0, 0x5

    .line 77
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/BaseRenderer;-><init>(I)V

    .line 78
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/metadata/MetadataOutput;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->output:Lcom/google/android/exoplr2avp/metadata/MetadataOutput;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p2, p0}, Lcom/google/android/exoplr2avp/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    .line 81
    invoke-static {p3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;

    .line 82
    new-instance p1, Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 83
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->pendingMetadataTimestampUs:J

    return-void
.end method

.method private decodeWrappedMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/metadata/Metadata;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 129
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 130
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/metadata/Metadata;->get(I)Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;->getWrappedMetadataFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v2, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;

    invoke-interface {v2, v1}, Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;->supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;

    .line 133
    invoke-interface {v2, v1}, Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;->createDecoder(Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/metadata/MetadataDecoder;

    move-result-object v1

    .line 136
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/metadata/Metadata;->get(I)Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;->getWrappedMetadataBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 137
    iget-object v3, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;->clear()V

    .line 138
    iget-object v3, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;->ensureSpaceForWrite(I)V

    .line 139
    iget-object v3, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 140
    iget-object v2, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;->flip()V

    .line 141
    iget-object v2, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

    invoke-interface {v1, v2}, Lcom/google/android/exoplr2avp/metadata/MetadataDecoder;->decode(Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;)Lcom/google/android/exoplr2avp/metadata/Metadata;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 144
    invoke-direct {p0, v1, p2}, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->decodeWrappedMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;Ljava/util/List;)V

    goto :goto_1

    .line 148
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/metadata/Metadata;->get(I)Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private invokeRenderer(Lcom/google/android/exoplr2avp/metadata/Metadata;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 226
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 228
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->invokeRendererInternal(Lcom/google/android/exoplr2avp/metadata/Metadata;)V

    :goto_0
    return-void
.end method

.method private invokeRendererInternal(Lcom/google/android/exoplr2avp/metadata/Metadata;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->output:Lcom/google/android/exoplr2avp/metadata/MetadataOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/metadata/MetadataOutput;->onMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;)V

    return-void
.end method

.method private outputMetadata(J)Z
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->pendingMetadataTimestampUs:J

    cmp-long v4, v2, p1

    if-gtz v4, :cond_0

    .line 213
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->invokeRenderer(Lcom/google/android/exoplr2avp/metadata/Metadata;)V

    const/4 p1, 0x0

    .line 214
    iput-object p1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 215
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->pendingMetadataTimestampUs:J

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 218
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->inputStreamEnded:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    if-nez p2, :cond_1

    .line 219
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->outputStreamEnded:Z

    :cond_1
    return p1
.end method

.method private readMetadata()V
    .locals 3

    .line 183
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;->clear()V

    .line 185
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->getFormatHolder()Lcom/google/android/exoplr2avp/FormatHolder;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->readSource(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_1

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->inputStreamEnded:Z

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->subsampleOffsetUs:J

    iput-wide v1, v0, Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;->flip()V

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->decoder:Lcom/google/android/exoplr2avp/metadata/MetadataDecoder;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/metadata/MetadataDecoder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/metadata/MetadataDecoder;->decode(Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;)Lcom/google/android/exoplr2avp/metadata/Metadata;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/metadata/Metadata;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->decodeWrappedMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;Ljava/util/List;)V

    .line 197
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    new-instance v0, Lcom/google/android/exoplr2avp/metadata/Metadata;

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/metadata/Metadata;-><init>(Ljava/util/List;)V

    .line 199
    iput-object v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->buffer:Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/metadata/MetadataInputBuffer;->timeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->pendingMetadataTimestampUs:J

    goto :goto_0

    :cond_1
    const/4 v2, -0x5

    if-ne v1, v2, :cond_2

    .line 205
    iget-object v0, v0, Lcom/google/android/exoplr2avp/FormatHolder;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/Format;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/Format;->subsampleOffsetUs:J

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->subsampleOffsetUs:J

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 174
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/metadata/Metadata;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->invokeRendererInternal(Lcom/google/android/exoplr2avp/metadata/Metadata;)V

    const/4 p1, 0x1

    return p1

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isEnded()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 3

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 156
    iput-wide v1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->pendingMetadataTimestampUs:J

    .line 157
    iput-object v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->decoder:Lcom/google/android/exoplr2avp/metadata/MetadataDecoder;

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->pendingMetadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 109
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->pendingMetadataTimestampUs:J

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 111
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->outputStreamEnded:Z

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplr2avp/Format;JJ)V
    .locals 0

    .line 103
    iget-object p2, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;->createDecoder(Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/metadata/MetadataDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->decoder:Lcom/google/android/exoplr2avp/metadata/MetadataDecoder;

    return-void
.end method

.method public render(JJ)V
    .locals 0

    const/4 p3, 0x1

    :goto_0
    if-eqz p3, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->readMetadata()V

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->outputMetadata(J)Z

    move-result p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplr2avp/Format;)I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;->decoderFactory:Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;->supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->cryptoType:I

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 94
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 97
    invoke-static {p1}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1
.end method
