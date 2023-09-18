.class public final Lcom/facebook/ads/redexgen/X/Vw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PmtReader"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Dx;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Landroid/util/SparseIntArray;

.field public final A03:Lcom/facebook/ads/redexgen/X/Ii;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/Vv;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 59825
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RGyTh4SpGx69CnC3uYB0gmKqWWTNP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iDg"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "j2BD3qxwlCatqD2Ch8dsr4SydA7XKwXL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "m1LAn1cIXYa33UPzElI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cPJKdoCFMTZnGOgvNAg6pI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "iUx5cAJ8Ufw2U1Fp6uB6P"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "qd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YeOgnvzSUR8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Vv;I)V
    .locals 2

    .line 59826
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59827
    const/4 v0, 0x5

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ii;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ii;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A03:Lcom/facebook/ads/redexgen/X/Ii;

    .line 59828
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A01:Landroid/util/SparseArray;

    .line 59829
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vw;->A02:Landroid/util/SparseIntArray;

    .line 59830
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Vw;->A00:I

    .line 59831
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Ij;I)Lcom/facebook/ads/redexgen/X/Du;
    .locals 12

    .line 59832
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ij;->A06()I

    move-result v8

    .line 59833
    .local p1, "descriptorsStartPosition":I
    add-int v9, v8, p2

    .line 59834
    .local p2, "descriptorsEndPosition":I
    const/4 v7, -0x1

    .line 59835
    .local p1, "streamType":I
    const/4 v6, 0x0

    .line 59836
    .local v8, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 59837
    .local v9, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ij;->A06()I

    move-result v0

    if-ge v0, v9, :cond_a

    .line 59838
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ij;->A0E()I

    move-result v3

    .line 59839
    .local v7, "descriptorTag":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ij;->A0E()I

    move-result v0

    .line 59840
    .local v6, "descriptorLength":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ij;->A06()I

    move-result v10

    add-int/2addr v10, v0

    .line 59841
    .local v5, "positionOfNextDescriptor":I
    const/4 v0, 0x5

    if-ne v3, v0, :cond_3

    .line 59842
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ij;->A0M()J

    move-result-wide v3

    .line 59843
    .local v0, "formatIdentifier":J
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vv;->A06()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 59844
    const/16 v7, 0x81

    .line 59845
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ij;->A06()I

    move-result v0

    sub-int/2addr v10, v0

    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/Ij;->A0Z(I)V

    .line 59846
    .end local v7    # "descriptorTag":I
    .end local v6    # "descriptorLength":I
    .end local v5    # "positionOfNextDescriptor":I
    goto :goto_0

    .line 59847
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vv;->A04()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 59848
    const/16 v7, 0x87

    goto :goto_1

    .line 59849
    :cond_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vv;->A05()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 59850
    const/16 v7, 0x24

    goto :goto_1

    .line 59851
    :cond_3
    const/16 v4, 0x6a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A05:[Ljava/lang/String;

    const-string v1, "0iRHlmeNaIWOYOZ0wuzrf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "tRWtYFFxRJJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_4

    .line 59852
    const/16 v7, 0x81

    goto :goto_1

    .line 59853
    :cond_4
    const/16 v4, 0x7a

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vw;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A05:[Ljava/lang/String;

    const-string v1, "1wLlXhx7j4gWLvUCKIdOcZbAVKCqpjoE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_6

    .line 59854
    :goto_2
    const/16 v7, 0x87

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A05:[Ljava/lang/String;

    const-string v1, "yxMQjgWbjbckRLnQ6dtKu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "lY9rZIuJvHs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_6

    goto :goto_2

    .line 59855
    :cond_6
    const/16 v0, 0x7b

    if-ne v3, v0, :cond_7

    .line 59856
    const/16 v7, 0x8a

    goto :goto_1

    .line 59857
    :cond_7
    const/16 v0, 0xa

    const/4 v11, 0x3

    if-ne v3, v0, :cond_8

    .line 59858
    invoke-virtual {p1, v11}, Lcom/facebook/ads/redexgen/X/Ij;->A0S(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 59859
    :cond_8
    const/16 v0, 0x59

    if-ne v3, v0, :cond_0

    .line 59860
    const/16 v7, 0x59

    .line 59861
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59862
    :goto_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ij;->A06()I

    move-result v0

    if-ge v0, v10, :cond_0

    .line 59863
    invoke-virtual {p1, v11}, Lcom/facebook/ads/redexgen/X/Ij;->A0S(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 59864
    .local v0, "dvbLanguage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ij;->A0E()I

    move-result v3

    .line 59865
    .local v0, "dvbSubtitlingType":I
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 59866
    .local v10, "initializationData":[B
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ij;->A0c([BII)V

    .line 59867
    new-instance v0, Lcom/facebook/ads/redexgen/X/Dt;

    invoke-direct {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/Dt;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59868
    .end local v0    # "dvbSubtitlingType":I
    .end local v0
    .end local v10    # "initializationData":[B
    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59869
    :cond_a
    invoke-virtual {p1, v9}, Lcom/facebook/ads/redexgen/X/Ij;->A0Y(I)V

    .line 59870
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ij;->A00:[B

    .line 59871
    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Du;

    invoke-direct {v0, v7, v6, v5, v1}, Lcom/facebook/ads/redexgen/X/Du;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 59872
    return-object v0
.end method


# virtual methods
.method public final A48(Lcom/facebook/ads/redexgen/X/Ij;)V
    .locals 14

    .line 59873
    move-object v4, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ij;->A0E()I

    move-result v0

    .line 59874
    .local v4, "tableId":I
    const/4 v7, 0x2

    if-eq v0, v7, :cond_0

    .line 59875
    return-void

    .line 59876
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A02(Lcom/facebook/ads/redexgen/X/Vv;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A02(Lcom/facebook/ads/redexgen/X/Vv;)I

    move-result v0

    if-eq v0, v7, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A00(Lcom/facebook/ads/redexgen/X/Vv;)I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 59877
    .end local v0
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A0E(Lcom/facebook/ads/redexgen/X/Vv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/Iv;

    .line 59878
    .restart local v0
    :goto_0
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/Ij;->A0Z(I)V

    .line 59879
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ij;->A0I()I

    move-result v8

    .line 59880
    .local v0, "programNumber":I
    const/4 v10, 0x5

    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/Ij;->A0Z(I)V

    .line 59881
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A03:Lcom/facebook/ads/redexgen/X/Ii;

    invoke-virtual {p1, v0, v7}, Lcom/facebook/ads/redexgen/X/Ij;->A0a(Lcom/facebook/ads/redexgen/X/Ii;I)V

    .line 59882
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A03:Lcom/facebook/ads/redexgen/X/Ii;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Ii;->A08(I)V

    .line 59883
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A03:Lcom/facebook/ads/redexgen/X/Ii;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ii;->A04(I)I

    move-result v0

    .line 59884
    .local v1, "programInfoLength":I
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0Z(I)V

    .line 59885
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A02(Lcom/facebook/ads/redexgen/X/Vv;)I

    move-result v0

    const/16 v6, 0x2000

    const/16 v1, 0x15

    if-ne v0, v7, :cond_2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A0B(Lcom/facebook/ads/redexgen/X/Vv;)Lcom/facebook/ads/redexgen/X/Dx;

    move-result-object v0

    if-nez v0, :cond_2

    .line 59886
    new-array v2, v2, [B

    const/4 v0, 0x0

    new-instance v11, Lcom/facebook/ads/redexgen/X/Du;

    invoke-direct {v11, v1, v0, v0, v2}, Lcom/facebook/ads/redexgen/X/Du;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 59887
    .local v7, "dummyEsInfo":Lcom/facebook/ads/redexgen/X/Du;
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Vv;->A0A(Lcom/facebook/ads/redexgen/X/Vv;)Lcom/facebook/ads/redexgen/X/Dv;

    move-result-object v0

    invoke-interface {v0, v1, v11}, Lcom/facebook/ads/redexgen/X/Dv;->A4P(ILcom/facebook/ads/redexgen/X/Du;)Lcom/facebook/ads/redexgen/X/Dx;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Vv;->A0C(Lcom/facebook/ads/redexgen/X/Vv;Lcom/facebook/ads/redexgen/X/Dx;)Lcom/facebook/ads/redexgen/X/Dx;

    .line 59888
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A0B(Lcom/facebook/ads/redexgen/X/Vv;)Lcom/facebook/ads/redexgen/X/Dx;

    move-result-object v11

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    .line 59889
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A09(Lcom/facebook/ads/redexgen/X/Vv;)Lcom/facebook/ads/redexgen/X/Ce;

    move-result-object v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dw;

    invoke-direct {v0, v8, v1, v6}, Lcom/facebook/ads/redexgen/X/Dw;-><init>(III)V

    .line 59890
    invoke-interface {v11, v9, v2, v0}, Lcom/facebook/ads/redexgen/X/Dx;->A8K(Lcom/facebook/ads/redexgen/X/Iv;Lcom/facebook/ads/redexgen/X/Ce;Lcom/facebook/ads/redexgen/X/Dw;)V

    .line 59891
    .end local v7    # "dummyEsInfo":Lcom/facebook/ads/redexgen/X/Du;
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 59892
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 59893
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ij;->A04()I

    move-result v13

    .line 59894
    .local v7, "remainingEntriesLength":I
    :goto_1
    if-lez v13, :cond_c

    .line 59895
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A03:Lcom/facebook/ads/redexgen/X/Ii;

    invoke-virtual {p1, v0, v10}, Lcom/facebook/ads/redexgen/X/Ij;->A0a(Lcom/facebook/ads/redexgen/X/Ii;I)V

    .line 59896
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vw;->A03:Lcom/facebook/ads/redexgen/X/Ii;

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(I)I

    move-result v11

    .line 59897
    .local v0, "streamType":I
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vw;->A03:Lcom/facebook/ads/redexgen/X/Ii;

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A08(I)V

    .line 59898
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vw;->A03:Lcom/facebook/ads/redexgen/X/Ii;

    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ii;->A04(I)I

    move-result v10

    .line 59899
    .local v0, "elementaryPid":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A03:Lcom/facebook/ads/redexgen/X/Ii;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Ii;->A08(I)V

    .line 59900
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A03:Lcom/facebook/ads/redexgen/X/Ii;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Ii;->A04(I)I

    move-result v2

    .line 59901
    .local v0, "esInfoLength":I
    invoke-direct {v4, p1, v2}, Lcom/facebook/ads/redexgen/X/Vw;->A00(Lcom/facebook/ads/redexgen/X/Ij;I)Lcom/facebook/ads/redexgen/X/Du;

    move-result-object v5

    .line 59902
    .local v2, "esInfo":Lcom/facebook/ads/redexgen/X/Du;
    const/4 v0, 0x6

    if-ne v11, v0, :cond_3

    .line 59903
    iget v11, v5, Lcom/facebook/ads/redexgen/X/Du;->A00:I

    .line 59904
    :cond_3
    add-int/lit8 v0, v2, 0x5

    sub-int/2addr v13, v0

    .line 59905
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A02(Lcom/facebook/ads/redexgen/X/Vv;)I

    move-result v0

    if-ne v0, v7, :cond_8

    move v3, v11

    .line 59906
    .local v0, "trackId":I
    :goto_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A08(Lcom/facebook/ads/redexgen/X/Vv;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59907
    :cond_4
    :goto_3
    const/4 v10, 0x5

    const/4 v5, 0x4

    const/16 v3, 0xc

    const/16 v1, 0x15

    goto :goto_1

    .line 59908
    :cond_5
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A02(Lcom/facebook/ads/redexgen/X/Vv;)I

    move-result v0

    if-ne v0, v7, :cond_7

    if-ne v11, v1, :cond_7

    .line 59909
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A0B(Lcom/facebook/ads/redexgen/X/Vv;)Lcom/facebook/ads/redexgen/X/Dx;

    move-result-object v5

    .line 59910
    .local v0, "reader":Lcom/facebook/ads/redexgen/X/Dx;
    :goto_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A02(Lcom/facebook/ads/redexgen/X/Vv;)I

    move-result v0

    if-ne v0, v7, :cond_6

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A02:Landroid/util/SparseIntArray;

    .line 59911
    invoke-virtual {v0, v3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ge v10, v0, :cond_4

    .line 59912
    :cond_6
    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/Vw;->A02:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vw;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A05:[Ljava/lang/String;

    const-string v1, "hYuW2ZxScZvjOUyRYzD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v11, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 59913
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 59914
    :cond_7
    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vw;->A05:[Ljava/lang/String;

    const-string v1, "uMTX0BK3hwRt9LI9TXEhN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "Q6yhhKO6s7v"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v12}, Lcom/facebook/ads/redexgen/X/Vv;->A0A(Lcom/facebook/ads/redexgen/X/Vv;)Lcom/facebook/ads/redexgen/X/Dv;

    move-result-object v0

    invoke-interface {v0, v11, v5}, Lcom/facebook/ads/redexgen/X/Dv;->A4P(ILcom/facebook/ads/redexgen/X/Du;)Lcom/facebook/ads/redexgen/X/Dx;

    move-result-object v5

    goto :goto_4

    .line 59915
    :cond_8
    move v3, v10

    goto :goto_2

    .line 59916
    :cond_9
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    .line 59917
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A0E(Lcom/facebook/ads/redexgen/X/Vv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Iv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Iv;->A03()J

    move-result-wide v0

    new-instance v9, Lcom/facebook/ads/redexgen/X/Iv;

    invoke-direct {v9, v0, v1}, Lcom/facebook/ads/redexgen/X/Iv;-><init>(J)V

    .line 59918
    .local v0, "timestampAdjuster":Lcom/facebook/ads/redexgen/X/Iv;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A0E(Lcom/facebook/ads/redexgen/X/Vv;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59919
    :cond_c
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 59920
    .local v0, "trackIdCount":I
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v3, v5, :cond_f

    .line 59921
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 59922
    .restart local v0    # "trackIdCount":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A08(Lcom/facebook/ads/redexgen/X/Vv;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v10, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 59923
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Dx;

    .line 59924
    .restart local v0    # "trackIdCount":I
    if-eqz v2, :cond_e

    .line 59925
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A0B(Lcom/facebook/ads/redexgen/X/Vv;)Lcom/facebook/ads/redexgen/X/Dx;

    move-result-object v0

    if-eq v2, v0, :cond_d

    .line 59926
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    .line 59927
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A09(Lcom/facebook/ads/redexgen/X/Vv;)Lcom/facebook/ads/redexgen/X/Ce;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dw;

    invoke-direct {v0, v8, v10, v6}, Lcom/facebook/ads/redexgen/X/Dw;-><init>(III)V

    .line 59928
    invoke-interface {v2, v9, v1, v0}, Lcom/facebook/ads/redexgen/X/Dx;->A8K(Lcom/facebook/ads/redexgen/X/Iv;Lcom/facebook/ads/redexgen/X/Ce;Lcom/facebook/ads/redexgen/X/Dw;)V

    .line 59929
    :cond_d
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A07(Lcom/facebook/ads/redexgen/X/Vv;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59930
    .end local v0    # "trackIdCount":I
    .end local v0
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 59931
    .end local v2    # "i":I
    :cond_f
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A02(Lcom/facebook/ads/redexgen/X/Vv;)I

    move-result v0

    if-ne v0, v7, :cond_11

    .line 59932
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A0H(Lcom/facebook/ads/redexgen/X/Vv;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 59933
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A09(Lcom/facebook/ads/redexgen/X/Vv;)Lcom/facebook/ads/redexgen/X/Ce;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ce;->A5D()V

    .line 59934
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Vv;->A03(Lcom/facebook/ads/redexgen/X/Vv;I)I

    .line 59935
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Vv;->A0I(Lcom/facebook/ads/redexgen/X/Vv;Z)Z

    .line 59936
    :cond_10
    :goto_6
    return-void

    .line 59937
    :cond_11
    const/4 v0, 0x0

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Vv;->A07(Lcom/facebook/ads/redexgen/X/Vv;)Landroid/util/SparseArray;

    move-result-object v2

    iget v1, v4, Lcom/facebook/ads/redexgen/X/Vw;->A00:I

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 59938
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Vv;->A02(Lcom/facebook/ads/redexgen/X/Vv;)I

    move-result v2

    const/4 v1, 0x1

    if-ne v2, v1, :cond_12

    :goto_7
    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Vv;->A03(Lcom/facebook/ads/redexgen/X/Vv;I)I

    .line 59939
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A00(Lcom/facebook/ads/redexgen/X/Vv;)I

    move-result v0

    if-nez v0, :cond_10

    .line 59940
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A09(Lcom/facebook/ads/redexgen/X/Vv;)Lcom/facebook/ads/redexgen/X/Ce;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ce;->A5D()V

    .line 59941
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Vv;->A0I(Lcom/facebook/ads/redexgen/X/Vv;Z)Z

    goto :goto_6

    .line 59942
    :cond_12
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vw;->A04:Lcom/facebook/ads/redexgen/X/Vv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vv;->A00(Lcom/facebook/ads/redexgen/X/Vv;)I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_7
.end method

.method public final A8K(Lcom/facebook/ads/redexgen/X/Iv;Lcom/facebook/ads/redexgen/X/Ce;Lcom/facebook/ads/redexgen/X/Dw;)V
    .locals 0

    .line 59943
    return-void
.end method
