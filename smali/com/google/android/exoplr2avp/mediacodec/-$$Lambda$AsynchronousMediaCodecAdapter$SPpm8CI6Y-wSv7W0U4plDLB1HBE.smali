.class public final synthetic Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$SPpm8CI6Y-wSv7W0U4plDLB1HBE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$SPpm8CI6Y-wSv7W0U4plDLB1HBE;->f$0:Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$SPpm8CI6Y-wSv7W0U4plDLB1HBE;->f$1:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$SPpm8CI6Y-wSv7W0U4plDLB1HBE;->f$0:Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$SPpm8CI6Y-wSv7W0U4plDLB1HBE;->f$1:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;->lambda$setOnFrameRenderedListener$0$AsynchronousMediaCodecAdapter(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
