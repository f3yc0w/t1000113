.class public final Lcom/facebook/ads/redexgen/X/RM;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/RL;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/facebook/ads/redexgen/X/RN;",
        ">;"
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Ljava/lang/String;

.field public static final A08:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/8U;

.field public A01:Lcom/facebook/ads/redexgen/X/R1;

.field public A02:Lcom/facebook/ads/redexgen/X/RL;

.field public A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 51185
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iMGBqiSHm2uYyOurEO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JHkNge3qKUrOixxb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Efd0ZU7p6XsOViiGEn9FTnCEMV0phXsZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Qqux8MYyckh5CceEy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ksejtLtP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6qwv67"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yXEFufBpuo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JuPO8KFa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RM;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RM;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/RM;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/RM;->A07:Ljava/lang/String;

    .line 51186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/RM;->A08:Ljava/util/Set;

    .line 51187
    sget-object v3, Lcom/facebook/ads/redexgen/X/RM;->A08:Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51188
    sget-object v3, Lcom/facebook/ads/redexgen/X/RM;->A08:Ljava/util/Set;

    const/16 v2, 0x1d

    const/4 v1, 0x4

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51189
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8U;)V
    .locals 1

    .line 51190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/RM;-><init>(Lcom/facebook/ads/redexgen/X/8U;Ljava/util/Map;Ljava/util/Map;)V

    .line 51191
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8U;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8U;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51192
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/RM;-><init>(Lcom/facebook/ads/redexgen/X/8U;Ljava/util/Map;Ljava/util/Map;)V

    .line 51193
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8U;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/8U;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51194
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v0, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51195
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RM;->A00:Lcom/facebook/ads/redexgen/X/8U;

    .line 51196
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A03:Ljava/util/Map;

    .line 51197
    if-eqz p3, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :cond_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/RM;->A04:Ljava/util/Map;

    .line 51198
    return-void

    .line 51199
    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private final varargs A00([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/RN;
    .locals 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L0;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    return-object v5

    :cond_0
    move-object v4, p0

    .line 51200
    .local p0, "this":Lcom/facebook/ads/redexgen/X/RM;
    .local v0, "urls":[Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p1, v0

    .line 51201
    .local v0, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/facebook/ads/redexgen/X/RM;->A08:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 51202
    :cond_1
    invoke-direct {v4, v1}, Lcom/facebook/ads/redexgen/X/RM;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51203
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RM;->A03:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RM;->A03:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 51204
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RM;->A03:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51205
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/RM;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51206
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 51207
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/RM;
    :cond_2
    const/4 v2, 0x1

    .line 51208
    .local v5, "attempt":I
    :goto_1
    add-int/lit8 v1, v2, 0x1

    .end local v5    # "attempt":I
    .local v4, "attempt":I
    const/4 v0, 0x2

    if-gt v2, v0, :cond_4

    .line 51209
    invoke-direct {v4, v3}, Lcom/facebook/ads/redexgen/X/RM;->A06(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51210
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/RM;->A01:Lcom/facebook/ads/redexgen/X/R1;

    new-instance v0, Lcom/facebook/ads/redexgen/X/RN;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/RN;-><init>(Lcom/facebook/ads/redexgen/X/R1;)V

    goto :goto_2

    .line 51211
    :cond_3
    move v2, v1

    goto :goto_1

    .line 51212
    :goto_2
    return-object v0

    .line 51213
    :cond_4
    return-object v5

    .line 51214
    .end local v4    # "attempt":I
    :cond_5
    :goto_3
    return-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51215
    .end local v0    # "url":Ljava/lang/String;
    .end local v0
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/RM;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/RM;->A06:[Ljava/lang/String;

    const-string v1, "dO3qGWbyMuVAZQTwO1X30zVxIjEEo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/L0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v5

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/RM;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 51216
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A00:Lcom/facebook/ads/redexgen/X/8U;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8U;->A02()Lcom/facebook/ads/redexgen/X/8X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8X;->A5i()Ljava/util/Map;

    move-result-object v3

    .line 51217
    .local p0, "analogData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v2, 0x17

    const/4 v1, 0x6

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RM;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Lx;->A01(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/RM;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51218
    .end local p0    # "analogData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p0, "ex":Ljava/lang/Exception;
    :catch_0
    return-object p1
.end method

.method private A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 51219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51220
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/RM;
    :cond_0
    return-object p1

    .line 51221
    :cond_1
    const/4 v2, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RM;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RM;->A01(III)Ljava/lang/String;

    move-result-object v1

    .line 51222
    .local p0, "prepend":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/RM;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x0t
        0x3t
        0x39t
        0x21t
        0x16t
        0x16t
        0xbt
        0x16t
        0x44t
        0xbt
        0x14t
        0x1t
        0xat
        0xdt
        0xat
        0x3t
        0x44t
        0x11t
        0x16t
        0x8t
        0x5et
        0x44t
        0x7at
        0x75t
        0x7at
        0x77t
        0x74t
        0x7ct
        0x2ct
        0x37t
        0x2et
        0x2et
    .end array-data
.end method

.method private final A05(Lcom/facebook/ads/redexgen/X/RN;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 51223
    .local p0, "this":Lcom/facebook/ads/redexgen/X/RM;
    .local v1, "response":Lcom/facebook/ads/redexgen/X/RN;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/RM;->A02:Lcom/facebook/ads/redexgen/X/RL;

    if-eqz v0, :cond_1

    .line 51224
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/RM;->A02:Lcom/facebook/ads/redexgen/X/RL;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/RL;->ADO(Lcom/facebook/ads/redexgen/X/RN;)V

    .line 51225
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/RM;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "response":Lcom/facebook/ads/redexgen/X/RN;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/L0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private A06(Ljava/lang/String;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 51226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A00:Lcom/facebook/ads/redexgen/X/8U;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/RK;->A00(Lcom/facebook/ads/redexgen/X/8U;)Lcom/facebook/ads/redexgen/X/R2;

    move-result-object v2

    .line 51227
    .local p0, "networkModule":Lcom/facebook/ads/redexgen/X/R2;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A04:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A04:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 51228
    .end local p1    # null:Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/RG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/RG;-><init>()V

    .line 51229
    invoke-interface {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/R2;->ADA(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/R1;

    move-result-object v0

    .line 51230
    .restart local p1    # null:Ljava/lang/String;
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A01:Lcom/facebook/ads/redexgen/X/R1;

    goto :goto_1

    .line 51231
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/RG;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/RG;-><init>()V

    .line 51232
    .local p1, "params":Lcom/facebook/ads/redexgen/X/RG;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A04:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RG;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/RG;

    .line 51233
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/RG;->A08()[B

    move-result-object v0

    invoke-interface {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/R2;->ADB(Ljava/lang/String;[B)Lcom/facebook/ads/redexgen/X/R1;

    move-result-object v0

    .local p1, "response":Lcom/facebook/ads/redexgen/X/R1;
    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51234
    :catch_0
    move-exception v5

    .line 51235
    .local p1, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/facebook/ads/redexgen/X/RM;->A07:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const/16 v1, 0x13

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RM;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51236
    .end local p1    # "ex":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A01:Lcom/facebook/ads/redexgen/X/R1;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/R1;->A7a()I

    move-result v1

    const/16 v0, 0xc8

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final A07(Lcom/facebook/ads/redexgen/X/RL;)V
    .locals 0

    .line 51237
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RM;->A02:Lcom/facebook/ads/redexgen/X/RL;

    .line 51238
    return-void
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L0;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object v1, p0

    .line 51239
    .local p0, "this":Lcom/facebook/ads/redexgen/X/RM;
    :try_start_0
    check-cast p1, [Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/RM;->A00([Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/RN;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/RM;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/L0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final onCancelled()V
    .locals 1

    .line 51240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RM;->A02:Lcom/facebook/ads/redexgen/X/RL;

    if-eqz v0, :cond_0

    .line 51241
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/RL;->ADM()V

    .line 51242
    :cond_0
    return-void
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/L0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 51243
    .local p0, "this":Lcom/facebook/ads/redexgen/X/RM;
    :try_start_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/RN;

    invoke-direct {v4, p1}, Lcom/facebook/ads/redexgen/X/RM;->A05(Lcom/facebook/ads/redexgen/X/RN;)V

    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/RM;
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/RM;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/RM;->A06:[Ljava/lang/String;

    const-string v1, "KahWFkeddZk466vYoInqTxrEqXEaISmf"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/L0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
