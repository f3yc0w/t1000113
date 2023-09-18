.class Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LavaAudioDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiredHeadsetReceiver"
.end annotation


# static fields
.field private static final HAS_MIC:I = 0x1

.field private static final HAS_NO_MIC:I = 0x0

.field private static final STATE_PLUGGED:I = 0x1

.field private static final STATE_UNPLUGGED:I


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;


# direct methods
.method private constructor <init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 794
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;)V
    .locals 0

    .line 794
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;-><init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
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

    const-string p1, "state"

    const/4 v0, 0x0

    .line 803
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "microphone"

    .line 804
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "name"

    .line 805
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 806
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiredHeadsetReceiver.onReceive: a="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", s="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p2, "unplugged"

    goto :goto_0

    :cond_0
    const-string p2, "plugged"

    :goto_0
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", m="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    if-ne v1, p2, :cond_1

    const-string v4, "mic"

    goto :goto_1

    :cond_1
    const-string v4, "no mic"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", n="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sb="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;->isInitialStickyBroadcast()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioDeviceManager"

    .line 806
    invoke-static {v3, v2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    if-ne p1, p2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-static {v2, v3}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->access$602(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;Z)Z

    .line 812
    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    invoke-static {v2}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->access$600(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)Z

    .line 815
    iget-object v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    if-ne p1, p2, :cond_3

    if-ne v1, p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v2, v0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->access$702(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;Z)Z

    .line 816
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$WiredHeadsetReceiver;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->updateAudioDeviceState()V

    return-void
.end method
