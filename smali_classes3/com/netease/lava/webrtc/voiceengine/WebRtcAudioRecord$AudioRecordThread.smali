.class Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;
.super Ljava/lang/Thread;
.source "WebRtcAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordThread"
.end annotation


# instance fields
.field private _lastRecDelay:J

.field private _recDelay:J

.field private _recStartDelay:I

.field private _recStartTS:J

.field private volatile keepAlive:Z

.field final synthetic this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;


# direct methods
.method public constructor <init>(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    .line 153
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 154
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 158
    iput-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_lastRecDelay:J

    .line 159
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recStartTS:J

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recStartDelay:I

    const-wide/16 v0, 0xa

    .line 161
    iput-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recDelay:J

    return-void
.end method

.method public run()V
    .locals 10

    const/16 v0, -0x13

    .line 167
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecordThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$100(Z)V

    .line 171
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 172
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)V

    .line 173
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    if-eqz v0, :cond_c

    .line 174
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$300(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$300(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 175
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$300(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_a

    .line 176
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$400(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$300(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 178
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$300(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$500(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 206
    :cond_2
    iget-wide v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recDelay:J

    const-wide/16 v5, 0xa

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    .line 207
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_3

    .line 208
    new-instance v3, Landroid/media/AudioTimestamp;

    invoke-direct {v3}, Landroid/media/AudioTimestamp;-><init>()V

    .line 209
    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    .line 210
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-wide v3, v3, Landroid/media/AudioTimestamp;->nanoTime:J

    sub-long/2addr v7, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v7, v3

    div-long/2addr v7, v3

    iput-wide v7, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recDelay:J

    const-wide/16 v3, 0x32

    cmp-long v9, v7, v3

    if-lez v9, :cond_4

    .line 212
    iput-wide v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recDelay:J

    goto :goto_2

    .line 215
    :cond_3
    iput-wide v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recDelay:J

    .line 219
    :cond_4
    :goto_2
    iget-wide v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_lastRecDelay:J

    iget-wide v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recDelay:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_5

    const-wide/16 v3, 0x0

    cmp-long v7, v5, v3

    if-nez v7, :cond_8

    .line 220
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_6

    .line 221
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v3

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "frames: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", recDelay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recDelay:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", caculated frames delay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v5}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    div-int v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-wide v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recDelay:J

    iget-object v6, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v6}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    div-int/2addr v3, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recDelay:J

    goto :goto_3

    .line 225
    :cond_6
    iget v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recStartDelay:I

    if-nez v3, :cond_7

    .line 226
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recStartTS:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    div-int/lit16 v4, v4, 0x3e8

    div-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recStartDelay:I

    .line 228
    :cond_7
    iget-wide v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recDelay:J

    iget v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recStartDelay:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recDelay:J

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_recDelay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recDelay:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_3
    iget-wide v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recDelay:J

    iput-wide v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_lastRecDelay:J

    .line 237
    :cond_8
    iget-boolean v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    if-eqz v3, :cond_9

    .line 238
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$600(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->_recDelay:J

    long-to-int v7, v6

    invoke-static {v3, v0, v4, v5, v7}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$700(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;IJI)V

    .line 240
    :cond_9
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$800()Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$300(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$300(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 244
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$800()Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

    move-result-object v3

    new-instance v4, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioSamples;

    iget-object v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    .line 245
    invoke-static {v5}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioSamples;-><init>(Landroid/media/AudioRecord;[BLcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$1;)V

    .line 244
    invoke-interface {v3, v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;->onWebRtcAudioRecordSamplesReady(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioSamples;)V

    goto/16 :goto_1

    .line 248
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioRecord.read failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , state: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", record state"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 252
    :cond_b
    invoke-static {v1, v3}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x3

    if-ne v0, v4, :cond_1

    .line 254
    iput-boolean v2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    .line 255
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v0, v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$1000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 268
    :cond_c
    :try_start_1
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 269
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 272
    :try_start_2
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

    .line 274
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->access$1100(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method

.method public stopThread()V
    .locals 2

    const-string v0, "WebRtcAudioRecord"

    const-string v1, "stopThread"

    .line 284
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    return-void
.end method
