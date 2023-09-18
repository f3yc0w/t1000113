.class public final synthetic Lcom/netease/yunxin/lite/util/-$$Lambda$DeviceStateObserver$ZqQD46RnOW7Y6ECH2Rq3lEjwGdQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$DeviceStateObserver$ZqQD46RnOW7Y6ECH2Rq3lEjwGdQ;->f$0:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$DeviceStateObserver$ZqQD46RnOW7Y6ECH2Rq3lEjwGdQ;->f$0:J

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/util/DeviceStateObserver;->lambda$create$0(J)Lcom/netease/yunxin/lite/util/DeviceStateObserver;

    move-result-object v0

    return-object v0
.end method
