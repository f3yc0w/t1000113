.class public Lcom/netease/yunxin/lite/audio/BluetoothManager;
.super Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;,
        Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_SCO_TIMEOUT_MS:I = 0x2ee0

.field private static final MAX_SCO_CONNECTION_ATTEMPTS:I = 0x3

.field private static final MIN_BLUETOOTH_SCO_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "BluetoothManager"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private final mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothSCOTimeoutMs:I

.field private final mBluetoothServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mBluetoothTimeoutRunnable:Ljava/lang/Runnable;

.field private mScoConnectionAttempts:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "manager",
            "bluetoothSCOTimeoutMs"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;-><init>(Landroid/content/Context;Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)V

    const/16 p1, 0x2ee0

    .line 38
    iput p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothSCOTimeoutMs:I

    .line 384
    new-instance p1, Lcom/netease/yunxin/lite/audio/BluetoothManager$1;

    invoke-direct {p1, p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager$1;-><init>(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothTimeoutRunnable:Ljava/lang/Runnable;

    const-string p1, "BluetoothManager"

    const-string p2, "ctor"

    .line 51
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 53
    new-instance p1, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;-><init>(Lcom/netease/yunxin/lite/audio/BluetoothManager;Lcom/netease/yunxin/lite/audio/BluetoothManager$1;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 54
    new-instance p1, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;

    invoke-direct {p1, p0, p2}, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;-><init>(Lcom/netease/yunxin/lite/audio/BluetoothManager;Lcom/netease/yunxin/lite/audio/BluetoothManager$1;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    const/16 p1, 0x7d0

    .line 55
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothSCOTimeoutMs:I

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBlueToothSCO:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/netease/yunxin/lite/audio/BluetoothManager;I)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->scoStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->bluetoothTimeout()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/yunxin/lite/audio/BluetoothManager;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/yunxin/lite/audio/BluetoothManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->updateAudioDeviceState()V

    return-void
.end method

.method static synthetic access$402(Lcom/netease/yunxin/lite/audio/BluetoothManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netease/yunxin/lite/audio/BluetoothManager;I)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$602(Lcom/netease/yunxin/lite/audio/BluetoothManager;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mScoConnectionAttempts:I

    return p1
.end method

.method static synthetic access$700(Lcom/netease/yunxin/lite/audio/BluetoothManager;I)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->audioStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->getBluetoothDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->cancelTimer()V

    return-void
.end method

.method private adapterStateToString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "TURNING_OFF"

    return-object p1

    :pswitch_1
    const-string p1, "ON"

    return-object p1

    :pswitch_2
    const-string p1, "TURNING_ON"

    return-object p1

    :pswitch_3
    const-string p1, "OFF"

    return-object p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private audioStateToString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "CONNECTED"

    return-object p1

    :pswitch_1
    const-string p1, "CONNECTING"

    return-object p1

    :pswitch_2
    const-string p1, "DISCONNECTED"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private bluetoothTimeout()V
    .locals 5

    .line 392
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 393
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    sget-object v1, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetoothTimeout: bluetooth state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attempts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mScoConnectionAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sco is on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mAudioManager:Landroid/media/AudioManager;

    .line 398
    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManager"

    .line 396
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    sget-object v2, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_CONNECTING:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v0, v2, :cond_1

    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 404
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_5

    .line 405
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 407
    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sco connected with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->getBluetoothDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 411
    :cond_2
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBlueToothSCO:Z

    if-nez v0, :cond_4

    .line 412
    invoke-static {}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->getAudioSource()I

    move-result v0

    if-eq v0, v3, :cond_3

    invoke-static {}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->getAudioSource()I

    move-result v0

    if-nez v0, :cond_4

    .line 413
    :cond_3
    invoke-static {}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->getStreamType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 414
    invoke-static {}, Lcom/netease/yunxin/lite/audio/AudioDeviceCompatibility;->getAudioMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sco is not connected ,fake connection "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 419
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sco is not connected with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_6

    .line 425
    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_CONNECTED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    .line 426
    iput v4, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mScoConnectionAttempts:I

    goto :goto_2

    :cond_6
    const-string v0, "bluetooth failed to connect after timeout"

    .line 428
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->stopScoAudio()V

    .line 431
    :goto_2
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->updateAudioDeviceState()V

    :cond_7
    :goto_3
    return-void
.end method

.method private cancelTimer()V
    .locals 2

    .line 379
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    const-string v0, "BluetoothManager"

    const-string v1, "cancelTimer"

    .line 380
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private connectionStateToString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "DISCONNECTING"

    return-object p1

    :cond_1
    const-string p1, "CONNECTED"

    return-object p1

    :cond_2
    const-string p1, "CONNECTING"

    return-object p1

    :cond_3
    const-string p1, "DISCONNECTED"

    return-object p1
.end method

.method private static getBluetoothDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    if-eqz p0, :cond_b

    .line 472
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 476
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0x100

    if-eq v0, v1, :cond_9

    const/16 v1, 0x200

    if-eq v0, v1, :cond_8

    const/16 v1, 0x300

    if-eq v0, v1, :cond_7

    const/16 v1, 0x400

    if-eq v0, v1, :cond_6

    const/16 v1, 0x500

    if-eq v0, v1, :cond_5

    const/16 v1, 0x600

    if-eq v0, v1, :cond_4

    const/16 v1, 0x700

    if-eq v0, v1, :cond_3

    const/16 v1, 0x800

    if-eq v0, v1, :cond_2

    const/16 v1, 0x900

    if-eq v0, v1, :cond_1

    const-string v0, "UNCATEGORIZED"

    goto :goto_0

    :cond_1
    const-string v0, "HEALTH"

    goto :goto_0

    :cond_2
    const-string v0, "TOY"

    goto :goto_0

    :cond_3
    const-string v0, "WEARABLE"

    goto :goto_0

    :cond_4
    const-string v0, "IMAGING"

    goto :goto_0

    :cond_5
    const-string v0, "PERIPHERAL"

    goto :goto_0

    :cond_6
    const-string v0, "AUDIO_VIDEO"

    goto :goto_0

    :cond_7
    const-string v0, "NETWORKING"

    goto :goto_0

    :cond_8
    const-string v0, "PHONE"

    goto :goto_0

    :cond_9
    const-string v0, "COMPUTER"

    goto :goto_0

    :cond_a
    const-string v0, "MISC"

    .line 512
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[major_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , minor_type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_1
    const-string p0, "null"

    return-object p0
.end method

.method private logBluetoothAdapterInfo(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localAdapter"
        }
    .end annotation

    const-string v0, "BluetoothManager"

    .line 290
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothAdapter: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->adapterStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p1

    .line 295
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "paired devices:"

    .line 296
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->getBluetoothDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logBluetoothAdapterInfo error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private scoStateToString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "CONNECTING"

    return-object p1

    :cond_1
    const-string p1, "CONNECTED"

    return-object p1

    :cond_2
    const-string p1, "DISCONNECTED"

    return-object p1
.end method

.method private startTimer()V
    .locals 4

    .line 373
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimer , time out: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothSCOTimeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManager"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothTimeoutRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothSCOTimeoutMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateAudioDeviceState()V
    .locals 1

    .line 436
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 437
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mAudioDeviceManager:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->updateAudioDeviceState()V

    return-void
.end method


# virtual methods
.method public blueToothIsSCO()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBlueToothSCO:Z

    return v0
.end method

.method public getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;
    .locals 1

    .line 129
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 130
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    return-object v0
.end method

.method public setAudioBlueToothSCO(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blueToothSCO"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioBlueToothSCO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManager"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBlueToothSCO:Z

    return-void
.end method

.method public start()V
    .locals 5

    .line 60
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 62
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/SystemPermissionUtils;->checkBluetoothScoConnectPermission(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "BluetoothManager"

    if-nez v0, :cond_0

    const-string v0, "no  bluetooth  permission for start"

    .line 63
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bluetooth is not available off call"

    .line 68
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    sget-object v2, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v0, v2, :cond_2

    const-string v0, "Invalid bluetooth state"

    .line 72
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 77
    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mScoConnectionAttempts:I

    .line 79
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_3

    const-string v0, "bluetooth is not supported  on this hardware platform"

    .line 81
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_3
    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->logBluetoothAdapterInfo(Landroid/bluetooth/BluetoothAdapter;)V

    .line 87
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "BluetoothAdapter.getProfileProxy(HEADSET) failed"

    .line 88
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 93
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 94
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 95
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v2, v3, v0}, Lcom/netease/yunxin/lite/util/CommonUtils;->safeRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HEADSET profile state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_UNAVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    return-void
.end method

.method public startScoAudio()Z
    .locals 4

    .line 246
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSco: bluetooth state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attempts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mScoConnectionAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sco is on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mAudioManager:Landroid/media/AudioManager;

    .line 249
    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManager"

    .line 247
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mScoConnectionAttempts:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    const-string v0, "bluetooth sco connection fails - no more attempts"

    .line 251
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    sget-object v3, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_AVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v0, v3, :cond_1

    const-string v0, "bluetooth sco connection fails - no headset available"

    .line 255
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 258
    :cond_1
    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_CONNECTING:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    .line 260
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBlueToothSCO:Z

    const/4 v3, 0x1

    if-nez v0, :cond_2

    const-string v0, "SCO will not enabled"

    .line 261
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 263
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 266
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 267
    iget v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mScoConnectionAttempts:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mScoConnectionAttempts:I

    .line 268
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->startTimer()V

    .line 270
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScoAudio done: bluetooth state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , sco is on: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBlueToothSCO:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public stop()V
    .locals 5

    .line 105
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 111
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop: bluetooth state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManager"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->stopScoAudio()V

    .line 114
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    sget-object v2, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v0, v2, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->cancelTimer()V

    .line 116
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 117
    iget-object v3, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 118
    iput-object v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 120
    :cond_0
    iput-object v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 121
    iput-object v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 122
    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop done: bluetooth state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopScoAudio()V
    .locals 2

    .line 277
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopScoAudio: bluetooth state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sco is on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManager"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    sget-object v1, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_CONNECTING:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    sget-object v1, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_CONNECTED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v0, v1, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->cancelTimer()V

    .line 283
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 284
    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_DISCONNECTING:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    return-void
.end method

.method public updateDevice()V
    .locals 7

    .line 442
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    sget-object v1, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 445
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 446
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "BluetoothManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 447
    iput-object v3, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 448
    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_UNAVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    const-string v0, "No connected bluetooth headset"

    .line 449
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 452
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v4

    .line 453
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDevice connected bluetooth headset: , name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", , state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 455
    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-static {v1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->getBluetoothDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", sco audio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 457
    invoke-virtual {v6, v1}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 453
    invoke-static {v2, v5}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x400

    if-eq v4, v5, :cond_3

    if-eqz v4, :cond_3

    const/16 v5, 0x1f00

    if-ne v4, v5, :cond_2

    .line 461
    :cond_3
    iput-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 462
    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_AVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    return-void

    .line 466
    :cond_4
    iput-object v3, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 467
    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_UNAVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    :cond_5
    :goto_0
    return-void
.end method
