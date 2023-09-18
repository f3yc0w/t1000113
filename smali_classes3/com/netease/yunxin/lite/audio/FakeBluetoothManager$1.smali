.class Lcom/netease/yunxin/lite/audio/FakeBluetoothManager$1;
.super Landroid/media/AudioDeviceCallback;
.source "FakeBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->registerAudioDeviceCallback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager$1;->this$0:Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addedDevices"
        }
    .end annotation

    const-string v0, "FakeBluetoothManager"

    if-eqz p1, :cond_3

    .line 56
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 61
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bluetooth Devices Added "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioDeviceInfoToString(Landroid/media/AudioDeviceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager$1;->this$0:Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;

    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_AVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object v0, p1, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    .line 64
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager$1;->this$0:Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->access$000(Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "    Devices info is null!!"

    .line 57
    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "removedDevices"
        }
    .end annotation

    const-string v0, "FakeBluetoothManager"

    if-eqz p1, :cond_3

    .line 72
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 77
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bluetooth Devices Removed "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/netease/yunxin/lite/audio/AudioDeviceUtils;->audioDeviceInfoToString(Landroid/media/AudioDeviceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager$1;->this$0:Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;

    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_UNAVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object v0, p1, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    .line 80
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager$1;->this$0:Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;->access$000(Lcom/netease/yunxin/lite/audio/FakeBluetoothManager;)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "    Devices info is null!!"

    .line 73
    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
