.class Lcom/tendcloud/tenddata/game/cm;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cl;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cl;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cm;->this$0:Lcom/tendcloud/tenddata/game/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 62
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bb;->D(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v1, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    const-string v2, "env"

    .line 65
    iput-object v2, v1, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    const-string v2, "arp"

    .line 66
    iput-object v2, v1, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    .line 67
    iput-object v0, v1, Lcom/tendcloud/tenddata/game/dl;->d:Ljava/util/Map;

    .line 68
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->ENV:Lcom/tendcloud/tenddata/game/a;

    iput-object v0, v1, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 69
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
