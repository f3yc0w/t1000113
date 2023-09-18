.class public final synthetic Lcom/netease/lava/nertc/impl/channel/-$$Lambda$RtcChannelImpl$qJdFushMWsXC5pZAfStiPY0en2M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;

.field public final synthetic f$1:Landroid/opengl/EGLContext;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;Landroid/opengl/EGLContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/channel/-$$Lambda$RtcChannelImpl$qJdFushMWsXC5pZAfStiPY0en2M;->f$0:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;

    iput-object p2, p0, Lcom/netease/lava/nertc/impl/channel/-$$Lambda$RtcChannelImpl$qJdFushMWsXC5pZAfStiPY0en2M;->f$1:Landroid/opengl/EGLContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/channel/-$$Lambda$RtcChannelImpl$qJdFushMWsXC5pZAfStiPY0en2M;->f$0:Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/channel/-$$Lambda$RtcChannelImpl$qJdFushMWsXC5pZAfStiPY0en2M;->f$1:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl;->lambda$pushExternalVideoFrame$0(Lcom/netease/lava/nertc/impl/channel/RtcChannelImpl$ExternalVideoInfo;Landroid/opengl/EGLContext;)V

    return-void
.end method
