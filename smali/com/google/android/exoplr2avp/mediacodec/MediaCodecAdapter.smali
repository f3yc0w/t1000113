.class public interface abstract Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;,
        Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;,
        Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;
    }
.end annotation


# virtual methods
.method public abstract dequeueInputBufferIndex()I
.end method

.method public abstract dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
.end method

.method public abstract flush()V
.end method

.method public abstract getInputBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getMetrics()Landroid/os/PersistableBundle;
.end method

.method public abstract getOutputBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getOutputFormat()Landroid/media/MediaFormat;
.end method

.method public abstract needsReconfiguration()Z
.end method

.method public abstract queueInputBuffer(IIIJI)V
.end method

.method public abstract queueSecureInputBuffer(IILcom/google/android/exoplr2avp/decoder/CryptoInfo;JI)V
.end method

.method public abstract release()V
.end method

.method public abstract releaseOutputBuffer(IJ)V
.end method

.method public abstract releaseOutputBuffer(IZ)V
.end method

.method public abstract setOnFrameRenderedListener(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V
.end method

.method public abstract setOutputSurface(Landroid/view/Surface;)V
.end method

.method public abstract setParameters(Landroid/os/Bundle;)V
.end method

.method public abstract setVideoScalingMode(I)V
.end method
