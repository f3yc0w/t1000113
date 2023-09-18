.class Lcom/netease/yunxin/lite/audio/BluetoothManager$1;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/audio/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$1;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/BluetoothManager$1;->this$0:Lcom/netease/yunxin/lite/audio/BluetoothManager;

    invoke-static {v0}, Lcom/netease/yunxin/lite/audio/BluetoothManager;->access$1100(Lcom/netease/yunxin/lite/audio/BluetoothManager;)V

    return-void
.end method
