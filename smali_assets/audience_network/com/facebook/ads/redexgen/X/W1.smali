.class public final Lcom/facebook/ads/redexgen/X/W1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Dp;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:Lcom/facebook/ads/redexgen/X/Cf;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/Ce;

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Dp;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Lcom/facebook/ads/redexgen/X/Ij;

.field public final A07:Lcom/facebook/ads/redexgen/X/Iv;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 60051
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mExdGVP0maPlz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mtU4GW9lJGPRgwi7WTtJ47xTDMOD9Jvz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mnVK2jaR5CYO63Y95SEKprVffrLm5k0s"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WHnhbYArFQVibafDHBFVvoYN0aOa9WUH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bzekXst0bt0AdcZvIiwJXkkJcIHRgIjU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gyTL2jV1VgKAzlNybmW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "q"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/W1;->A08:[Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/W2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/W2;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/W1;->A09:Lcom/facebook/ads/redexgen/X/Cf;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 60052
    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Iv;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Iv;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/W1;-><init>(Lcom/facebook/ads/redexgen/X/Iv;)V

    .line 60053
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Iv;)V
    .locals 2

    .line 60054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60055
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W1;->A07:Lcom/facebook/ads/redexgen/X/Iv;

    .line 60056
    const/16 v1, 0x1000

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ij;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ij;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    .line 60057
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A05:Landroid/util/SparseArray;

    .line 60058
    return-void
.end method


# virtual methods
.method public final A8I(Lcom/facebook/ads/redexgen/X/Ce;)V
    .locals 3

    .line 60059
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W1;->A01:Lcom/facebook/ads/redexgen/X/Ce;

    .line 60060
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wq;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Wq;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Ce;->AEM(Lcom/facebook/ads/redexgen/X/Cl;)V

    .line 60061
    return-void
.end method

