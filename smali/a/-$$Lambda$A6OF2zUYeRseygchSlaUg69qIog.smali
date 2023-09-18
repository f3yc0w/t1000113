.class public final synthetic La/-$$Lambda$A6OF2zUYeRseygchSlaUg69qIog;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:La/o;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;La/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/-$$Lambda$A6OF2zUYeRseygchSlaUg69qIog;->f$0:Ljava/lang/String;

    iput-object p2, p0, La/-$$Lambda$A6OF2zUYeRseygchSlaUg69qIog;->f$1:La/o;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, La/-$$Lambda$A6OF2zUYeRseygchSlaUg69qIog;->f$0:Ljava/lang/String;

    iget-object v1, p0, La/-$$Lambda$A6OF2zUYeRseygchSlaUg69qIog;->f$1:La/o;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, La/o;->a(Ljava/lang/String;La/o;Ljava/lang/String;)V

    return-void
.end method
