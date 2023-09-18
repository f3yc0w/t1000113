.class public Lcom/netease/mobsec/grow/u;
.super Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const-string v2, "\u0329\u0382\u02a3\u02ed\u027f\u0301"

    invoke-static {v1, v2}, Lcom/netease/mobsec/grow/u;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xf

    new-array p1, p1, [C

    fill-array-data p1, :array_1

    const-string v1, "\u0308\u0352\u0322\u028c\u0341\u02a1"

    invoke-static {p1, v1}, Lcom/netease/mobsec/grow/u;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x12

    new-array p1, p1, [C

    fill-array-data p1, :array_2

    const-string p2, "\u0369\u02a7\u02fb\u0363\u0307\u02a0"

    invoke-static {p1, p2}, Lcom/netease/mobsec/grow/u;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [C

    const/4 p2, 0x0

    const/16 p3, 0x3f

    aput-char p3, p1, p2

    const-string p2, "\u033c\u030c\u0347\u025b\u0359\u02b4"

    invoke-static {p1, p2}, Lcom/netease/mobsec/grow/u;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 2
        0x4as
        0xb6s
        0xd9s
        0x31s
        0x60s
        0x25s
        0xdfs
        0xa6s
        0xd9s
        0x92s
        0x20s
        0x6s
        0xe7s
        0xa7s
        0x51s
        0x2as
    .end array-data

    :array_1
    .array-data 2
        0xe2s
        0x8cs
        0x41s
        0x19s
        0xc2s
        0xd2s
        0x55s
        0xdds
        0xc7s
        0x6es
        0xe3s
        0xaas
        0x3cs
        0xf7s
        0x41s
    .end array-data

    nop

    :array_2
    .array-data 2
        0xa9s
        0xebs
        0x30s
        0xc1s
        0x5bs
        0x11s
        0xa7s
        0x2as
        0xd1s
        0x40s
        0xe3s
        0xabs
        0x8fs
        0x33s
        0x91s
        0xa3s
        0x64s
        0x11s
    .end array-data
.end method

.method public static a([CLjava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-char v2, p0, v1

    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    rem-int v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/2addr v3, v4

    xor-int/2addr v2, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p0, v1

    goto :goto_1

    :cond_0
    shr-int/lit8 v4, v2, 0x1

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/2addr v2, v1

    and-int/2addr v2, v3

    xor-int/2addr v2, v1

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2b

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit16 v2, v2, -0xd5

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x5

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    rem-int v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    and-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method
