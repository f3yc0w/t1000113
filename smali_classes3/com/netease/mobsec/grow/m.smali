.class public Lcom/netease/mobsec/grow/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobsec/grow/m$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const-string v1, "\u030f\u02e5\u0378\u02b4\u0378\u0323"

    invoke-static {v0, v1}, Lcom/netease/mobsec/grow/m;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mobsec/grow/m;->a:Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    const-string v1, "\u029c\u025f\u02de\u035a\u02e6\u027a"

    invoke-static {v0, v1}, Lcom/netease/mobsec/grow/m;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mobsec/grow/m;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x800

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/netease/mobsec/grow/m;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void

    nop

    :array_0
    .array-data 2
        0xe5s
        0xa8s
        0x5bs
        0x6bs
        0xc8s
        0x40s
        0xbes
        0x18s
    .end array-data

    :array_1
    .array-data 2
        0x97s
        0xdbs
        0xa7s
        0x98s
        0x3as
        0xe6s
        0xads
        0x65s
        0xacs
        0x78s
        0x4bs
        0x36s
        0x16s
        0x8cs
        0x37s
    .end array-data
.end method

.method public static a(Landroid/content/Context;)Lcom/netease/mobsec/grow/m$a;
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p0}, Lcom/netease/mobsec/grow/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v1, Lcom/netease/mobsec/grow/o;

    invoke-direct {v1}, Lcom/netease/mobsec/grow/o;-><init>()V

    new-instance v2, Landroid/content/Intent;

    const/16 v3, 0x24

    new-array v3, v3, [C

    const/4 v4, 0x0

    const/16 v5, 0x23

    aput-char v5, v3, v4

    const/16 v4, 0xfa

    const/4 v6, 0x1

    aput-char v4, v3, v6

    const/4 v4, 0x2

    const/16 v7, 0xef

    aput-char v7, v3, v4

    const/4 v4, 0x3

    const/16 v7, 0x8f

    aput-char v7, v3, v4

    const/4 v4, 0x4

    const/16 v7, 0xa

    aput-char v7, v3, v4

    const/4 v4, 0x5

    const/16 v8, 0xe9

    aput-char v8, v3, v4

    const/4 v4, 0x6

    const/16 v8, 0xc3

    aput-char v8, v3, v4

    const/4 v4, 0x7

    const/16 v8, 0xa3

    aput-char v8, v3, v4

    const/16 v4, 0x8

    const/16 v8, 0x16

    aput-char v8, v3, v4

    const/16 v4, 0x9

    const/16 v9, 0x6f

    aput-char v9, v3, v4

    const/16 v4, 0x3b

    aput-char v4, v3, v7

    const/16 v4, 0xb

    const/16 v7, 0xb9

    aput-char v7, v3, v4

    const/16 v4, 0xc

    const/16 v7, 0xe3

    aput-char v7, v3, v4

    const/16 v4, 0xea

    const/16 v9, 0xd

    aput-char v4, v3, v9

    const/16 v10, 0xe

    const/16 v11, 0xae

    aput-char v11, v3, v10

    const/16 v10, 0xf

    const/16 v11, 0xd6

    aput-char v11, v3, v10

    const/16 v10, 0x10

    const/16 v11, 0xfb

    aput-char v11, v3, v10

    const/16 v10, 0x11

    const/16 v11, 0x76

    aput-char v11, v3, v10

    const/16 v10, 0x12

    const/16 v11, 0xe2

    aput-char v11, v3, v10

    const/16 v10, 0x13

    const/16 v12, 0xf5

    aput-char v12, v3, v10

    const/16 v10, 0x14

    const/16 v12, 0x7f

    aput-char v12, v3, v10

    const/16 v10, 0x15

    const/16 v12, 0x5b

    aput-char v12, v3, v10

    const/16 v10, 0x26

    aput-char v10, v3, v8

    const/16 v8, 0x17

    aput-char v11, v3, v8

    const/16 v8, 0x18

    const/16 v10, 0x84

    aput-char v10, v3, v8

    const/16 v8, 0x19

    const/16 v10, 0x57

    aput-char v10, v3, v8

    const/16 v8, 0x1a

    const/16 v10, 0xb2

    aput-char v10, v3, v8

    const/16 v8, 0x1b

    aput-char v7, v3, v8

    const/16 v7, 0x1c

    const/16 v8, 0x2d

    aput-char v8, v3, v7

    const/16 v7, 0x1d

    aput-char v9, v3, v7

    const/16 v7, 0x1e

    const/16 v8, 0x9f

    aput-char v8, v3, v7

    const/16 v7, 0x1f

    const/16 v8, 0x66

    aput-char v8, v3, v7

    const/16 v7, 0x20

    const/16 v8, 0x92

    aput-char v8, v3, v7

    const/16 v7, 0x21

    aput-char v4, v3, v7

    const/16 v4, 0x22

    const/16 v7, 0x56

    aput-char v7, v3, v4

    const/16 v4, 0x33

    aput-char v4, v3, v5

    const-string v4, "\u032a\u0347\u0382\u02e2\u0364\u036f"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/m;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/netease/mobsec/grow/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2, v1, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v1}, Lcom/netease/mobsec/grow/o;->a()Landroid/os/IBinder;

    move-result-object v2

    .line 1
    sget v3, Lcom/netease/mobsec/grow/d0$a;->a:I

    if-nez v2, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    const-string v3, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/netease/mobsec/grow/d0;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/netease/mobsec/grow/d0;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/netease/mobsec/grow/d0$a$a;

    invoke-direct {v3, v2}, Lcom/netease/mobsec/grow/d0$a$a;-><init>(Landroid/os/IBinder;)V

    .line 2
    :goto_0
    new-instance v2, Lcom/netease/mobsec/grow/m$a;

    invoke-interface {v3}, Lcom/netease/mobsec/grow/d0;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/netease/mobsec/grow/d0;->d()Z

    move-result v3

    invoke-direct {v2, v4, v3}, Lcom/netease/mobsec/grow/m$a;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_2
    :try_start_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_2
    :goto_1
    return-object v0
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

    add-int/lit16 v2, v2, 0xac

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x54

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
