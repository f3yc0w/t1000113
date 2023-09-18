.class public abstract Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;
.super Ljava/lang/Object;
.source "AbsBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsBluetoothManager"


# instance fields
.field protected final mAudioDeviceManager:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

.field protected final mAudioManager:Landroid/media/AudioManager;

.field protected volatile mBlueToothSCO:Z

.field protected mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;


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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->checkIsOnUiThread()V

    .line 51
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->mAudioDeviceManager:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    const-string p2, "audio"

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->mHandler:Landroid/os/Handler;

    .line 55
    sget-object p1, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;I)Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;
    .locals 3
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

    const-string v0, "AbsBluetoothManager"

    const-string v1, "create bluetooth manager"

    .line 25
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 30
    invoke-static {p0}, Lcom/netease/yunxin/lite/util/SystemPermissionUtils;->checkBluetoothScoConnectPermission(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p2, "missing  permission , create FakeBluetoothManager"

    .line 32
    invoke-static {v0, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has bluetooth permission: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/netease/yunxin/lite/util/SystemPermissionUtils;->checkBluetoothPermission(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has bluetoothConnect permission\uff1a"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/netease/yunxin/lite/util/SystemPermissionUtils;->checkBluetoothConnectPermission(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "targetVersion\uff1a"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sdk int: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance p2, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;

    invoke-direct {p2, p0, p1}, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;-><init>(Landroid/content/Context;Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)V

    return-object p2

    .line 39
    :cond_0
    new-instance v0, Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/yunxin/lite/audio/BluetoothManager;-><init>(Landroid/content/Context;Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;I)V

    return-object v0
.end method


# virtual methods
.method public blueToothIsSCO()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->mBlueToothSCO:Z

    return v0
.end method

.method public getState()Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    return-object v0
.end method

.method public abstract setAudioBlueToothSCO(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blueToothSCO"
        }
    .end annotation
.end method

.method public abstract start()V
.end method

.method public startScoAudio()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract stop()V
.end method

.method public stopScoAudio()V
    .locals 0

    return-void
.end method

.method public updateDevice()V
    .locals 0

    return-void
.end method
