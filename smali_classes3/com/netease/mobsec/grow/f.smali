.class public Lcom/netease/mobsec/grow/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/netease/mobsec/grow/GrowDevice;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/netease/mobsec/grow/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mobsec/grow/f;->a:Landroid/content/Context;

    const-wide/16 v1, 0x7d0

    .line 1
    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/netease/mobsec/grow/h;->a(Landroid/content/Context;J)Lcom/netease/mobsec/grow/j;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/netease/mobsec/grow/j;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sput-object v0, Lcom/netease/mobsec/grow/GrowDevice;->d:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/netease/mobsec/grow/GrowDevice;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
