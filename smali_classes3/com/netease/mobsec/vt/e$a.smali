.class public Lcom/netease/mobsec/vt/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobsec/vt/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/netease/mobsec/vt/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 8

    new-instance v0, Ljava/lang/Thread;

    const/16 v1, 0xc

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v2, v3

    const/16 v5, 0xff

    const-string v6, "\u0294\u0357\u031c\u02a3\u02ea\u033b"

    if-le v4, v5, :cond_0

    rem-int/lit8 v7, v3, 0x6

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    and-int/2addr v5, v6

    xor-int/2addr v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    goto :goto_1

    :cond_0
    shr-int/lit8 v7, v4, 0x1

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v4, v7

    and-int/2addr v4, v5

    add-int/2addr v4, v3

    and-int/2addr v4, v5

    xor-int/2addr v4, v3

    and-int/2addr v4, v5

    add-int/2addr v4, v1

    and-int/2addr v4, v5

    shr-int/lit8 v7, v4, 0x1

    and-int/2addr v7, v5

    shl-int/lit8 v4, v4, 0x7

    and-int/2addr v4, v5

    xor-int/2addr v4, v7

    and-int/2addr v4, v5

    add-int/lit16 v4, v4, -0xf4

    and-int/2addr v4, v5

    shr-int/lit8 v7, v4, 0x3

    and-int/2addr v7, v5

    shl-int/lit8 v4, v4, 0x5

    and-int/2addr v4, v5

    or-int/2addr v4, v7

    and-int/2addr v4, v5

    rem-int/lit8 v7, v3, 0x6

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    xor-int/2addr v4, v6

    and-int/2addr v4, v5

    and-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 2
        0x13s
        0xf7s
        0xf7s
        0xaas
        0x19s
        0xc0s
        0xafs
        0x68s
        0xe4s
        0x70s
        0xabs
        0x7fs
    .end array-data
.end method
