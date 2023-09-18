.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$GyPXviT5gVTZ3EiouM8gTse4Rvo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/nio/ByteBuffer;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JLjava/nio/ByteBuffer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$GyPXviT5gVTZ3EiouM8gTse4Rvo;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput-wide p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$GyPXviT5gVTZ3EiouM8gTse4Rvo;->f$1:J

    iput-object p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$GyPXviT5gVTZ3EiouM8gTse4Rvo;->f$2:Ljava/nio/ByteBuffer;

    iput-wide p5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$GyPXviT5gVTZ3EiouM8gTse4Rvo;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$GyPXviT5gVTZ3EiouM8gTse4Rvo;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget-wide v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$GyPXviT5gVTZ3EiouM8gTse4Rvo;->f$1:J

    iget-object v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$GyPXviT5gVTZ3EiouM8gTse4Rvo;->f$2:Ljava/nio/ByteBuffer;

    iget-wide v4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$GyPXviT5gVTZ3EiouM8gTse4Rvo;->f$3:J

    invoke-static/range {v0 .. v5}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserDataReceiveMessage$106(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JLjava/nio/ByteBuffer;J)V

    return-void
.end method
