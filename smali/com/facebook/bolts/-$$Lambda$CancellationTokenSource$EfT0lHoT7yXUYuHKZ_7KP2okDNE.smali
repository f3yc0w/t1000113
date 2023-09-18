.class public final synthetic Lcom/facebook/bolts/-$$Lambda$CancellationTokenSource$EfT0lHoT7yXUYuHKZ_7KP2okDNE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/bolts/CancellationTokenSource;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/bolts/CancellationTokenSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/bolts/-$$Lambda$CancellationTokenSource$EfT0lHoT7yXUYuHKZ_7KP2okDNE;->f$0:Lcom/facebook/bolts/CancellationTokenSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/bolts/-$$Lambda$CancellationTokenSource$EfT0lHoT7yXUYuHKZ_7KP2okDNE;->f$0:Lcom/facebook/bolts/CancellationTokenSource;

    invoke-static {v0}, Lcom/facebook/bolts/CancellationTokenSource;->lambda$EfT0lHoT7yXUYuHKZ_7KP2okDNE(Lcom/facebook/bolts/CancellationTokenSource;)V

    return-void
.end method
