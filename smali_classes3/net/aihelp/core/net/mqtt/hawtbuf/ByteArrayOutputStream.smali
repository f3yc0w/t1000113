.class public Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"


# instance fields
.field buffer:[B

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x404

    .line 19
    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 22
    new-array p1, p1, [B

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->buffer:[B

    return-void
.end method

.method private checkCapacity(I)V
    .locals 3

    .line 48
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->buffer:[B

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 49
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    .line 50
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->buffer:[B

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->buffer:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->size:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 68
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->size:I

    return v0
.end method

.method public toBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 4

    .line 60
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->buffer:[B

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 64
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->toBuffer()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 3

    .line 26
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->size:I

    add-int/lit8 v0, v0, 0x1

    .line 27
    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->checkCapacity(I)V

    .line 28
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->buffer:[B

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->size:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 29
    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->size:I

    return-void
.end method

.method public write(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V
    .locals 2

    .line 40
    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget p1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-virtual {p0, v0, v1, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    .line 33
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->size:I

    add-int/2addr v0, p3

    .line 34
    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->checkCapacity(I)V

    .line 35
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->buffer:[B

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->size:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/ByteArrayOutputStream;->size:I

    return-void
.end method
