.class public Lcom/netease/mobsec/grow/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/netease/mobsec/grow/GrowDevice;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/netease/mobsec/grow/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/netease/mobsec/grow/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mobsec/grow/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1
    sput-object v0, Lcom/netease/mobsec/grow/GrowDevice;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    sget-object v0, Lcom/netease/mobsec/grow/GrowDevice;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/netease/mobsec/grow/GrowDevice;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    throw v0

    .line 5
    :catch_0
    sget-object v0, Lcom/netease/mobsec/grow/GrowDevice;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method
