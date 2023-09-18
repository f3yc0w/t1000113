.class public final synthetic Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcPstnImpl$xoJ-QCLp0hz2WEQ7uts_MhGfX-8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcPstnImpl$xoJ-QCLp0hz2WEQ7uts_MhGfX-8;->f$0:Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcPstnImpl$xoJ-QCLp0hz2WEQ7uts_MhGfX-8;->f$0:Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;

    invoke-static {v0}, Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;->lambda$xoJ-QCLp0hz2WEQ7uts_MhGfX-8(Lcom/netease/lava/nertc/pstn/NERtcPstnImpl;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
