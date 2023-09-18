.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$JavaI420Buffer$oZNeFpG2vlqt2o2GMfBvqvu-H1g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$JavaI420Buffer$oZNeFpG2vlqt2o2GMfBvqvu-H1g;->f$0:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$JavaI420Buffer$oZNeFpG2vlqt2o2GMfBvqvu-H1g;->f$0:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/netease/lava/webrtc/JavaI420Buffer;->lambda$allocate$0(Ljava/nio/ByteBuffer;)V

    return-void
.end method
