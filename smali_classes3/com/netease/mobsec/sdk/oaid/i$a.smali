.class public Lcom/netease/mobsec/sdk/oaid/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobsec/sdk/oaid/i;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/IBinder;

.field public final synthetic b:Lcom/netease/mobsec/sdk/oaid/i;


# direct methods
.method public constructor <init>(Lcom/netease/mobsec/sdk/oaid/i;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/sdk/oaid/i$a;->b:Lcom/netease/mobsec/sdk/oaid/i;

    iput-object p2, p0, Lcom/netease/mobsec/sdk/oaid/i$a;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/netease/mobsec/sdk/oaid/i$a;->b:Lcom/netease/mobsec/sdk/oaid/i;

    iget-object v0, v0, Lcom/netease/mobsec/sdk/oaid/i;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/netease/mobsec/sdk/oaid/i$a;->a:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
