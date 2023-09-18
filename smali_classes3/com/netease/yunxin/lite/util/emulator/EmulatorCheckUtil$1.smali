.class Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$1;
.super Ljava/lang/Thread;
.source "EmulatorCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->checkIsRunningInEmulator(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$1;->this$0:Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;

    iput-object p2, p0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$1;->this$0:Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;

    iget-object v1, p0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->access$200(Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$1;->this$0:Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->checkSysProperty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 102
    :goto_1
    iget-object v1, p0, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil$1;->this$0:Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;

    invoke-static {v1, v0}, Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;->access$300(Lcom/netease/yunxin/lite/util/emulator/EmulatorCheckUtil;Z)V

    return-void
.end method
