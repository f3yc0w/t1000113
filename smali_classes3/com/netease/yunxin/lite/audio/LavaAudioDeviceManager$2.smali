.class Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$2;
.super Ljava/lang/Object;
.source "LavaAudioDeviceManager.java"

# interfaces
.implements Lcom/netease/yunxin/lite/audio/CallProximityManager$ProximityDirector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->startInner(IZLcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;ILcom/netease/yunxin/lite/util/CancelableTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$2;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProximityTrackingChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "acquired"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$2;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    invoke-static {v0, p1}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->access$300(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;Z)V

    return-void
.end method

.method public shouldActivateProximity()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$2;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    invoke-static {v0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->access$200(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)Z

    move-result v0

    return v0
.end method
