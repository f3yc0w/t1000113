.class Lcom/netease/lava/nertc/foreground/ForegroundKit$ForegroundServiceConnection;
.super Ljava/lang/Object;
.source "ForegroundKit.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/foreground/ForegroundKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForegroundServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lava/nertc/foreground/ForegroundKit;


# direct methods
.method private constructor <init>(Lcom/netease/lava/nertc/foreground/ForegroundKit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit$ForegroundServiceConnection;->this$0:Lcom/netease/lava/nertc/foreground/ForegroundKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/lava/nertc/foreground/ForegroundKit;Lcom/netease/lava/nertc/foreground/ForegroundKit$1;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/foreground/ForegroundKit$ForegroundServiceConnection;-><init>(Lcom/netease/lava/nertc/foreground/ForegroundKit;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .line 308
    :try_start_0
    instance-of p1, p2, Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;

    if-eqz p1, :cond_0

    .line 309
    instance-of p1, p2, Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit$ForegroundServiceConnection;->this$0:Lcom/netease/lava/nertc/foreground/ForegroundKit;

    check-cast p2, Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;

    invoke-static {p1, p2}, Lcom/netease/lava/nertc/foreground/ForegroundKit;->access$102(Lcom/netease/lava/nertc/foreground/ForegroundKit;Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;)Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 314
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 320
    iget-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundKit$ForegroundServiceConnection;->this$0:Lcom/netease/lava/nertc/foreground/ForegroundKit;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/lava/nertc/foreground/ForegroundKit;->access$102(Lcom/netease/lava/nertc/foreground/ForegroundKit;Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;)Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;

    return-void
.end method
