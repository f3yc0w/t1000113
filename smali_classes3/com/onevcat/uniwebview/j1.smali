.class public final Lcom/onevcat/uniwebview/j1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "La/v;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onevcat/uniwebview/j1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onevcat/uniwebview/j1;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, La/v;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, La/v;->m:La/o;

    .line 3
    iget-object v0, p0, Lcom/onevcat/uniwebview/j1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/onevcat/uniwebview/j1;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "key"

    .line 4
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p1, La/i;->c:La/i$a;

    .line 5
    sget-object p1, La/i;->d:La/i;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Trying to set null or empty key for header field. Please check you have set correct key."

    const-string v1, "message"

    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, La/i;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 8
    iget-object p1, p1, La/o;->e:La/s;

    .line 9
    iget-object p1, p1, La/s;->g:Ljava/util/LinkedHashMap;

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p1, La/o;->e:La/s;

    .line 11
    iget-object p1, p1, La/s;->g:Ljava/util/LinkedHashMap;

    .line 12
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
