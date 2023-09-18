.class public final Lcom/facebook/ads/redexgen/X/X8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BL;


# static fields
.field public static A06:[Ljava/lang/String;

.field public static final A07:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Ljava/nio/ByteBuffer;

.field public A04:Ljava/nio/ByteBuffer;

.field public A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 65085
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "grqzXl31Ib3CwgbOGLAhXGiUSybb3G6k"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HqCRL2sDmMVhvd9OffyzWNuXpbgyFlqg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "IpTiYMxyYV6xHW6l8ixVEePHdVdY3VZ5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZRTEafxouxRK9cmvY3V1KAxZT1cXIFF2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "yUYM5z5ItqNmKdZaBdfrwPcFTl5oQFEz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Jf72zunVfpVe04eAXULupQi0ZX1Zqvmv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BX9HD2aywQJTDQtUbY1GrFeREy6of4gh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vYXD58apfp8PH7rmktr19THixNAKPTAD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/X8;->A06:[Ljava/lang/String;

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/X8;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65087
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A01:I

    .line 65088
    iput v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A00:I

    .line 65089
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A02:I

    .line 65090
    sget-object v0, Lcom/facebook/ads/redexgen/X/BL;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A03:Ljava/nio/ByteBuffer;

    .line 65091
    sget-object v0, Lcom/facebook/ads/redexgen/X/BL;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A04:Ljava/nio/ByteBuffer;

    .line 65092
    return-void
.end method

.method public static A00(ILjava/nio/ByteBuffer;)V
    .locals 3

    .line 65093
    int-to-double v2, p0

    const-wide v0, 0x3e00000000200000L    # 4.656612875245797E-10

    mul-double/2addr v2, v0

    double-to-float v0, v2

    .line 65094
    .local p0, "pcm32BitFloat":F
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 65095
    .local p1, "floatBits":I
    sget v0, Lcom/facebook/ads/redexgen/X/X8;->A07:I

    if-ne v1, v0, :cond_0

    .line 65096
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 65097
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 65098
    return-void
.end method


# virtual methods
.method public final A47(III)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/BK;
        }
    .end annotation

    .line 65099
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Iz;->A0b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65100
    iget v3, p0, Lcom/facebook/ads/redexgen/X/X8;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/X8;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/X8;->A06:[Ljava/lang/String;

    const-string v1, "leVPKBI8NIDC3IwFclJng7rkdIPGoQ7e"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v3, p1, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A00:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A02:I

    if-ne v0, p3, :cond_1

    .line 65101
    const/4 v0, 0x0

    return v0

    .line 65102
    :cond_1
    iput p1, p0, Lcom/facebook/ads/redexgen/X/X8;->A01:I

    .line 65103
    iput p2, p0, Lcom/facebook/ads/redexgen/X/X8;->A00:I

    .line 65104
    iput p3, p0, Lcom/facebook/ads/redexgen/X/X8;->A02:I

    .line 65105
    const/4 v0, 0x1

    return v0

    .line 65106
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/BK;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/BK;-><init>(III)V

    throw v0
.end method

.method public final A73()Ljava/nio/ByteBuffer;
    .locals 2

    .line 65107
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X8;->A04:Ljava/nio/ByteBuffer;

    .line 65108
    .local p0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/BL;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A04:Ljava/nio/ByteBuffer;

    .line 65109
    return-object v1
.end method

.method public final A74()I
    .locals 1

    .line 65110
    iget v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A00:I

    return v0
.end method

.method public final A75()I
    .locals 1

    .line 65111
    const/4 v0, 0x4

    return v0
.end method

.method public final A76()I
    .locals 1

    .line 65112
    iget v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A01:I

    return v0
.end method

.method public final A8N()Z
    .locals 1

    .line 65113
    iget v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A02:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Iz;->A0b(I)Z

    move-result v0

    return v0
.end method

.method public final A8R()Z
    .locals 2

    .line 65114
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A05:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X8;->A04:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/BL;->A00:Ljava/nio/ByteBuffer;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADU()V
    .locals 1

    .line 65115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A05:Z

    .line 65116
    return-void
.end method

.method public final ADV(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 65117
    iget v1, p0, Lcom/facebook/ads/redexgen/X/X8;->A02:I

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_1

    const/4 v7, 0x1

    .line 65118
    .local p0, "isInput32Bit":Z
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 65119
    .local p1, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 65120
    .local v1, "limit":I
    sub-int v6, v2, v3

    .line 65121
    .local v0, "size":I
    if-eqz v7, :cond_0

    .line 65122
    .local v7, "resampledSize":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/X8;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v4, v0

    const/4 v0, 0x5

    aget-object v4, v4, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65123
    :cond_0
    div-int/lit8 v0, v6, 0x3

    mul-int/lit8 v6, v0, 0x4

    goto :goto_1

    .line 65124
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/X8;->A06:[Ljava/lang/String;

    const-string v1, "93WHocDEPVvmBm0SxxEdEuUxxAP6dl6i"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    if-ge v5, v6, :cond_3

    .line 65125
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A03:Ljava/nio/ByteBuffer;

    .line 65126
    :goto_2
    if-eqz v7, :cond_4

    .line 65127
    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_5

    .line 65128
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    add-int/lit8 v0, v3, 0x1

    .line 65129
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x2

    .line 65130
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x3

    .line 65131
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v1, v0

    .line 65132
    .local v2, "pcm32BitInteger":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A03:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/X8;->A00(ILjava/nio/ByteBuffer;)V

    .line 65133
    .end local v2    # "pcm32BitInteger":I
    add-int/lit8 v3, v3, 0x4

    goto :goto_3

    .line 65134
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_2

    .line 65135
    .restart local v3    # "i":I
    :cond_4
    :goto_4
    if-ge v3, v2, :cond_5

    .line 65136
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v3, 0x1

    .line 65137
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x2

    .line 65138
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v1, v0

    .line 65139
    .restart local v2    # "pcm32BitInteger":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A03:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/X8;->A00(ILjava/nio/ByteBuffer;)V

    .line 65140
    .end local v2    # "pcm32BitInteger":I
    add-int/lit8 v3, v3, 0x3

    goto :goto_4

    .line 65141
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 65142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 65143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A03:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A04:Ljava/nio/ByteBuffer;

    .line 65144
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 65145
    sget-object v0, Lcom/facebook/ads/redexgen/X/BL;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A04:Ljava/nio/ByteBuffer;

    .line 65146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A05:Z

    .line 65147
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 65148
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/X8;->flush()V

    .line 65149
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A01:I

    .line 65150
    iput v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A00:I

    .line 65151
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A02:I

    .line 65152
    sget-object v0, Lcom/facebook/ads/redexgen/X/BL;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X8;->A03:Ljava/nio/ByteBuffer;

    .line 65153
    return-void
.end method
