.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$WwahxpLnf6ggxzNm3q0MIN05BtI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallback;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$WwahxpLnf6ggxzNm3q0MIN05BtI;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iput-wide p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$WwahxpLnf6ggxzNm3q0MIN05BtI;->f$1:J

    iput p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$WwahxpLnf6ggxzNm3q0MIN05BtI;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$WwahxpLnf6ggxzNm3q0MIN05BtI;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iget-wide v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$WwahxpLnf6ggxzNm3q0MIN05BtI;->f$1:J

    iget v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$WwahxpLnf6ggxzNm3q0MIN05BtI;->f$2:I

    invoke-static {v0, v1, v2, v3}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserLeave$13(Lcom/netease/lava/nertc/sdk/NERtcCallback;JI)V

    return-void
.end method
