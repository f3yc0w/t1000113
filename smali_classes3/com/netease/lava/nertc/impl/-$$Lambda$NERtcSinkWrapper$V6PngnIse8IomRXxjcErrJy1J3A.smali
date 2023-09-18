.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$V6PngnIse8IomRXxjcErrJy1J3A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$V6PngnIse8IomRXxjcErrJy1J3A;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$V6PngnIse8IomRXxjcErrJy1J3A;->f$1:I

    iput p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$V6PngnIse8IomRXxjcErrJy1J3A;->f$2:I

    iput-object p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$V6PngnIse8IomRXxjcErrJy1J3A;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$V6PngnIse8IomRXxjcErrJy1J3A;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$V6PngnIse8IomRXxjcErrJy1J3A;->f$1:I

    iget v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$V6PngnIse8IomRXxjcErrJy1J3A;->f$2:I

    iget-object v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$V6PngnIse8IomRXxjcErrJy1J3A;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$OnMediaRelayDidReceiveEvent$95$NERtcSinkWrapper(IILjava/lang/String;)V

    return-void
.end method
