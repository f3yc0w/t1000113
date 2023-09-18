.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcCore$7L77-iiM7SsDThw8AQ6dVrBMUnk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcCore;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcCore$7L77-iiM7SsDThw8AQ6dVrBMUnk;->f$0:Lcom/netease/lava/nertc/impl/NERtcCore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcCore$7L77-iiM7SsDThw8AQ6dVrBMUnk;->f$0:Lcom/netease/lava/nertc/impl/NERtcCore;

    invoke-virtual {v0}, Lcom/netease/lava/nertc/impl/NERtcCore;->lambda$releaseEglHandler$0$NERtcCore()V

    return-void
.end method
