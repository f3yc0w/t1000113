.class public final synthetic Lcom/netease/lava/nertc/impl/channel/-$$Lambda$RtcChannelImpl$lge6RNCN9Yve21Jo3SUSZrAzsg0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

.field public final synthetic f$1:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/channel/-$$Lambda$RtcChannelImpl$lge6RNCN9Yve21Jo3SUSZrAzsg0;->f$0:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    iput-object p2, p0, Lcom/netease/lava/nertc/impl/channel/-$$Lambda$RtcChannelImpl$lge6RNCN9Yve21Jo3SUSZrAzsg0;->f$1:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/-$$Lambda$RtcChannelImpl$lge6RNCN9Yve21Jo3SUSZrAzsg0;->f$0:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/channel/-$$Lambda$RtcChannelImpl$lge6RNCN9Yve21Jo3SUSZrAzsg0;->f$1:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;

    invoke-virtual {v0, v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->lambda$releaseExternalVideo$1$RtcChannelImpl(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;)V

    return-void
.end method