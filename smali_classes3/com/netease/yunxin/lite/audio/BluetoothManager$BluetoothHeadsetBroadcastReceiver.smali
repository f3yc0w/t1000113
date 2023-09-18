.class Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/audio/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothHeadsetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;


# direct methods
.method private constructor <init>(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/yunxin/lite/audio/BluetoothManager;Lcom/netease/yunxin/lite/audio/BluetoothManager$1;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;-><init>(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 166
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    iget-object p1, p1, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-ne p1, v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "null"

    const-string v2, ", d="

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    const-string v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const-string v5, "android.bluetooth.profile.extra.STATE"

    const-string v6, ", bluetooth state="

    const-string v7, ", sb="

    const-string v8, ", ps="

    const/4 v9, 0x0

    const-string v10, "BluetoothManager"

    if-eqz v0, :cond_6

    .line 172
    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 173
    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 174
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BluetoothHeadsetReceiver.onReceive: a=ACTION_CONNECTION_STATE_CHANGED, s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    .line 178
    invoke-static {v4, p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$500(Lcom/netease/yunxin/lite/audio/BluetoothManager;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    .line 179
    invoke-static {v4, v0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$500(Lcom/netease/yunxin/lite/audio/BluetoothManager;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    iget-object v0, v0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ds="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    .line 183
    invoke-static {v0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$200(Lcom/netease/yunxin/lite/audio/BluetoothManager;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 p2, -0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-static {v1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$200(Lcom/netease/yunxin/lite/audio/BluetoothManager;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    :goto_1
    invoke-static {v0, p2}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$500(Lcom/netease/yunxin/lite/audio/BluetoothManager;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 176
    invoke-static {v10, p2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 186
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-static {p1, v9}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$602(Lcom/netease/yunxin/lite/audio/BluetoothManager;I)I

    .line 187
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$300(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V

    goto/16 :goto_4

    :cond_3
    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    goto/16 :goto_4

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    goto/16 :goto_4

    :cond_5
    if-nez p1, :cond_e

    .line 193
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->stopScoAudio()V

    .line 194
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$300(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V

    goto/16 :goto_4

    :cond_6
    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p1, 0xa

    .line 197
    invoke-virtual {p2, v5, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 198
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 199
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothHeadsetReceiver.onReceive: a=ACTION_AUDIO_STATE_CHANGED, s="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    .line 203
    invoke-static {v5, v0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$700(Lcom/netease/yunxin/lite/audio/BluetoothManager;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    .line 204
    invoke-static {v5, v4}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$700(Lcom/netease/yunxin/lite/audio/BluetoothManager;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    iget-object v4, v4, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_7

    goto :goto_2

    .line 207
    :cond_7
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", d_type ="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-static {p2}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$800(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sco="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    .line 209
    invoke-static {v1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$200(Lcom/netease/yunxin/lite/audio/BluetoothManager;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-nez v1, :cond_8

    const-string p2, "false"

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-static {v1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$200(Lcom/netease/yunxin/lite/audio/BluetoothManager;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :goto_3
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 201
    invoke-static {v10, p2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xc

    if-ne v0, p2, :cond_a

    .line 212
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$900(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V

    .line 213
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    iget-object p1, p1, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    sget-object p2, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_CONNECTING:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-ne p1, p2, :cond_9

    .line 214
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    sget-object p2, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->SCO_CONNECTED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object p2, p1, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    .line 215
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-static {p1, v9}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$602(Lcom/netease/yunxin/lite/audio/BluetoothManager;I)I

    .line 216
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$300(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V

    goto/16 :goto_4

    :cond_9
    const-string p1, "BluetoothHeadsetReceiver.Unexpected state BluetoothHeadset.STATE_AUDIO_CONNECTED"

    .line 218
    invoke-static {v10, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const/16 p2, 0xb

    if-ne v0, p2, :cond_b

    const-string p1, "BluetoothHeadsetReceiver.bluetooth audio sco is now connecting..."

    .line 221
    invoke-static {v10, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    if-ne v0, p1, :cond_e

    const-string p1, "BluetoothHeadsetReceiver.bluetooth audio sco is now disconnected"

    .line 223
    invoke-static {v10, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "BluetoothHeadsetReceiver.Ignore STATE_AUDIO_DISCONNECTED initial sticky broadcast."

    .line 225
    invoke-static {v10, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_c
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$300(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V

    goto :goto_4

    :cond_d
    const-string v0, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "android.media.extra.SCO_AUDIO_STATE"

    .line 231
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    .line 232
    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothHeadsetReceiver.onReceive: a=ACTION_SCO_AUDIO_STATE_UPDATED, s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    .line 236
    invoke-static {v1, p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$1000(Lcom/netease/yunxin/lite/audio/BluetoothManager;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    .line 237
    invoke-static {p1, p2}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$1000(Lcom/netease/yunxin/lite/audio/BluetoothManager;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothHeadsetBroadcastReceiver;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    iget-object p1, p1, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {v10, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_4
    return-void
.end method
