.class public final La/h0;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:La/g0;


# direct methods
.method public constructor <init>(La/g0;)V
    .locals 0

    iput-object p1, p0, La/h0;->a:La/g0;

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 3

    sget-object p2, La/i;->c:La/i$a;

    .line 1
    sget-object p2, La/i;->d:La/i;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNavigationEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, La/i;->c(Ljava/lang/String;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object p1, p0, La/h0;->a:La/g0;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, La/l;->b:La/l$a;

    .line 5
    sget-object v0, La/l;->c:La/l;

    .line 6
    iget-object p1, p1, La/g0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    .line 7
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing safe browsing from manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, La/i;->b(Ljava/lang/String;)V

    iget-object p2, v0, La/l;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, La/h0;->a:La/g0;

    .line 10
    iget-object p2, p1, La/g0;->d:La/i0;

    .line 11
    iget-object p1, p1, La/g0;->b:Ljava/lang/String;

    .line 12
    sget-object v0, La/j0;->n:La/j0;

    const-string v1, ""

    invoke-interface {p2, p1, v0, v1}, La/i0;->a(Ljava/lang/String;La/j0;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
