.class public final Lcom/facebook/ads/redexgen/X/Wu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cd;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:[B

.field public final A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/He;

.field public final A06:[B


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/He;JJ)V
    .locals 1

    .line 64140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64141
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wu;->A05:Lcom/facebook/ads/redexgen/X/He;

    .line 64142
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Wu;->A02:J

    .line 64143
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Wu;->A04:J

    .line 64144
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A03:[B

    .line 64145
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A06:[B

    .line 64146
    return-void
.end method

.method private A00(I)I
    .locals 1

    .line 64147
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A00:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 64148
    .local p0, "bytesSkipped":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wu;->A05(I)V

    .line 64149
    return v0
.end method

.method private A01([BII)I
    .locals 3

    .line 64150
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A00:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 64151
    return v2

    .line 64152
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 64153
    .local p0, "peekBytes":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A03:[B

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64154
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Wu;->A05(I)V

    .line 64155
    return v1
.end method

.method private A02([BIIIZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64156
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A05:Lcom/facebook/ads/redexgen/X/He;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/He;->read([BII)I

    move-result v1

    .line 64158
    .local p0, "bytesRead":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 64159
    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 64160
    return v0

    .line 64161
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 64162
    :cond_1
    add-int/2addr p4, v1

    return p4

    .line 64163
    .end local p0    # "bytesRead":I
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private A03(I)V
    .locals 4

    .line 64164
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 64165
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wu;->A02:J

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wu;->A02:J

    .line 64166
    :cond_0
    return-void
.end method

.method private A04(I)V
    .locals 4

    .line 64167
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Wu;->A01:I

    add-int/2addr v3, p1

    .line 64168
    .local p0, "requiredLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wu;->A03:[B

    array-length v0, v1

    if-le v3, v0, :cond_0

    .line 64169
    array-length v0, v1

    mul-int/lit8 v2, v0, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v3

    const/high16 v0, 0x80000

    add-int/2addr v0, v3

    .line 64170
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Iz;->A06(III)I

    move-result v1

    .line 64171
    .local p1, "newPeekCapacity":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A03:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A03:[B

    .line 64172
    .end local p1    # "newPeekCapacity":I
    :cond_0
    return-void
.end method

.method private A05(I)V
    .locals 5

    .line 64173
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A00:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A00:I

    .line 64174
    const/4 v4, 0x0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Wu;->A01:I

    .line 64175
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wu;->A03:[B

    .line 64176
    .local p1, "newPeekBuffer":[B
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Wu;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A03:[B

    array-length v1, v0

    const/high16 v0, 0x80000

    sub-int/2addr v1, v0

    if-ge v2, v1, :cond_0

    .line 64177
    const/high16 v0, 0x10000

    add-int/2addr v2, v0

    new-array v3, v2, [B

    .line 64178
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wu;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A00:I

    invoke-static {v1, p1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64179
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Wu;->A03:[B

    .line 64180
    return-void
.end method


# virtual methods
.method public final A06(IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64181
    move v3, p1

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Wu;->A04(I)V

    .line 64182
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wu;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A01:I

    sub-int/2addr v1, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 64183
    .local p0, "bytesPeeked":I
    :cond_0
    if-ge v4, v3, :cond_1

    .line 64184
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wu;->A03:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Wu;->A01:I

    .line 64185
    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Wu;->A02([BIIIZ)I

    move-result v4

    .line 64186
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 64187
    const/4 v0, 0x0

    return v0

    .line 64188
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A01:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A01:I

    .line 64189
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wu;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A01:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A00:I

    .line 64190
    const/4 v0, 0x1

    return v0
.end method

.method public final A07(IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64191
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wu;->A00(I)I

    move-result v4

    .line 64192
    .local p0, "bytesSkipped":I
    :goto_0
    const/4 v0, -0x1

    if-ge v4, p1, :cond_0

    if-eq v4, v0, :cond_0

    .line 64193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A06:[B

    array-length v0, v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 64194
    .local v0, "minLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wu;->A06:[B

    neg-int v2, v4

    .line 64195
    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Wu;->A02([BIIIZ)I

    move-result v4

    .line 64196
    .end local v0    # "minLength":I
    goto :goto_0

    .line 64197
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Wu;->A03(I)V

    .line 64198
    if-eq v4, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final A3K(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Wu;->A06(IZ)Z

    .line 64200
    return-void
.end method

.method public final A6t()J
    .locals 2

    .line 64201
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A04:J

    return-wide v0
.end method

.method public final A7A()J
    .locals 4

    .line 64202
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wu;->A02:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A01:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A7F()J
    .locals 2

    .line 64203
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A02:J

    return-wide v0
.end method

.method public final AD7([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64204
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Wu;->AD8([BIIZ)Z

    .line 64205
    return-void
.end method

.method public final AD8([BIIZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64206
    invoke-virtual {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/Wu;->A06(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64207
    const/4 v0, 0x0

    return v0

    .line 64208
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wu;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A01:I

    sub-int/2addr v0, p3

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64209
    const/4 v0, 0x1

    return v0
.end method

.method public final ADc([BIIZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64210
    move v2, p2

    move-object v1, p1

    move v3, p3

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Wu;->A01([BII)I

    move-result v4

    .line 64211
    .local p0, "bytesRead":I
    :goto_0
    const/4 v0, -0x1

    if-ge v4, v3, :cond_0

    if-eq v4, v0, :cond_0

    .line 64212
    move-object v0, p0

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Wu;->A02([BIIIZ)I

    move-result v4

    goto :goto_0

    .line 64213
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Wu;->A03(I)V

    .line 64214
    if-eq v4, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final AEB()V
    .locals 1

    .line 64215
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wu;->A01:I

    .line 64216
    return-void
.end method

.method public final AEq(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64217
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wu;->A00(I)I

    move-result v0

    .line 64218
    .local p0, "bytesSkipped":I
    if-nez v0, :cond_0

    .line 64219
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wu;->A06:[B

    const/4 v2, 0x0

    array-length v0, v1

    .line 64220
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Wu;->A02([BIIIZ)I

    move-result v0

    .line 64221
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wu;->A03(I)V

    .line 64222
    return v0
.end method

.method public final AEt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Wu;->A07(IZ)Z

    .line 64224
    return-void
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64225
    move v2, p2

    move v3, p3

    move-object v1, p1

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Wu;->A01([BII)I

    move-result v0

    .line 64226
    .local p0, "bytesRead":I
    if-nez v0, :cond_0

    .line 64227
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Wu;->A02([BIIIZ)I

    move-result v0

    .line 64228
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wu;->A03(I)V

    .line 64229
    return v0
.end method

.method public final readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Wu;->ADc([BIIZ)Z

    .line 64231
    return-void
.end method
