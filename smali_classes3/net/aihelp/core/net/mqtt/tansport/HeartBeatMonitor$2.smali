.class Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$2;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "HeartBeatMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->scheduleCheckWrites(S)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

.field final synthetic val$session:S


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;S)V
    .locals 0

    .line 60
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iput-short p2, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$2;->val$session:S

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$2;->this$0:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor$2;->val$session:S

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->access$000(Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;S)V

    return-void
.end method
