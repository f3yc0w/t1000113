.class public final synthetic Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$uouFBuCRQyfW0MNKHaboV5Oo6i0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$uouFBuCRQyfW0MNKHaboV5Oo6i0;->f$0:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    iput p2, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$uouFBuCRQyfW0MNKHaboV5Oo6i0;->f$1:I

    iput p3, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$uouFBuCRQyfW0MNKHaboV5Oo6i0;->f$2:I

    iput-object p4, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$uouFBuCRQyfW0MNKHaboV5Oo6i0;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$uouFBuCRQyfW0MNKHaboV5Oo6i0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$uouFBuCRQyfW0MNKHaboV5Oo6i0;->f$0:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    iget v1, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$uouFBuCRQyfW0MNKHaboV5Oo6i0;->f$1:I

    iget v2, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$uouFBuCRQyfW0MNKHaboV5Oo6i0;->f$2:I

    iget-object v3, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$uouFBuCRQyfW0MNKHaboV5Oo6i0;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$uouFBuCRQyfW0MNKHaboV5Oo6i0;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;->lambda$onLinkDirectCallHangUp$1(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;IILjava/lang/String;Z)V

    return-void
.end method
