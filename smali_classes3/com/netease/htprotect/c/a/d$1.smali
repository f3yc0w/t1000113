.class final Lcom/netease/htprotect/c/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/htprotect/c/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/htprotect/c/a/c$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/htprotect/c/a/c$c;

.field final synthetic e:Lcom/netease/htprotect/c/a/d;


# direct methods
.method constructor <init>(Lcom/netease/htprotect/c/a/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/htprotect/c/a/c$c;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/htprotect/c/a/d$1;->e:Lcom/netease/htprotect/c/a/d;

    iput-object p2, p0, Lcom/netease/htprotect/c/a/d$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/htprotect/c/a/d$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/htprotect/c/a/d$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/htprotect/c/a/d$1;->d:Lcom/netease/htprotect/c/a/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/netease/htprotect/c/a/d$1;->e:Lcom/netease/htprotect/c/a/d;

    iget-object v1, p0, Lcom/netease/htprotect/c/a/d$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/htprotect/c/a/d$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/htprotect/c/a/d$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/htprotect/c/a/d;->a(Lcom/netease/htprotect/c/a/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netease/htprotect/c/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
