.class Lcom/google/android/exoplr2avp/text/SimpleSubtitleDecoder$1;
.super Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;
.source "SimpleSubtitleDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplr2avp/text/SimpleSubtitleDecoder;->createOutputBuffer()Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/text/SimpleSubtitleDecoder;


# direct methods
.method constructor <init>(Lcom/google/android/exoplr2avp/text/SimpleSubtitleDecoder;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/SimpleSubtitleDecoder$1;->this$0:Lcom/google/android/exoplr2avp/text/SimpleSubtitleDecoder;

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/SimpleSubtitleDecoder$1;->this$0:Lcom/google/android/exoplr2avp/text/SimpleSubtitleDecoder;

    invoke-static {v0, p0}, Lcom/google/android/exoplr2avp/text/SimpleSubtitleDecoder;->access$000(Lcom/google/android/exoplr2avp/text/SimpleSubtitleDecoder;Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;)V

    return-void
.end method
