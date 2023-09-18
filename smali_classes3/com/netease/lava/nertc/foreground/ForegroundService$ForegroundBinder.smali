.class public Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;
.super Landroid/os/Binder;
.source "ForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/foreground/ForegroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForegroundBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lava/nertc/foreground/ForegroundService;


# direct methods
.method public constructor <init>(Lcom/netease/lava/nertc/foreground/ForegroundService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;->this$0:Lcom/netease/lava/nertc/foreground/ForegroundService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/netease/lava/nertc/foreground/ForegroundService;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;->this$0:Lcom/netease/lava/nertc/foreground/ForegroundService;

    return-object v0
.end method

.method public serviceStop()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;->this$0:Lcom/netease/lava/nertc/foreground/ForegroundService;

    invoke-static {v0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->access$100(Lcom/netease/lava/nertc/foreground/ForegroundService;)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/netease/lava/nertc/foreground/ForegroundService$ForegroundBinder;->this$0:Lcom/netease/lava/nertc/foreground/ForegroundService;

    invoke-static {v0}, Lcom/netease/lava/nertc/foreground/ForegroundService;->access$000(Lcom/netease/lava/nertc/foreground/ForegroundService;)V

    return-void
.end method
