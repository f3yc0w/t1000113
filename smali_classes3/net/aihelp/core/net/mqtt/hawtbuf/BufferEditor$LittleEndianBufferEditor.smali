.class Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;
.super Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;
.source "BufferEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LittleEndianBufferEditor"
.end annotation


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, p1, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$1;)V

    return-void
.end method


# virtual methods
.method public readChar()C
    .locals 2

    .line 254
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .line 269
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .line 273
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 2

    .line 259
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method public readLong()J
    .locals 5

    .line 264
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 265
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public readShort()S
    .locals 2

    .line 244
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2

    .line 249
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public writeChar(I)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    .line 284
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 285
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 0

    .line 311
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->writeLong(J)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 0

    .line 316
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->writeInt(I)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    .line 291
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 292
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 293
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 294
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 2

    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 300
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 301
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 302
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 303
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 304
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 305
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 306
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    .line 307
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    return-void
.end method

.method public writeRawDouble(D)V
    .locals 0

    .line 320
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->writeLong(J)V

    return-void
.end method

.method public writeRawFloat(F)V
    .locals 0

    .line 325
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->writeInt(I)V

    return-void
.end method

.method public writeShort(I)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    .line 278
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 279
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;->write(I)V

    return-void
.end method
