.class Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29$1;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;-><init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

.field final synthetic val$this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;


# direct methods
.method constructor <init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)V
    .locals 0

    .line 1859
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29$1;->val$this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    .line 1862
    iget-object p2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$900(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Landroid/media/AudioTrack;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 1863
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1000(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1100(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1866
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1000(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;->onOffloadBufferEmptying()V

    :cond_1
    return-void
.end method

.method public onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1872
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$900(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Landroid/media/AudioTrack;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 1873
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1000(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1100(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1878
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$1000(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;->onOffloadBufferEmptying()V

    :cond_1
    return-void
.end method
