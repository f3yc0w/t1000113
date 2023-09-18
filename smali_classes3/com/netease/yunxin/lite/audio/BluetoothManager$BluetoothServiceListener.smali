.class Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/audio/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothServiceListener"
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

    .line 133
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/yunxin/lite/audio/BluetoothManager;Lcom/netease/yunxin/lite/audio/BluetoothManager$1;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;-><init>(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "profile",
            "proxy"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 137
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    iget-object p1, p1, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BluetoothServiceListener.onServiceConnected: bluetooth state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    iget-object v0, v0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothManager"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, p2}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$202(Lcom/netease/yunxin/lite/audio/BluetoothManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 142
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    sget-object p2, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_AVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object p2, p1, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    .line 143
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$300(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BluetoothServiceListener.onServiceConnected done: bluetooth state="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    iget-object p2, p2, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profile"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 149
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    iget-object p1, p1, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    sget-object v0, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->UNINITIALIZED:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BluetoothServiceListener.onServiceDisconnected: bluetooth state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    iget-object v0, v0, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothManager"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->stopScoAudio()V

    .line 154
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$202(Lcom/netease/yunxin/lite/audio/BluetoothManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 155
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-static {p1, v1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$402(Lcom/netease/yunxin/lite/audio/BluetoothManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 156
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    sget-object v1, Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;->HEADSET_UNAVAILABLE:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    iput-object v1, p1, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    .line 157
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-static {p1}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$300(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothServiceListener.onServiceDisconnected done: bluetooth state="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$BluetoothServiceListener;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    iget-object v1, v1, Lcom/netease/yunxin/lite/audio/BluetoothManager;->mBluetoothState:Lcom/netease/yunxin/lite/audio/AbsBluetoothManager$State;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
