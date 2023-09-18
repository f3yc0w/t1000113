.class Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$2;
.super Ljava/lang/Object;
.source "HandlerThreadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;

.field final synthetic val$delayMillis:J

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;Ljava/lang/Runnable;J)V
    .locals 0

    .line 53
    iput-object p1, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$2;->this$0:Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;

    iput-object p2, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$2;->val$r:Ljava/lang/Runnable;

    iput-wide p3, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$2;->val$delayMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 55
    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$2;->this$0:Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;

    invoke-static {v0}, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->access$000(Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$2;->val$r:Ljava/lang/Runnable;

    iget-wide v2, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$2;->val$delayMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