.method public final ADX(Lcom/facebook/ads/redexgen/X/Cd;Lcom/facebook/ads/redexgen/X/Cj;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ij;->A00:[B

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    invoke-interface {p1, v1, v3, v0, v6}, Lcom/facebook/ads/redexgen/X/Cd;->AD8([BIIZ)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 60063
    return v2

    .line 60064
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ij;->A0Y(I)V

    .line 60065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A08()I

    move-result v1

    .line 60066
    .local p0, "nextStartCode":I
    const/16 v0, 0x1b9

    if-ne v1, v0, :cond_1

    .line 60067
    return v2

    .line 60068
    :cond_1
    const/16 v0, 0x1ba

    if-ne v1, v0, :cond_2

    .line 60069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ij;->A00:[B

    const/16 v0, 0xa

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Cd;->AD7([BII)V

    .line 60070
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0Y(I)V

    .line 60071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0E()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 60072
    .local p1, "packStuffingLength":I
    add-int/lit8 v0, v0, 0xe

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->AEt(I)V

    .line 60073
    return v3

    .line 60074
    .end local p1    # "packStuffingLength":I
    :cond_2
    const/16 v0, 0x1bb

    const/4 v5, 0x2

    if-ne v1, v0, :cond_3

    .line 60075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A00:[B

    invoke-interface {p1, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/Cd;->AD7([BII)V

    .line 60076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ij;->A0Y(I)V

    .line 60077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0I()I

    move-result v0

    .line 60078
    .local p1, "systemHeaderLength":I
    add-int/lit8 v0, v0, 0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->AEt(I)V

    .line 60079
    return v3

    .line 60080
    .end local p1    # "systemHeaderLength":I
    :cond_3
    and-int/lit16 v0, v1, -0x100

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, v6, :cond_4

    .line 60081
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/Cd;->AEt(I)V

    .line 60082
    return v3

    .line 60083
    :cond_4
    and-int/lit16 v7, v1, 0xff

    .line 60084
    .local v0, "streamId":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Dp;

    .line 60085
    .local v6, "payloadReader":Lcom/facebook/ads/redexgen/X/Dp;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A02:Z

    if-nez v0, :cond_a

    .line 60086
    if-nez v4, :cond_6

    .line 60087
    const/4 v2, 0x0

    .line 60088
    .local v3, "elementaryStreamReader":Lcom/facebook/ads/redexgen/X/Di;
    const/16 v0, 0xbd

    if-ne v7, v0, :cond_7

    .line 60089
    new-instance v2, Lcom/facebook/ads/redexgen/X/WG;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/WG;-><init>()V

    .line 60090
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/W1;->A03:Z

    .line 60091
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Cd;->A7F()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:J

    .line 60092
    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    .line 60093
    const/16 v0, 0x100

    new-instance v1, Lcom/facebook/ads/redexgen/X/Dw;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/Dw;-><init>(II)V

    .line 60094
    .local v0, "idGenerator":Lcom/facebook/ads/redexgen/X/Dw;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A01:Lcom/facebook/ads/redexgen/X/Ce;

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Di;->A4V(Lcom/facebook/ads/redexgen/X/Ce;Lcom/facebook/ads/redexgen/X/Dw;)V

    .line 60095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A07:Lcom/facebook/ads/redexgen/X/Iv;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Dp;

    invoke-direct {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/Dp;-><init>(Lcom/facebook/ads/redexgen/X/Di;Lcom/facebook/ads/redexgen/X/Iv;)V

    .line 60096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60097
    .end local v3    # "elementaryStreamReader":Lcom/facebook/ads/redexgen/X/Di;
    .end local v0    # "idGenerator":Lcom/facebook/ads/redexgen/X/Dw;
    :cond_6
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A03:Z

    if-eqz v0, :cond_d

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/W1;->A04:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60098
    :cond_7
    and-int/lit16 v1, v7, 0xe0

    const/16 v0, 0xc0

    if-ne v1, v0, :cond_8

    .line 60099
    new-instance v2, Lcom/facebook/ads/redexgen/X/W4;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/W4;-><init>()V

    .line 60100
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/W1;->A03:Z

    .line 60101
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Cd;->A7F()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:J

    goto :goto_0

    .line 60102
    :cond_8
    and-int/lit16 v1, v7, 0xf0

    const/16 v0, 0xe0

    if-ne v1, v0, :cond_5

    .line 60103
    new-instance v2, Lcom/facebook/ads/redexgen/X/W9;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/W9;-><init>()V

    .line 60104
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/W1;->A04:Z

    .line 60105
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Cd;->A7F()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:J

    goto :goto_0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A08:[Ljava/lang/String;

    const-string v1, "GuNYv8iGB9fWJbOt3uu3Za7wMxPGJegg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "GUiTHbar7DdTUGk0lHWf4lwKJeXDLMXK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v7, :cond_d

    .line 60106
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:J

    const-wide/16 v7, 0x2000

    add-long/2addr v1, v7

    .line 60107
    .local v3, "maxSearchPosition":J
    :goto_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Cd;->A7F()J

    move-result-wide v7

    cmp-long v0, v7, v1

    if-lez v0, :cond_a

    .line 60108
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/W1;->A02:Z

    .line 60109
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A01:Lcom/facebook/ads/redexgen/X/Ce;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ce;->A5D()V

    .line 60110
    .end local v3    # "maxSearchPosition":J
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A00:[B

    invoke-interface {p1, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/Cd;->AD7([BII)V

    .line 60111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ij;->A0Y(I)V

    .line 60112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0I()I

    move-result v0

    .line 60113
    .local p1, "payloadLength":I
    add-int/lit8 v5, v0, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_b

    .line 60114
    .local v1, "pesLength":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A08:[Ljava/lang/String;

    const-string v1, "LU8WC4TuN3WXFvWf57u6WvD8Lscdw8Rq"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v4, :cond_c

    .line 60115
    :goto_2
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/Cd;->AEt(I)V

    .line 60116
    :goto_3
    return v3

    .line 60117
    .local v1, "pesLength":I
    :cond_b
    if-nez v4, :cond_c

    goto :goto_2

    .line 60118
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Ij;->A0W(I)V

    .line 60119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ij;->A00:[B

    invoke-interface {p1, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/Cd;->readFully([BII)V

    .line 60120
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0Y(I)V

    .line 60121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Dp;->A03(Lcom/facebook/ads/redexgen/X/Ij;)V

    .line 60122
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W1;->A06:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ij;->A05()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0X(I)V

    goto :goto_3

    .line 60123
    :cond_d
    const-wide/32 v1, 0x100000

    goto :goto_1
.end method

.method public final AEL(JJ)V
    .locals 2

    .line 60124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A07:Lcom/facebook/ads/redexgen/X/Iv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Iv;->A08()V

    .line 60125
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 60126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dp;->A02()V

    .line 60127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60128
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method public final AEv(Lcom/facebook/ads/redexgen/X/Cd;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60129
    const/16 v0, 0xe

    new-array v5, v0, [B

    .line 60130
    .local p1, "scratch":[B
    const/4 v4, 0x0

    invoke-interface {p1, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Cd;->AD7([BII)V

    .line 60131
    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x18

    const/4 v3, 0x1

    aget-byte v0, v5, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    const/4 v8, 0x2

    aget-byte v0, v5, v8

    and-int/lit16 v0, v0, 0xff

    const/16 v6, 0x8

    shl-int/2addr v0, v6

    or-int/2addr v1, v0

    const/4 v7, 0x3

    aget-byte v0, v5, v7

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    const/16 v0, 0x1ba

    if-eq v0, v1, :cond_0

    .line 60132
    return v4

    .line 60133
    :cond_0
    const/4 v2, 0x4

    aget-byte v0, v5, v2

    and-int/lit16 v1, v0, 0xc4

    const/16 v0, 0x44

    if-eq v1, v0, :cond_1

    .line 60134
    return v4

    .line 60135
    :cond_1
    const/4 v0, 0x6

    aget-byte v0, v5, v0

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_2

    .line 60136
    return v4

    .line 60137
    :cond_2
    aget-byte v0, v5, v6

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_3

    .line 60138
    return v4

    .line 60139
    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v5, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    .line 60140
    return v4

    .line 60141
    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v5, v0

    and-int/2addr v0, v7

    if-eq v0, v7, :cond_5

    .line 60142
    return v4

    .line 60143
    :cond_5
    const/16 v6, 0xd

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/W1;->A08:[Ljava/lang/String;

    const-string v1, "dWjhqjXulz1hd3AtKzuGBSPNQhOMyT1H"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aget-byte v0, v5, v6

    and-int/lit8 v0, v0, 0x7

    .line 60144
    .local p0, "packStuffingLength":I
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Cd;->A3K(I)V

    .line 60145
    invoke-interface {p1, v5, v4, v7}, Lcom/facebook/ads/redexgen/X/Cd;->AD7([BII)V

    .line 60146
    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x10

    aget-byte v0, v5, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    aget-byte v0, v5, v8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    if-ne v3, v0, :cond_6

    const/4 v4, 0x1

    :cond_6
    return v4

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
