.class public final La/g0$b;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/g0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/g0;


# direct methods
.method public constructor <init>(La/g0;)V
    .locals 0

    iput-object p1, p0, La/g0$b;->a:La/g0;

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "client"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, La/g0$b;->a:La/g0;

    .line 1
    iput-object p2, p1, La/g0;->e:Landroidx/browser/customtabs/CustomTabsClient;

    .line 2
    iget-boolean p2, p1, La/g0;->h:Z

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, La/g0;->b()V

    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, La/g0$b;->a:La/g0;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, La/g0;->e:Landroidx/browser/customtabs/CustomTabsClient;

    return-void
.end method
