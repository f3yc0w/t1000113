.class public Lcom/netease/mobsec/vt/a;
.super Landroid/view/View$AccessibilityDelegate;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Lcom/netease/mobsec/vt/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v2, v0

    sget-object v0, Lcom/netease/mobsec/vt/e;->c:Lcom/netease/mobsec/vt/e;

    if-nez v0, :cond_2

    const-class v0, Lcom/netease/mobsec/vt/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobsec/vt/e;->c:Lcom/netease/mobsec/vt/e;

    if-nez v1, :cond_1

    new-instance v1, Lcom/netease/mobsec/vt/e;

    invoke-direct {v1}, Lcom/netease/mobsec/vt/e;-><init>()V

    sput-object v1, Lcom/netease/mobsec/vt/e;->c:Lcom/netease/mobsec/vt/e;

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    sget-object v0, Lcom/netease/mobsec/vt/e;->c:Lcom/netease/mobsec/vt/e;

    new-instance v7, Lcom/netease/mobsec/vt/d;

    iget-object v4, p0, Lcom/netease/mobsec/vt/a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, v7

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/netease/mobsec/vt/d;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, v0, Lcom/netease/mobsec/vt/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
