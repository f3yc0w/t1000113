.class Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;
.super Ljava/lang/Object;
.source "LavaAudioDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeLogger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;
    }
.end annotation


# static fields
.field private static final THREAD_NAME:Ljava/lang/String; = "VolumeLogger"


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private audioManagerEvents:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;

.field private logVolumeTask:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;

.field private timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioManager"
        }
    .end annotation

    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->audioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$1000(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;III)V
    .locals 0

    .line 826
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->tryNotifyVolumeChange(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;)V
    .locals 0

    .line 826
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->stop()V

    return-void
.end method

.method static synthetic access$800(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;)Landroid/media/AudioManager;
    .locals 0

    .line 826
    iget-object p0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;)Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;
    .locals 0

    .line 826
    iget-object p0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->audioManagerEvents:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;

    return-object p0
.end method

.method private stop()V
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->logVolumeTask:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;

    invoke-static {v0}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->removeObserver(Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility$AudioDeviceCompatibilityObserver;)V

    .line 925
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->timer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 927
    iput-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->timer:Ljava/util/Timer;

    .line 929
    :cond_0
    iput-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->audioManagerEvents:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;

    return-void
.end method

.method private tryNotifyVolumeChange(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamType",
            "volume",
            "maxVolume"
        }
    .end annotation

    .line 913
    invoke-static {}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->getStreamType()I

    move-result v0

    if-eq v0, p1, :cond_0

    return-void

    .line 916
    :cond_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->audioManagerEvents:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;

    if-nez p1, :cond_1

    return-void

    .line 920
    :cond_1
    invoke-interface {p1, p2, p3}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;->onVolumeChange(II)V

    return-void
.end method


# virtual methods
.method public start(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioManagerEvents"
        }
    .end annotation

    .line 839
    new-instance v0, Ljava/util/Timer;

    const-string v1, "VolumeLogger"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->timer:Ljava/util/Timer;

    .line 840
    new-instance v3, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    .line 841
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    .line 842
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->audioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    .line 843
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;-><init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;III)V

    iput-object v3, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->logVolumeTask:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;

    .line 844
    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->timer:Ljava/util/Timer;

    const-wide/16 v4, 0x1388

    const-wide/16 v6, 0x1388

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 847
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->audioManagerEvents:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;

    .line 849
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger;->logVolumeTask:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$VolumeLogger$LogVolumeTask;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->addObserver(Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility$AudioDeviceCompatibilityObserver;)V

    return-void
.end method
