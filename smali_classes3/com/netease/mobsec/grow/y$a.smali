.class public Lcom/netease/mobsec/grow/y$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobsec/grow/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobsec/grow/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/netease/mobsec/grow/x;

.field public final synthetic e:Lcom/netease/mobsec/grow/y;


# direct methods
.method public constructor <init>(Lcom/netease/mobsec/grow/y;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobsec/grow/x;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/grow/y$a;->e:Lcom/netease/mobsec/grow/y;

    iput-object p2, p0, Lcom/netease/mobsec/grow/y$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/mobsec/grow/y$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mobsec/grow/y$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mobsec/grow/y$a;->d:Lcom/netease/mobsec/grow/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/netease/mobsec/grow/y$a;->e:Lcom/netease/mobsec/grow/y;

    iget-object v1, p0, Lcom/netease/mobsec/grow/y$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/mobsec/grow/y$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mobsec/grow/y$a;->c:Ljava/lang/String;

    .line 1
    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mobsec/grow/y;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mobsec/grow/y$a;->d:Lcom/netease/mobsec/grow/x;

    invoke-interface {v0}, Lcom/netease/mobsec/grow/x;->a()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netease/mobsec/grow/u; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, Lcom/netease/mobsec/grow/y$a;->d:Lcom/netease/mobsec/grow/x;

    invoke-interface {v1, v0}, Lcom/netease/mobsec/grow/x;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
