.class Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;
.super Ljava/lang/Thread;
.source "WebRtcAudioLoopBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioLoopBackThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private volatile keepAlive:Z

.field final synthetic this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;


# direct methods
.method public constructor <init>(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    .line 176
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->keepAlive:Z

    .line 177
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->reset()V

    .line 179
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 180
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->handler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 7

    const/16 v0, -0x13

    .line 192
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioLoopBackThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioLoopBack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 197
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)V

    .line 198
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->keepAlive:Z

    if-eqz v0, :cond_5

    .line 200
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$100(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)Landroid/media/AudioRecord;

    move-result-object v0

    const/4 v2, -0x3

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$100(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x3

    .line 203
    :goto_1
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_4

    .line 204
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    iget-object v2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 206
    iget-object v2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$400(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 211
    :cond_2
    iget-boolean v2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->keepAlive:Z

    if-eqz v2, :cond_3

    .line 212
    iget-object v2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$500(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)J

    move-result-wide v5

    invoke-static {v2, v0, v5, v6, v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$600(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;IJI)V

    .line 214
    :cond_3
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$700()Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackSamplesReadyCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 218
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$700()Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackSamplesReadyCallback;

    move-result-object v2

    new-instance v3, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioSamples;

    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    .line 219
    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$100(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)Landroid/media/AudioRecord;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioSamples;-><init>(Landroid/media/AudioRecord;[BLcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$1;)V

    .line 218
    invoke-interface {v2, v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackSamplesReadyCallback;->onWebRtcAudioLoopBackSamplesReady(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioSamples;)V

    goto/16 :goto_0

    .line 222
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioRecord.read failed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-static {v1, v3}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v2, :cond_0

    .line 225
    iput-boolean v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->keepAlive:Z

    .line 226
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v0, v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$900(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$100(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$100(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord.stop failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_6
    :goto_2
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->intentCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackIntentCallback;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackIntentCallback;->stopAudioLoopBack()V

    .line 258
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->access$1000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)V

    return-void
.end method

.method public stopThread()V
    .locals 2

    const-string v0, "WebRtcAudioLoopBack"

    const-string v1, "stopThread"

    .line 264
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->keepAlive:Z

    return-void
.end method
