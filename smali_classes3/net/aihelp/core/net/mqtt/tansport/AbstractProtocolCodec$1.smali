.class Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$1;
.super Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;
.source "AbstractProtocolCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->allocateNextWriteBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;[B)V
    .locals 0

    .line 136
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;

    invoke-direct {p0, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;-><init>([B)V

    return-void
.end method


# virtual methods
.method protected resize(I)V
    .locals 2

    .line 139
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$1;->buf:[B

    .line 140
    invoke-super {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/DataByteArrayOutputStream;->resize(I)V

    .line 141
    array-length p1, v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/util/BufferPool;->getBufferSize()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 142
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/tansport/AbstractProtocolCodec;->writeBufferPool:Lnet/aihelp/core/net/mqtt/util/BufferPool;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/util/BufferPool;->checkin(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
