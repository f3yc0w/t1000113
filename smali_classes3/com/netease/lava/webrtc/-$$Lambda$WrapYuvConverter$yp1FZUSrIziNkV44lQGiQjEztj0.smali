.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$WrapYuvConverter$yp1FZUSrIziNkV44lQGiQjEztj0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/nio/ByteBuffer;

.field public final synthetic f$1:Ljava/nio/ByteBuffer;

.field public final synthetic f$2:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$WrapYuvConverter$yp1FZUSrIziNkV44lQGiQjEztj0;->f$0:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/netease/lava/webrtc/-$$Lambda$WrapYuvConverter$yp1FZUSrIziNkV44lQGiQjEztj0;->f$1:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/netease/lava/webrtc/-$$Lambda$WrapYuvConverter$yp1FZUSrIziNkV44lQGiQjEztj0;->f$2:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$WrapYuvConverter$yp1FZUSrIziNkV44lQGiQjEztj0;->f$0:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/netease/lava/webrtc/-$$Lambda$WrapYuvConverter$yp1FZUSrIziNkV44lQGiQjEztj0;->f$1:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/netease/lava/webrtc/-$$Lambda$WrapYuvConverter$yp1FZUSrIziNkV44lQGiQjEztj0;->f$2:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2}, Lcom/netease/lava/webrtc/WrapYuvConverter;->lambda$rgbConvertToI420$0(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-void
.end method
