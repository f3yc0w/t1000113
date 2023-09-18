.class public final synthetic Lcom/twobigears/audio360exo2/-$$Lambda$OpusDecoder$ThBrGOEqXy8ylzr-ctZHUnrD7vc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner;


# instance fields
.field public final synthetic f$0:Lcom/twobigears/audio360exo2/OpusDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/twobigears/audio360exo2/OpusDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twobigears/audio360exo2/-$$Lambda$OpusDecoder$ThBrGOEqXy8ylzr-ctZHUnrD7vc;->f$0:Lcom/twobigears/audio360exo2/OpusDecoder;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/twobigears/audio360exo2/-$$Lambda$OpusDecoder$ThBrGOEqXy8ylzr-ctZHUnrD7vc;->f$0:Lcom/twobigears/audio360exo2/OpusDecoder;

    check-cast p1, Lcom/google/android/exoplr2avp/decoder/SimpleDecoderOutputBuffer;

    invoke-static {v0, p1}, Lcom/twobigears/audio360exo2/OpusDecoder;->lambda$ThBrGOEqXy8ylzr-ctZHUnrD7vc(Lcom/twobigears/audio360exo2/OpusDecoder;Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;)V

    return-void
.end method
