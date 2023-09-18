.class public Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;
.super Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;
.source "FakeBluetoothManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FakeBluetoothManager"


# instance fields
.field private mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "manager"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;-><init>(Landroid/content/Context;Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mBlueToothSCO:Z

    const-string p1, "FakeBluetoothManager"

    const-string p2, "ctor"

    .line 20
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->updateAudioDeviceState()V

    return-void
.end method

.method private registerAudioDeviceCallback(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "register"
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/netease/yunxin/lite/util/Compatibility;->runningOnMarshmallowOrHigher()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-eqz v0, :cond_1

    .line 47
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 52
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-nez p1, :cond_2

    .line 53
    new-instance p1, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager$1;

    invoke-direct {p1, p0}, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager$1;-><init>(Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 86
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method

.method private updateAudioDeviceState()V
    .locals 1

    .line 91
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 92
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mAudioDeviceManager:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->updateAudioDeviceState()V

    return-void
.end method


# virtual methods
.method public setAudioBlueToothSCO(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blueToothSCO"
        }
    .end annotation

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mBlueToothSCO:Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 25
    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_UNAVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->registerAudioDeviceCallback(Z)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->registerAudioDeviceCallback(Z)V

    .line 32
    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    return-void
.end method
