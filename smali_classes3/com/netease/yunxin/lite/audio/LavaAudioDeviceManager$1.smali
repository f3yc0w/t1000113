.class Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;
.super Lcom/netease/yunxin/lite/util/CancelableTask;
.source "LavaAudioDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->start(IZLcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

.field final synthetic val$audioManagerEvents:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;

.field final synthetic val$defaultAudioDevice:I

.field final synthetic val$enableCallProximity:Z

.field final synthetic val$focusMode:I


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;Ljava/lang/String;IZLcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "customFlag",
            "val$focusMode",
            "val$audioManagerEvents",
            "val$enableCallProximity",
            "val$defaultAudioDevice"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    iput p3, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;->val$defaultAudioDevice:I

    iput-boolean p4, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;->val$enableCallProximity:Z

    iput-object p5, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;->val$audioManagerEvents:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;

    iput p6, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;->val$focusMode:I

    invoke-direct {p0, p2}, Lcom/netease/yunxin/lite/util/CancelableTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 6

    .line 150
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;->this$0:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;

    iget v1, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;->val$defaultAudioDevice:I

    iget-boolean v2, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;->val$enableCallProximity:Z

    iget-object v3, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;->val$audioManagerEvents:Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;

    iget v4, p0, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$1;->val$focusMode:I

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;->access$100(Lcom/netease/yunxin/lite/audio/LavaAudioDeviceManager;IZLcom/netease/yunxin/lite/audio/LavaAudioDeviceManager$AudioManagerEvents;ILcom/netease/yunxin/lite/util/CancelableTask;)V

    return-void
.end method
