.class final Lcom/netease/htprotect/poly/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/htprotect/poly/a;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/htprotect/poly/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/htprotect/poly/a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mobsec/sdk/oaid/OaidHelper;->getOaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/htprotect/poly/a;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/htprotect/poly/a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/htprotect/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/htprotect/poly/a;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
