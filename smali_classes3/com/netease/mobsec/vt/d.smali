.class public Lcom/netease/mobsec/vt/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mobsec/vt/d;->a:Ljava/lang/String;

    iput p2, p0, Lcom/netease/mobsec/vt/d;->b:I

    iput-object p3, p0, Lcom/netease/mobsec/vt/d;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/netease/mobsec/vt/d;->d:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/netease/mobsec/vt/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    iget-object v0, p0, Lcom/netease/mobsec/vt/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    iget v5, p0, Lcom/netease/mobsec/vt/d;->b:I

    iget-wide v7, p0, Lcom/netease/mobsec/vt/d;->d:J

    new-instance v0, Lcom/netease/mobsec/vt/c;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/netease/mobsec/vt/c;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    invoke-static {}, Lcom/netease/mobsec/vt/f;->a()Lcom/netease/mobsec/vt/f;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v1, Lcom/netease/mobsec/vt/f;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
