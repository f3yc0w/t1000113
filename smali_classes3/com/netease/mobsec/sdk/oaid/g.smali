.class public final Lcom/netease/mobsec/sdk/oaid/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/sdk/oaid/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mobsec/sdk/oaid/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mobsec/sdk/oaid/h;->a(Landroid/content/Context;)Lcom/netease/mobsec/sdk/oaid/h$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
