.class public Lcom/netease/mobsec/sdk/oaid/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobsec/sdk/oaid/h$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x800

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v8, Lcom/netease/mobsec/sdk/oaid/h;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/netease/mobsec/sdk/oaid/h$a;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p0}, Lcom/netease/mobsec/sdk/oaid/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v1, Lcom/netease/mobsec/sdk/oaid/i;

    invoke-direct {v1}, Lcom/netease/mobsec/sdk/oaid/i;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/netease/mobsec/sdk/oaid/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v1}, Lcom/netease/mobsec/sdk/oaid/i;->a()Landroid/os/IBinder;

    move-result-object v2

    sget v3, Lcom/netease/mobsec/sdk/oaid/k$a;->a:I

    if-nez v2, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    const-string v3, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/netease/mobsec/sdk/oaid/k;

    if-eqz v4, :cond_1

    :try_start_2
    check-cast v3, Lcom/netease/mobsec/sdk/oaid/k;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/netease/mobsec/sdk/oaid/k$a$a;

    invoke-direct {v3, v2}, Lcom/netease/mobsec/sdk/oaid/k$a$a;-><init>(Landroid/os/IBinder;)V

    :goto_0
    new-instance v2, Lcom/netease/mobsec/sdk/oaid/h$a;

    invoke-interface {v3}, Lcom/netease/mobsec/sdk/oaid/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/netease/mobsec/sdk/oaid/k;->e()Z

    move-result v3

    invoke-direct {v2, v4, v3}, Lcom/netease/mobsec/sdk/oaid/h$a;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :try_start_5
    throw v2
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_2
    :try_start_6
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_2
    :goto_1
    return-object v0
.end method
