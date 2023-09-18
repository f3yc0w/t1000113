.class public final synthetic Lcom/google/android/exoplr2avp/text/cea/-$$Lambda$bsBBzwKMQG_of2RqXlVRHnxtbq4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/-$$Lambda$bsBBzwKMQG_of2RqXlVRHnxtbq4;->f$0:Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/-$$Lambda$bsBBzwKMQG_of2RqXlVRHnxtbq4;->f$0:Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;

    check-cast p1, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaOutputBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->releaseOutputBuffer(Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;)V

    return-void
.end method
