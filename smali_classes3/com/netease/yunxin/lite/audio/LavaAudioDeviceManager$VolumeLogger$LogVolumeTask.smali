.class Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;
.super Ljava/util/TimerTask;
.source "LavaAudioDeviceManager.java"

# interfaces
.implements Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility$AudioDeviceCompatibilityObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogVolumeTask"
.end annotation


# instance fields
.field private currentMode:I

.field private currentMusicVolume:I

.field private currentRingVolume:I

.field private currentVoiceCallVolume:I

.field private final maxMusicVolume:I

.field private final maxRingVolume:I

.field private final maxVoiceCallVolume:I

.field final synthetic this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "maxRingVolume",
            "maxVoiceCallVolume",
            "maxMusicVolume"
        }
    .end annotation

    .line 863
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 p1, -0x1

    .line 861
    iput p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->currentMode:I

    .line 864
    iput p2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->maxRingVolume:I

    .line 865
    iput p3, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->maxVoiceCallVolume:I

    .line 866
    iput p4, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->maxMusicVolume:I

    return-void
.end method


# virtual methods
.method public onChanged(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audioSource",
            "streamType",
            "audioMode"
        }
    .end annotation

    .line 906
    iget p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->currentMode:I

    if-eq p1, p3, :cond_0

    const/4 p1, -0x1

    .line 907
    iput p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->currentMode:I

    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    .line 870
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

    invoke-static {v0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->access$800(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 871
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

    invoke-static {v1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->access$800(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 872
    iget-object v3, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

    invoke-static {v3}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->access$800(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 873
    iget-object v5, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

    invoke-static {v5}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->access$800(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;)Landroid/media/AudioManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 875
    iget v7, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->currentMode:I

    const-string v8, "AudioDeviceManager"

    if-eq v0, v7, :cond_0

    .line 876
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audio mode: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioModeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iput v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->currentMode:I

    .line 878
    iget-object v7, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

    invoke-static {v7}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->access$900(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;)Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 879
    iget-object v7, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

    invoke-static {v7}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->access$900(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;)Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;->onAudioModeChange(I)V

    .line 883
    :cond_0
    iget v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->currentRingVolume:I

    const-string v7, ")"

    const-string v9, " (max="

    if-eq v1, v0, :cond_1

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STREAM_RING stream volume: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->maxRingVolume:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iput v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->currentRingVolume:I

    .line 886
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

    iget v10, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->maxRingVolume:I

    invoke-static {v0, v2, v1, v10}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->access$1000(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;III)V

    .line 889
    :cond_1
    iget v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->currentVoiceCallVolume:I

    if-eq v3, v0, :cond_2

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VOICE_CALL stream volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->maxVoiceCallVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iput v3, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->currentVoiceCallVolume:I

    .line 892
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

    iget v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->maxVoiceCallVolume:I

    invoke-static {v0, v4, v3, v1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->access$1000(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;III)V

    .line 896
    :cond_2
    iget v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->currentMusicVolume:I

    if-eq v5, v0, :cond_3

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STREAM_MUSIC stream volume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->maxMusicVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iput v5, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->currentMusicVolume:I

    .line 899
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;

    iget v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;->maxMusicVolume:I

    invoke-static {v0, v6, v5, v1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->access$1000(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;III)V

    :cond_3
    return-void
.end method
