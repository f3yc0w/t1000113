.class Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger$LogVolumeTask;
.super Ljava/util/TimerTask;
.source "WebRtcAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogVolumeTask"
.end annotation


# instance fields
.field private final maxRingVolume:I

.field private final maxVoiceCallVolume:I

.field final synthetic this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;


# direct methods
.method constructor <init>(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;II)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger$LogVolumeTask;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 127
    iput p2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger$LogVolumeTask;->maxRingVolume:I

    .line 128
    iput p3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger$LogVolumeTask;->maxVoiceCallVolume:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger$LogVolumeTask;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, ")"

    const-string v3, " (max="

    const-string v4, "WebRtcAudioManager"

    if-ne v0, v1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STREAM_RING stream volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger$LogVolumeTask;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;

    .line 142
    invoke-static {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger$LogVolumeTask;->maxRingVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v4, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VOICE_CALL stream volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger$LogVolumeTask;->this$0:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;

    .line 146
    invoke-static {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;->access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger$LogVolumeTask;->maxVoiceCallVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v4, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
