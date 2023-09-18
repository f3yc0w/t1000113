.class Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;
.super Ljava/lang/Thread;
.source "WebRtcAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioTrackThread"
.end annotation


# instance fields
.field private _firstRenderTS:J

.field private _maxDelay:I

.field private _playPosition:I

.field private _playWritenBytes:I

.field private _renderStart:Z

.field private _totalDelay:I

.field private frameCount:I

.field private volatile keepAlive:Z

.field final synthetic this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;


# direct methods
.method public constructor <init>(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    .line 133
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 134
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->reset()V

    return-void
.end method

.method private writeBytes(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p1, p2, p3, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1

    .line 258
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 138
    iput-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_firstRenderTS:J

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_playWritenBytes:I

    .line 140
    iput v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_maxDelay:I

    .line 141
    iput v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_totalDelay:I

    .line 142
    iput v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_playPosition:I

    .line 143
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_renderStart:Z

    .line 144
    iput v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->frameCount:I

    return-void
.end method

.method public run()V
    .locals 10

    const/16 v0, -0x13

    .line 149
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrackThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$100(Z)V

    .line 155
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 156
    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$300(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)V

    .line 157
    :goto_1
    iget-boolean v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    if-eqz v4, :cond_d

    .line 161
    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$400(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)J

    move-result-wide v5

    iget v7, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_totalDelay:I

    invoke-static {v4, v0, v5, v6, v7}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$500(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;IJI)V

    .line 165
    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gt v0, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$100(Z)V

    .line 166
    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$600(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 167
    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 168
    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v5}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$700(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 169
    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    :cond_2
    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v5}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->writeBytes(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v4

    if-eq v4, v0, :cond_4

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioTrack.write played invalid number of bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v4, :cond_4

    .line 177
    iput-boolean v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    .line 180
    iget-object v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v5}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " , state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , play state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    const-string v5, ""

    .line 182
    :goto_3
    iget-object v6, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AudioTrack.write failed: write : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", sizeInBytes : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$800(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;Ljava/lang/String;)V

    :cond_4
    if-lez v4, :cond_5

    .line 187
    iget v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_playWritenBytes:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_playWritenBytes:I

    .line 191
    :cond_5
    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v4

    if-nez v4, :cond_6

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioTrack release timeout , keepAlive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_6
    iget v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->frameCount:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_c

    .line 197
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_7

    .line 200
    :try_start_0
    const-class v4, Landroid/media/AudioTrack;

    const-string v5, "getLatency"

    const/4 v6, 0x0

    move-object v7, v6

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 201
    iget-object v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v5}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v5

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$902(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :catch_0
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$900()I

    move-result v4

    iput v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_totalDelay:I

    goto :goto_5

    .line 208
    :cond_7
    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v4

    iget-object v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v5}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v5

    mul-int v4, v4, v5

    .line 209
    iget v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_playWritenBytes:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v6}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    div-int/2addr v5, v6

    .line 210
    iget v6, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_maxDelay:I

    if-le v5, v6, :cond_8

    goto :goto_4

    :cond_8
    move v5, v6

    :goto_4
    iput v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_maxDelay:I

    .line 211
    iget-wide v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_firstRenderTS:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_9

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_firstRenderTS:J

    :cond_9
    if-lez v4, :cond_a

    .line 214
    iget-boolean v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_renderStart:Z

    if-nez v4, :cond_a

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_firstRenderTS:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_firstRenderTS:J

    .line 216
    iput-boolean v2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_renderStart:Z

    .line 218
    :cond_a
    iget-boolean v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_renderStart:Z

    if-eqz v4, :cond_b

    .line 219
    iget-wide v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_firstRenderTS:J

    long-to-int v5, v4

    iget v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_maxDelay:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->_totalDelay:I

    .line 222
    :cond_b
    :goto_5
    iput v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->frameCount:I

    .line 224
    :cond_c
    iget v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->frameCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->frameCount:I

    .line 232
    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_1

    .line 242
    :cond_d
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "Calling AudioTrack.stop..."

    .line 243
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :try_start_1
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const-string v0, "AudioTrack.stop is done."

    .line 246
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.stop failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_6
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->access$1000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)V

    :cond_e
    return-void
.end method

.method public stopThread()V
    .locals 2

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "stopThread"

    .line 265
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->keepAlive:Z

    return-void
.end method
