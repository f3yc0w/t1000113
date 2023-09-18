.class public final Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
.super Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
.source "UTF8Buffer.java"


# instance fields
.field hashCode:I

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->encode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    return-void
.end method

.method public static decode(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Ljava/lang/String;
    .locals 4

    .line 99
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->getData()[B

    move-result-object v1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->getOffset()I

    move-result v2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->getLength()I

    move-result p0

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v2, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 101
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "A UnsupportedEncodingException was thrown for teh UTF-8 encoding. (This should never happen)"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 92
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "A UnsupportedEncodingException was thrown for teh UTF-8 encoding. (This should never happen)"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static utf8(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static utf8(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    if-ne v0, v1, :cond_1

    .line 82
    check-cast p0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object p0

    .line 84
    :cond_1
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->compareTo(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)I
    .locals 1

    .line 45
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    check-cast p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->equals(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 61
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->hashCode:I

    if-nez v0, :cond_0

    .line 62
    invoke-super {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->hashCode()I

    move-result v0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->hashCode:I

    .line 64
    :cond_0
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->decode(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->value:Ljava/lang/String;

    .line 39
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->value:Ljava/lang/String;

    return-object v0
.end method
