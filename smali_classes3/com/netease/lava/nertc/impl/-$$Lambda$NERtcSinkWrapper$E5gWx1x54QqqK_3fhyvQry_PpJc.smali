.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E5gWx1x54QqqK_3fhyvQry_PpJc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E5gWx1x54QqqK_3fhyvQry_PpJc;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E5gWx1x54QqqK_3fhyvQry_PpJc;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E5gWx1x54QqqK_3fhyvQry_PpJc;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$E5gWx1x54QqqK_3fhyvQry_PpJc;->f$1:I

    invoke-virtual {v0, v1}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onLeave$4$NERtcSinkWrapper(I)V

    return-void
.end method
