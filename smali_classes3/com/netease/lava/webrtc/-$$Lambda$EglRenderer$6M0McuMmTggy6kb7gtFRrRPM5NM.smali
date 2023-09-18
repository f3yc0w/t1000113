.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$6M0McuMmTggy6kb7gtFRrRPM5NM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/webrtc/EglRenderer;

.field public final synthetic f$1:Lcom/netease/lava/webrtc/EglBase$Context;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/webrtc/EglRenderer;Lcom/netease/lava/webrtc/EglBase$Context;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$6M0McuMmTggy6kb7gtFRrRPM5NM;->f$0:Lcom/netease/lava/webrtc/EglRenderer;

    iput-object p2, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$6M0McuMmTggy6kb7gtFRrRPM5NM;->f$1:Lcom/netease/lava/webrtc/EglBase$Context;

    iput-object p3, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$6M0McuMmTggy6kb7gtFRrRPM5NM;->f$2:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$6M0McuMmTggy6kb7gtFRrRPM5NM;->f$0:Lcom/netease/lava/webrtc/EglRenderer;

    iget-object v1, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$6M0McuMmTggy6kb7gtFRrRPM5NM;->f$1:Lcom/netease/lava/webrtc/EglBase$Context;

    iget-object v2, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$6M0McuMmTggy6kb7gtFRrRPM5NM;->f$2:[I

    invoke-virtual {v0, v1, v2}, Lcom/netease/lava/webrtc/EglRenderer;->lambda$init$0$EglRenderer(Lcom/netease/lava/webrtc/EglBase$Context;[I)V

    return-void
.end method
