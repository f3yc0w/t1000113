.class public final synthetic Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$Gigep5OZVFGK_pUnnw5CKMV4bDY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$Gigep5OZVFGK_pUnnw5CKMV4bDY;->f$0:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    iput p2, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$Gigep5OZVFGK_pUnnw5CKMV4bDY;->f$1:I

    iput-object p3, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$Gigep5OZVFGK_pUnnw5CKMV4bDY;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$Gigep5OZVFGK_pUnnw5CKMV4bDY;->f$0:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    iget v1, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$Gigep5OZVFGK_pUnnw5CKMV4bDY;->f$1:I

    iget-object v2, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$Gigep5OZVFGK_pUnnw5CKMV4bDY;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;->lambda$onLinkDirectCallStartCall$0(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;ILjava/lang/String;)V

    return-void
.end method
