.class Lcom/google/android/exoplr2avp/text/ExoplayerCuesDecoder$1;
.super Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;
.source "ExoplayerCuesDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplr2avp/text/ExoplayerCuesDecoder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/text/ExoplayerCuesDecoder;


# direct methods
.method constructor <init>(Lcom/google/android/exoplr2avp/text/ExoplayerCuesDecoder;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/ExoplayerCuesDecoder$1;->this$0:Lcom/google/android/exoplr2avp/text/ExoplayerCuesDecoder;

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/ExoplayerCuesDecoder$1;->this$0:Lcom/google/android/exoplr2avp/text/ExoplayerCuesDecoder;

    invoke-static {v0, p0}, Lcom/google/android/exoplr2avp/text/ExoplayerCuesDecoder;->access$000(Lcom/google/android/exoplr2avp/text/ExoplayerCuesDecoder;Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;)V

    return-void
.end method
