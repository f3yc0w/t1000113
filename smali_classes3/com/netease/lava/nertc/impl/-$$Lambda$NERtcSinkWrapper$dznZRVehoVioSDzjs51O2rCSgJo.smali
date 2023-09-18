.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$dznZRVehoVioSDzjs51O2rCSgJo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;ILcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$dznZRVehoVioSDzjs51O2rCSgJo;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$dznZRVehoVioSDzjs51O2rCSgJo;->f$1:I

    iput-object p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$dznZRVehoVioSDzjs51O2rCSgJo;->f$2:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput-wide p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$dznZRVehoVioSDzjs51O2rCSgJo;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$dznZRVehoVioSDzjs51O2rCSgJo;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$dznZRVehoVioSDzjs51O2rCSgJo;->f$1:I

    iget-object v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$dznZRVehoVioSDzjs51O2rCSgJo;->f$2:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget-wide v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$dznZRVehoVioSDzjs51O2rCSgJo;->f$3:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserFirstVideoDataReceived$44$NERtcSinkWrapper(ILcom/netease/lava/nertc/sdk/NERtcCallbackEx;J)V

    return-void
.end method
