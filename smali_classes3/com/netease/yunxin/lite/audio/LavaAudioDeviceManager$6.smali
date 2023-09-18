.class Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$6;
.super Lcom/netease/yunxin/lite/util/CancelableTask;
.source "LavaAudioDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "customFlag"
        }
    .end annotation

    .line 441
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$6;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    invoke-direct {p0, p2}, Lcom/netease/yunxin/lite/util/CancelableTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$6;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    invoke-static {v0}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->access$400(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;)V

    return-void
.end method
