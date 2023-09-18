.class public Lcom/netease/mobsec/vt/f;
.super Ljava/lang/Object;


# static fields
.field public static volatile b:Lcom/netease/mobsec/vt/f;


# instance fields
.field public final a:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/netease/mobsec/vt/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/mobsec/vt/f;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method

.method public static a()Lcom/netease/mobsec/vt/f;
    .locals 2

    sget-object v0, Lcom/netease/mobsec/vt/f;->b:Lcom/netease/mobsec/vt/f;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/mobsec/vt/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobsec/vt/f;->b:Lcom/netease/mobsec/vt/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mobsec/vt/f;

    invoke-direct {v1}, Lcom/netease/mobsec/vt/f;-><init>()V

    sput-object v1, Lcom/netease/mobsec/vt/f;->b:Lcom/netease/mobsec/vt/f;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/mobsec/vt/f;->b:Lcom/netease/mobsec/vt/f;

    return-object v0
.end method
