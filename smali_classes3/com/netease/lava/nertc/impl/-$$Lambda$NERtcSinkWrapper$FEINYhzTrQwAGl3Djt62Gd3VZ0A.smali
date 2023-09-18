.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$FEINYhzTrQwAGl3Djt62Gd3VZ0A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/nio/ByteBuffer;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;JLjava/nio/ByteBuffer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$FEINYhzTrQwAGl3Djt62Gd3VZ0A;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput-wide p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$FEINYhzTrQwAGl3Djt62Gd3VZ0A;->f$1:J

    iput-object p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$FEINYhzTrQwAGl3Djt62Gd3VZ0A;->f$2:Ljava/nio/ByteBuffer;

    iput-wide p5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$FEINYhzTrQwAGl3Djt62Gd3VZ0A;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$FEINYhzTrQwAGl3Djt62Gd3VZ0A;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget-wide v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$FEINYhzTrQwAGl3Djt62Gd3VZ0A;->f$1:J

    iget-object v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$FEINYhzTrQwAGl3Djt62Gd3VZ0A;->f$2:Ljava/nio/ByteBuffer;

    iget-wide v4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$FEINYhzTrQwAGl3Djt62Gd3VZ0A;->f$3:J

    invoke-virtual/range {v0 .. v5}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserDataReceiveMessage$105$NERtcSinkWrapper(JLjava/nio/ByteBuffer;J)V

    return-void
.end method
