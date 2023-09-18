.class public Lcom/netease/mobsec/grow/h;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;J)Lcom/netease/mobsec/grow/j;
    .locals 23

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_2

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x13

    new-array v3, v2, [C

    const/16 v4, 0x49

    const/4 v5, 0x0

    aput-char v4, v3, v5

    const/16 v4, 0xb8

    const/4 v6, 0x1

    aput-char v4, v3, v6

    const/16 v4, 0xe6

    const/4 v7, 0x2

    aput-char v4, v3, v7

    const/16 v4, 0x86

    const/4 v8, 0x3

    aput-char v4, v3, v8

    const/16 v9, 0x79

    const/4 v10, 0x4

    aput-char v9, v3, v10

    const/16 v9, 0xa3

    const/4 v11, 0x5

    aput-char v9, v3, v11

    const/16 v12, 0xde

    const/4 v13, 0x6

    aput-char v12, v3, v13

    const/16 v14, 0x4a

    const/4 v15, 0x7

    aput-char v14, v3, v15

    const/16 v14, 0xae

    const/16 v16, 0x8

    aput-char v14, v3, v16

    const/16 v14, 0x9f

    const/16 v17, 0x9

    aput-char v14, v3, v17

    const/16 v14, 0xa

    aput-char v12, v3, v14

    const/16 v12, 0xb

    aput-char v9, v3, v12

    const/16 v9, 0x98

    const/16 v18, 0xc

    aput-char v9, v3, v18

    const/16 v9, 0xc9

    const/16 v19, 0xd

    aput-char v9, v3, v19

    const/16 v9, 0xb6

    const/16 v20, 0xe

    aput-char v9, v3, v20

    const/16 v9, 0x3d

    const/16 v21, 0xf

    aput-char v9, v3, v21

    const/16 v9, 0x10

    aput-char v4, v3, v9

    const/16 v4, 0x11

    const/16 v22, 0x63

    aput-char v22, v3, v4

    const/16 v4, 0x12

    const/16 v22, 0xbe

    aput-char v22, v3, v4

    const-string v4, "\u025e\u02c7\u0317\u0279\u025e\u035e"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/h;->l([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    and-int/2addr v0, v6

    if-eqz v0, :cond_1

    new-instance v2, Lcom/netease/mobsec/grow/i;

    move-wide/from16 v3, p1

    invoke-direct {v2, v3, v4}, Lcom/netease/mobsec/grow/i;-><init>(J)V

    new-instance v0, Landroid/content/Intent;

    const/16 v3, 0x33

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    const-string v4, "\u0347\u036d\u02ec\u029c\u028c\u0283"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/h;->l([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x16

    new-array v3, v3, [C

    fill-array-data v3, :array_1

    const-string v4, "\u026d\u031f\u02f3\u02cf\u02f1\u0300"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/h;->l([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0, v2, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/netease/mobsec/grow/k;

    invoke-virtual {v2}, Lcom/netease/mobsec/grow/i;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/netease/mobsec/grow/k;-><init>(Landroid/os/IBinder;)V

    new-instance v3, Lcom/netease/mobsec/grow/j;

    invoke-virtual {v0}, Lcom/netease/mobsec/grow/k;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6}, Lcom/netease/mobsec/grow/k;->a(Z)Z

    move-result v0

    invoke-direct {v3, v4, v0}, Lcom/netease/mobsec/grow/j;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x1d

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    const-string v2, "\u02f0\u036d\u035a\u02c9\u02e5\u02c1"

    invoke-static {v1, v2}, Lcom/netease/mobsec/grow/h;->l([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x26

    new-array v1, v1, [C

    const/16 v3, 0xc3

    aput-char v3, v1, v5

    const/16 v3, 0x19

    aput-char v3, v1, v6

    const/16 v4, 0xbf

    aput-char v4, v1, v7

    const/16 v4, 0x32

    aput-char v4, v1, v8

    const/16 v4, 0x62

    aput-char v4, v1, v10

    const/16 v4, 0xfd

    aput-char v4, v1, v11

    const/16 v4, 0x56

    aput-char v4, v1, v13

    const/16 v4, 0x2e

    aput-char v4, v1, v15

    const/16 v4, 0xe7

    aput-char v4, v1, v16

    const/16 v4, 0xdb

    aput-char v4, v1, v17

    const/16 v4, 0xfd

    aput-char v4, v1, v14

    const/16 v4, 0x5c

    aput-char v4, v1, v12

    const/16 v4, 0x44

    aput-char v4, v1, v18

    const/16 v4, 0xa9

    aput-char v4, v1, v19

    aput-char v3, v1, v20

    const/16 v4, 0x60

    aput-char v4, v1, v21

    aput-char v7, v1, v9

    const/16 v4, 0x11

    const/16 v5, 0x4c

    aput-char v5, v1, v4

    const/16 v4, 0x12

    const/16 v5, 0xff

    aput-char v5, v1, v4

    const/16 v4, 0x8a

    aput-char v4, v1, v2

    const/16 v2, 0x14

    const/16 v4, 0x31

    aput-char v4, v1, v2

    const/16 v2, 0x15

    const/16 v4, 0xaa

    aput-char v4, v1, v2

    const/16 v2, 0x16

    const/16 v4, 0xbc

    aput-char v4, v1, v2

    const/16 v2, 0x17

    const/16 v4, 0x1c

    aput-char v4, v1, v2

    const/16 v2, 0x18

    const/16 v4, 0x66

    aput-char v4, v1, v2

    const/16 v2, 0xf8

    aput-char v2, v1, v3

    const/16 v2, 0x1a

    const/16 v3, 0xa8

    aput-char v3, v1, v2

    const/16 v2, 0x1b

    const/16 v3, 0xeb

    aput-char v3, v1, v2

    const/16 v2, 0x1c

    const/16 v3, 0xc4

    aput-char v3, v1, v2

    const/16 v2, 0x1d

    const/16 v3, 0x7d

    aput-char v3, v1, v2

    const/16 v2, 0x1e

    const/16 v3, 0x38

    aput-char v3, v1, v2

    const/16 v2, 0x1f

    const/16 v3, 0x4b

    aput-char v3, v1, v2

    const/16 v2, 0x20

    aput-char v15, v1, v2

    const/16 v2, 0x21

    const/16 v3, 0x81

    aput-char v3, v1, v2

    const/16 v2, 0x22

    const/16 v3, 0x6a

    aput-char v3, v1, v2

    const/16 v2, 0x23

    const/16 v3, 0x84

    aput-char v3, v1, v2

    const/16 v2, 0x24

    const/16 v3, 0xd9

    aput-char v3, v1, v2

    const/16 v2, 0x25

    const/16 v3, 0x32

    aput-char v3, v1, v2

    const-string v2, "\u0356\u02c4\u035e\u0293\u027a\u0326"

    invoke-static {v1, v2}, Lcom/netease/mobsec/grow/h;->l([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    const-string v2, "\u0337\u027d\u0376\u0322\u02d0\u02ec"

    invoke-static {v1, v2}, Lcom/netease/mobsec/grow/h;->l([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 2
        0x28s
        0xe5s
        0xcds
        0xebs
        0x21s
        0x2bs
        0x98s
        0xdcs
        0x95s
        0xbas
        0xd9s
        0x0s
        0xb8s
        0xc4s
        0x4ds
        0xe3s
        0x20s
        0x60s
        0xd0s
        0x9cs
        0xd5s
        0x8bs
        0xa9s
        0x0s
        0x8s
        0x25s
        0x95s
        0x32s
        0xc0s
        0x80s
        0xb8s
        0xbes
        0xd5s
        0x7as
        0xe1s
        0x80s
        0xc7s
        0xfds
        0x8ds
        0x42s
        0x81s
        0xbbs
        0xdes
        0xdes
        0x34s
        0x53s
        0x65s
        0x66s
        0xa5s
        0x89s
        0x6es
    .end array-data

    nop

    :array_1
    .array-data 2
        0x63s
        0xabs
        0x6ds
        0xe1s
        0x72s
        0x7bs
        0xdds
        0x92s
        0x75s
        0xd8s
        0x75s
        0xb1s
        0x4s
        0xfas
        0xads
        0x89s
        0x72s
        0xf1s
        0x4s
        0x62s
        0x35s
        0xe8s
    .end array-data

    :array_2
    .array-data 2
        0x96s
        0xe5s
        0x3es
        0x6bs
        0xd4s
        0x28s
        0xabs
        0x39s
        0x66s
        0x98s
        0x13s
        0xe1s
        0xf3s
        0xe5s
        0x1es
        0x68s
        0x75s
        0xb9s
        0xeds
        0xdds
        0x46s
        0x88s
        0x44s
        0x88s
        0xb3s
        0xe5s
        0x1es
        0xcas
        0xb5s
    .end array-data

    nop

    :array_3
    .array-data 2
        0xafs
        0xdfs
        0xc2s
        0x44s
        0x29s
        0xd4s
        0x82s
        0x3bs
        0xe2s
        0xcs
        0xb8s
        0x17s
        0x10s
        0x9es
        0x1cs
        0x16s
        0xd6s
        0x8fs
        0xabs
        0x1fs
        0x1as
        0xfcs
        0x29s
        0xacs
        0x6as
        0x4ds
        0x42s
        0x4s
        0x9s
        0xecs
        0xf5s
        0x35s
        0x22s
        0x8cs
        0xb7s
        0xces
        0x1as
        0xe4s
        0x2s
        0x37s
        0xf9s
        0x34s
        0xas
        0xc4s
        0xa3s
        0x97s
        0x69s
        0x2ds
        0x82s
        0x44s
        0x9cs
        0x84s
        0x6fs
        0x55s
        0x9bs
        0xdfs
        0x62s
        0x25s
        0xd9s
        0xcds
        0xbds
        0x5es
        0x82s
        0x95s
    .end array-data
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0xf

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    const-string v2, "\u02c3\u02dc\u02c2\u02e6\u032e\u029a"

    invoke-static {v1, v2}, Lcom/netease/mobsec/grow/m;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/mobsec/grow/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array p0, v0, [C

    fill-array-data p0, :array_1

    const-string v0, "\u02a2\u031a\u0356\u02b5\u0345\u0370"

    invoke-static {p0, v0}, Lcom/netease/mobsec/grow/m;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    new-array v2, v1, [C

    fill-array-data v2, :array_2

    const-string v3, "\u02a9\u0332\u02b5\u0381\u02ee\u029b"

    invoke-static {v2, v3}, Lcom/netease/mobsec/grow/m;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/mobsec/grow/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-array p0, v1, [C

    fill-array-data p0, :array_3

    const-string v0, "\u02d3\u02d8\u030a\u030a\u0346\u02ba"

    invoke-static {p0, v0}, Lcom/netease/mobsec/grow/m;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    new-array v2, v1, [C

    fill-array-data v2, :array_4

    const-string v3, "\u0310\u0277\u02f7\u02ab\u029c\u02e0"

    invoke-static {v2, v3}, Lcom/netease/mobsec/grow/m;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/netease/mobsec/grow/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-array p0, v1, [C

    fill-array-data p0, :array_5

    const-string v0, "\u0320\u02d2\u0340\u025f\u036f\u031b"

    invoke-static {p0, v0}, Lcom/netease/mobsec/grow/m;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-array p0, v0, [C

    fill-array-data p0, :array_6

    const-string v0, "\u0292\u02ce\u032a\u02fc\u0358\u02f8"

    invoke-static {p0, v0}, Lcom/netease/mobsec/grow/m;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :array_0
    .array-data 2
        0xcs
        0x6as
        0xe7s
        0xfs
        0xc2s
        0xf3s
        0x34s
        0x53s
        0xees
        0xe7s
        0xd9s
        0x2as
        0x7es
        0x9cs
        0xb6s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0xa2s
        0x55s
        0x69s
        0x8fs
        0x88s
        0x70s
        0x9bs
        0x3es
        0x71s
        0x5fs
        0xd8s
        0x90s
        0x62s
        0x6s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x53s
        0xa1s
        0x11s
        0xe3s
        0xbas
        0xd3s
        0x13s
        0xa0s
        0xf3s
        0xf2s
        0xf1s
        0x4as
        0x70s
        0x20s
    .end array-data

    :array_3
    .array-data 2
        0xes
        0xecs
        0xdes
        0x74s
        0xafs
        0xefs
        0x36s
        0xd3s
        0xe7s
        0x64s
        0xfes
        0x2es
        0xbds
        0x5bs
    .end array-data

    :array_4
    .array-data 2
        0x66s
        0xf8s
        0x49s
        0xa6s
        0x96s
        0x98s
        0x1es
        0xe9s
        0x4as
        0x30s
        0x46s
        0x7s
        0xe6s
        0x89s
        0x5as
        0x96s
        0x17s
        0xc8s
    .end array-data

    :array_5
    .array-data 2
        0x60s
        0xads
        0x97s
        0x1as
        0xcas
        0xc3s
        0x20s
        0x92s
        0x7cs
        0x9cs
        0x20s
        0x5as
        0xe0s
        0x5ds
        0x44s
        0x1as
        0x59s
        0x63s
    .end array-data

    :array_6
    .array-data 2
        0x36s
        0x2cs
        0xe2s
        0x4es
        0xefs
        0x97s
        0x6es
        0x15s
        0xe3s
        0xa8s
        0xbcs
        0x6s
        0x96s
        0xdas
        0xc3s
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

    add-int/lit16 v2, v2, 0xe1

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1f

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

.method public static varargs a([Ljava/io/Closeable;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const v1, 0x186a0

    .line 3
    rem-int/2addr v0, v1

    const v1, 0x182b8

    if-lt v0, v1, :cond_0

    const v1, 0x1869f

    if-le v0, v1, :cond_1

    :cond_0
    const v1, 0x15f90

    if-lt v0, v1, :cond_2

    const v1, 0x182b7

    if-gt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v4, v3, [B

    :goto_0
    invoke-virtual {p0, v4, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v2, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/netease/mobsec/grow/h;->a([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/netease/mobsec/grow/h;->a([Ljava/io/Closeable;)V

    throw v2

    :catch_0
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/netease/mobsec/grow/h;->a([Ljava/io/Closeable;)V

    const/4 v2, 0x0

    .line 2
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [C

    const/16 v4, 0x54

    const/4 v5, 0x0

    aput-char v4, v3, v5

    const/16 v6, 0x2f

    const/4 v7, 0x1

    aput-char v6, v3, v7

    const/16 v6, 0x55

    const/4 v8, 0x2

    aput-char v6, v3, v8

    const/16 v6, 0x4c

    const/4 v9, 0x3

    aput-char v6, v3, v9

    const-string v6, "\u0326\u0351\u02e8\u032d\u0363\u0329"

    invoke-static {v3, v6}, Lcom/netease/mobsec/grow/h;->p([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v6, 0x20

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_0

    return-object v1

    :cond_0
    const/16 v1, 0xe

    new-array v1, v1, [C

    const/16 v3, 0x12

    aput-char v3, v1, v5

    const/16 v3, 0x80

    aput-char v3, v1, v7

    const/16 v3, 0x43

    aput-char v3, v1, v8

    aput-char v4, v1, v9

    const/16 v3, 0xa1

    aput-char v3, v1, v2

    const/16 v3, 0x8f

    const/4 v4, 0x5

    aput-char v3, v1, v4

    const/16 v3, 0x92

    const/4 v10, 0x6

    aput-char v3, v1, v10

    const/16 v3, 0xde

    const/4 v11, 0x7

    aput-char v3, v1, v11

    const/16 v3, 0x8

    aput-char v8, v1, v3

    const/16 v3, 0x9

    const/16 v12, 0x3d

    aput-char v12, v1, v3

    const/16 v3, 0xa

    const/16 v12, 0xd6

    aput-char v12, v1, v3

    const/16 v3, 0xb

    const/16 v12, 0x10

    aput-char v12, v1, v3

    const/16 v3, 0xc

    const/16 v12, 0xb0

    aput-char v12, v1, v3

    const/16 v3, 0xd

    aput-char v7, v1, v3

    const-string v3, "\u0358\u02cc\u02c5\u02e4\u02fc\u025e"

    invoke-static {v1, v3}, Lcom/netease/mobsec/grow/h;->p([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v3, v11, [C

    const/16 v11, 0x2d

    aput-char v11, v3, v5

    const/16 v11, 0xab

    aput-char v11, v3, v7

    const/16 v7, 0xaf

    aput-char v7, v3, v8

    const/16 v7, 0x7d

    aput-char v7, v3, v9

    const/16 v7, 0xc9

    aput-char v7, v3, v2

    const/16 v2, 0x48

    aput-char v2, v3, v4

    const/16 v2, 0x75

    aput-char v2, v3, v10

    const-string v2, "\u0267\u0371\u0320\u028d\u0304\u0300"

    invoke-static {v3, v2}, Lcom/netease/mobsec/grow/h;->p([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v6, :cond_2

    goto :goto_0

    :cond_2
    return-object p0

    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static b([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit8 v2, v2, 0x61

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x9f

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

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 26

    const/16 v0, 0x22

    new-array v1, v0, [C

    .line 1
    fill-array-data v1, :array_0

    const-string v2, "\u0350\u0364\u0265\u0308\u0260\u0370"

    invoke-static {v1, v2}, Lcom/netease/mobsec/grow/h;->d([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [C

    const/4 v4, 0x0

    const/16 v5, 0xf

    aput-char v5, v3, v4

    const-string v6, "\u0369\u0331\u025e\u027a\u0267\u0316"

    invoke-static {v3, v6}, Lcom/netease/mobsec/grow/h;->d([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0xd

    const/16 v9, 0x27

    const/16 v10, 0x9

    const/16 v11, 0x1c

    const/4 v12, 0x4

    const/16 v13, 0x26

    const/16 v14, 0x1b

    const/16 v15, 0xa

    const/16 v16, 0x8

    const/16 v17, 0x10

    const/4 v0, 0x5

    const/4 v6, 0x3

    const/16 v20, 0xc

    const/4 v5, 0x2

    :try_start_0
    new-array v7, v14, [C

    aput-char v13, v7, v4

    const/16 v23, 0xe9

    aput-char v23, v7, v2

    aput-char v14, v7, v5

    const/16 v23, 0x74

    aput-char v23, v7, v6

    const/16 v23, 0x3c

    aput-char v23, v7, v12

    aput-char v17, v7, v0

    const/16 v23, 0x6

    const/16 v24, 0xb8

    aput-char v24, v7, v23

    const/16 v23, 0x7

    const/16 v24, 0xf1

    aput-char v24, v7, v23

    aput-char v11, v7, v16

    const/16 v23, 0x7c

    aput-char v23, v7, v10

    aput-char v20, v7, v15

    const/16 v23, 0xb

    const/16 v24, 0x2d

    aput-char v24, v7, v23

    aput-char v9, v7, v20

    const/16 v23, 0x79

    aput-char v23, v7, v8

    const/16 v23, 0xe4

    const/16 v22, 0xe

    aput-char v23, v7, v22

    const/16 v21, 0xf

    aput-char v13, v7, v21

    aput-char v20, v7, v17

    const/16 v23, 0x11

    const/16 v24, 0xb4

    aput-char v24, v7, v23

    const/16 v23, 0x12

    aput-char v16, v7, v23

    const/16 v23, 0x13

    aput-char v16, v7, v23

    const/16 v23, 0x14

    const/16 v24, 0x8d

    aput-char v24, v7, v23

    const/16 v23, 0x15

    const/16 v24, 0x46

    aput-char v24, v7, v23

    const/16 v23, 0x16

    const/16 v24, 0x55

    aput-char v24, v7, v23

    const/16 v23, 0x17

    const/16 v24, 0x31

    aput-char v24, v7, v23

    const/16 v23, 0x18

    const/16 v24, 0xe8

    aput-char v24, v7, v23

    const/16 v23, 0x43

    const/16 v19, 0x19

    aput-char v23, v7, v19

    const/16 v23, 0x1a

    const/16 v24, 0x55

    aput-char v24, v7, v23

    const-string v13, "\u0263\u027e\u02dd\u02c6\u035c\u0338"

    .line 2
    invoke-static {v7, v13}, Lcom/netease/mobsec/grow/h;->d([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    new-array v13, v6, [C

    const/16 v24, 0x48

    aput-char v24, v13, v4

    const/16 v24, 0x3e

    aput-char v24, v13, v2

    const/16 v24, 0x48

    aput-char v24, v13, v5

    const-string v11, "\u0374\u0287\u0267\u02bf\u027c\u030f"

    invoke-static {v13, v11}, Lcom/netease/mobsec/grow/h;->d([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-array v13, v5, [Ljava/lang/Class;

    const-class v25, Ljava/lang/String;

    aput-object v25, v13, v4

    const-class v25, Ljava/lang/String;

    aput-object v25, v13, v2

    invoke-virtual {v7, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v1, v13, v4

    aput-object v3, v13, v2

    invoke-virtual {v11, v7, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    new-array v1, v2, [C

    const/16 v7, 0x5b

    aput-char v7, v1, v4

    const-string v7, "\u028a\u0294\u0310\u025c\u02b0\u0349"

    .line 3
    invoke-static {v1, v7}, Lcom/netease/mobsec/grow/h;->d([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    const/16 v1, 0x33

    :try_start_1
    new-array v1, v1, [C

    const/16 v7, 0xb0

    aput-char v7, v1, v4

    const/16 v7, 0x1f

    aput-char v7, v1, v2

    const/16 v11, 0x47

    aput-char v11, v1, v5

    const/16 v11, 0xc1

    aput-char v11, v1, v6

    const/16 v11, 0x67

    aput-char v11, v1, v12

    const/16 v11, 0x49

    aput-char v11, v1, v0

    const/4 v11, 0x6

    aput-char v17, v1, v11

    const/4 v11, 0x7

    const/16 v13, 0x65

    aput-char v13, v1, v11

    aput-char v9, v1, v16

    const/16 v11, 0x78

    aput-char v11, v1, v10

    aput-char v7, v1, v15

    const/16 v11, 0xb

    const/16 v13, 0x19

    aput-char v13, v1, v11

    const/16 v11, 0xd0

    aput-char v11, v1, v20

    const/16 v11, 0xc6

    aput-char v11, v1, v8

    const/16 v11, 0x36

    const/16 v13, 0xe

    aput-char v11, v1, v13

    const/16 v11, 0x60

    const/16 v13, 0xf

    aput-char v11, v1, v13

    const/16 v11, 0xc9

    aput-char v11, v1, v17

    const/16 v11, 0x11

    const/16 v13, 0xf8

    aput-char v13, v1, v11

    const/16 v11, 0x12

    const/16 v13, 0x49

    aput-char v13, v1, v11

    const/16 v11, 0x13

    const/16 v13, 0xff

    aput-char v13, v1, v11

    const/16 v11, 0x14

    const/16 v13, 0x9e

    aput-char v13, v1, v11

    const/16 v11, 0x15

    const/16 v13, 0xe0

    aput-char v13, v1, v11

    const/16 v11, 0x16

    const/16 v13, 0xb6

    aput-char v13, v1, v11

    const/16 v11, 0x17

    const/16 v13, 0x25

    aput-char v13, v1, v11

    const/16 v11, 0x18

    const/16 v13, 0xe

    aput-char v13, v1, v11

    const/16 v11, 0xc0

    const/16 v13, 0x19

    aput-char v11, v1, v13

    const/16 v11, 0x1a

    const/16 v13, 0xb0

    aput-char v13, v1, v11

    const/16 v11, 0x60

    aput-char v11, v1, v14

    const/16 v11, 0xb9

    const/16 v13, 0x1c

    aput-char v11, v1, v13

    const/16 v11, 0x1d

    aput-char v10, v1, v11

    const/16 v10, 0x1e

    const/16 v11, 0xf7

    aput-char v11, v1, v10

    aput-char v13, v1, v7

    const/16 v7, 0x20

    const/16 v10, 0x50

    aput-char v10, v1, v7

    const/16 v7, 0x21

    const/16 v10, 0x98

    aput-char v10, v1, v7

    const/16 v7, 0x65

    const/16 v10, 0x22

    aput-char v7, v1, v10

    const/16 v7, 0x23

    aput-char v15, v1, v7

    const/16 v7, 0x24

    const/16 v10, 0x5f

    aput-char v10, v1, v7

    const/16 v7, 0x25

    const/16 v10, 0xfe

    aput-char v10, v1, v7

    const/16 v7, 0xf7

    const/16 v10, 0x26

    aput-char v7, v1, v10

    const/16 v7, 0xe1

    aput-char v7, v1, v9

    const/16 v7, 0x28

    const/16 v9, 0x47

    aput-char v9, v1, v7

    const/16 v7, 0x29

    const/16 v9, 0xd8

    aput-char v9, v1, v7

    const/16 v7, 0x2a

    const/16 v9, 0x67

    aput-char v9, v1, v7

    const/16 v7, 0x2b

    const/16 v9, 0x7e

    aput-char v9, v1, v7

    const/16 v7, 0x2c

    const/16 v9, 0xd2

    aput-char v9, v1, v7

    const/16 v7, 0x2d

    const/16 v9, 0x8b

    aput-char v9, v1, v7

    const/16 v7, 0x2e

    const/16 v9, 0x96

    aput-char v9, v1, v7

    const/16 v7, 0x2f

    aput-char v0, v1, v7

    const/16 v7, 0x30

    const/16 v9, 0xb3

    aput-char v9, v1, v7

    const/16 v7, 0x31

    const/16 v9, 0x5b

    aput-char v9, v1, v7

    const/16 v7, 0x32

    aput-char v20, v1, v7

    const-string v7, "\u0325\u0296\u0335\u02ba\u0279\u02e5"

    .line 4
    invoke-static {v1, v7}, Lcom/netease/mobsec/grow/h;->d([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_2

    return-object v3

    :cond_2
    new-array v0, v0, [C

    const/16 v7, 0x20

    aput-char v7, v0, v4

    aput-char v8, v0, v2

    const/16 v2, 0xaf

    aput-char v2, v0, v5

    aput-char v15, v0, v6

    const/16 v2, 0xfc

    aput-char v2, v0, v12

    const-string v2, "\u02a7\u0348\u02f2\u02f4\u034c\u02ef"

    invoke-static {v0, v2}, Lcom/netease/mobsec/grow/h;->d([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v1, :cond_3

    return-object v0

    :catch_1
    :cond_3
    return-object v3

    nop

    :array_0
    .array-data 2
        0xebs
        0x2s
        0xbes
        0x4fs
        0xf8s
        0x42s
        0x5as
        0x31s
        0xa6s
        0xf5s
        0x48s
        0xa3s
        0xfas
        0xe3s
        0xdfs
        0x8cs
        0x28s
        0x3s
        0x6as
        0x89s
        0xa7s
        0xees
        0xf8s
        0x18s
        0x53s
        0xc2s
        0xa9s
        0x8es
        0x99s
        0xc3s
        0xdbs
        0x99s
        0x67s
        0xf4s
    .end array-data
.end method

.method public static c([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit16 v2, v2, 0x8e

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x72

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

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 15

    const/16 v0, 0x22

    :try_start_0
    new-array v0, v0, [C

    const/16 v1, 0xc7

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/16 v1, 0xec

    const/4 v3, 0x1

    aput-char v1, v0, v3

    const/16 v1, 0xe5

    const/4 v4, 0x2

    aput-char v1, v0, v4

    const/16 v1, 0xbe

    const/4 v5, 0x3

    aput-char v1, v0, v5

    const/16 v1, 0xd5

    const/4 v6, 0x4

    aput-char v1, v0, v6

    const/4 v1, 0x5

    aput-char v5, v0, v1

    const/16 v7, 0x5f

    const/4 v8, 0x6

    aput-char v7, v0, v8

    const/16 v7, 0x73

    const/4 v9, 0x7

    aput-char v7, v0, v9

    const/16 v7, 0x8

    const/16 v10, 0xad

    aput-char v10, v0, v7

    const/16 v7, 0x9

    const/16 v10, 0x76

    aput-char v10, v0, v7

    const/16 v7, 0xa

    const/16 v11, 0xd

    aput-char v11, v0, v7

    const/16 v7, 0xb

    aput-char v5, v0, v7

    const/16 v7, 0xc

    aput-char v9, v0, v7

    const/16 v12, 0xbd

    aput-char v12, v0, v11

    const/16 v11, 0xe

    aput-char v12, v0, v11

    const/16 v11, 0xf

    const/16 v12, 0x66

    aput-char v12, v0, v11

    const/16 v11, 0x10

    const/16 v12, 0x54

    aput-char v12, v0, v11

    const/16 v11, 0x11

    const/16 v13, 0x45

    aput-char v13, v0, v11

    const/16 v11, 0x12

    const/16 v13, 0x1e

    aput-char v13, v0, v11

    const/16 v11, 0x13

    const/16 v14, 0xfc

    aput-char v14, v0, v11

    const/16 v11, 0x14

    const/16 v14, 0x31

    aput-char v14, v0, v11

    const/16 v11, 0x15

    const/16 v14, 0xa7

    aput-char v14, v0, v11

    const/16 v11, 0x16

    const/16 v14, 0x6b

    aput-char v14, v0, v11

    const/16 v11, 0x17

    const/16 v14, 0x7d

    aput-char v14, v0, v11

    const/16 v11, 0x18

    const/16 v14, 0x46

    aput-char v14, v0, v11

    const/16 v11, 0x19

    aput-char v7, v0, v11

    const/16 v7, 0x1a

    const/16 v11, 0x25

    aput-char v11, v0, v7

    const/16 v7, 0x1b

    const/16 v11, 0x97

    aput-char v11, v0, v7

    const/16 v7, 0x35

    const/16 v11, 0x1c

    aput-char v7, v0, v11

    const/16 v7, 0x1d

    const/16 v14, 0x85

    aput-char v14, v0, v7

    const/16 v7, 0xfa

    aput-char v7, v0, v13

    const/16 v7, 0x1f

    aput-char v12, v0, v7

    const/16 v7, 0x20

    const/16 v12, 0x8e

    aput-char v12, v0, v7

    const/16 v7, 0x21

    aput-char v10, v0, v7

    const-string v7, "\u027e\u0329\u0323\u02da\u02ec\u0279"

    invoke-static {v0, v7}, Lcom/netease/mobsec/grow/h;->q([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    new-array v9, v9, [C

    const/16 v10, 0x63

    aput-char v10, v9, v2

    const/16 v10, 0x53

    aput-char v10, v9, v3

    const/16 v10, 0xf7

    aput-char v10, v9, v4

    const/16 v4, 0x93

    aput-char v4, v9, v5

    const/16 v4, 0xf8

    aput-char v4, v9, v6

    aput-char v11, v9, v1

    const/16 v1, 0x67

    aput-char v1, v9, v8

    const-string v1, "\u029e\u02fc\u02aa\u0294\u0266\u0309"

    invoke-static {v9, v1}, Lcom/netease/mobsec/grow/h;->q([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {v0, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit16 v2, v2, 0xaf

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x51

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

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 16

    const/16 v0, 0x24

    :try_start_0
    new-array v1, v0, [C

    const/16 v2, 0xef

    const/4 v3, 0x0

    aput-char v2, v1, v3

    const/16 v2, 0xfd

    const/4 v4, 0x1

    aput-char v2, v1, v4

    const/16 v5, 0x2b

    const/4 v6, 0x2

    aput-char v5, v1, v6

    const/16 v5, 0xe3

    const/4 v7, 0x3

    aput-char v5, v1, v7

    const/16 v5, 0xa

    const/4 v8, 0x4

    aput-char v5, v1, v8

    const/16 v9, 0x75

    const/4 v10, 0x5

    aput-char v9, v1, v10

    const/16 v9, 0x76

    const/4 v11, 0x6

    aput-char v9, v1, v11

    const/4 v9, 0x7

    aput-char v2, v1, v9

    const/16 v2, 0x8

    const/16 v12, 0x8b

    aput-char v12, v1, v2

    const/16 v2, 0x9

    const/16 v13, 0xab

    aput-char v13, v1, v2

    const/16 v2, 0x19

    aput-char v2, v1, v5

    const/16 v5, 0xb

    const/16 v13, 0xc2

    aput-char v13, v1, v5

    const/16 v5, 0xc

    const/16 v13, 0xb2

    aput-char v13, v1, v5

    const/16 v5, 0xd

    const/16 v13, 0x8c

    aput-char v13, v1, v5

    const/16 v5, 0xe

    const/16 v14, 0xfa

    aput-char v14, v1, v5

    const/16 v5, 0xf

    const/16 v15, 0x10

    aput-char v15, v1, v5

    const/16 v5, 0xd8

    aput-char v5, v1, v15

    const/16 v5, 0x11

    const/16 v15, 0xd3

    aput-char v15, v1, v5

    const/16 v5, 0x12

    const/16 v15, 0xa6

    aput-char v15, v1, v5

    const/16 v5, 0x13

    const/16 v15, 0x95

    aput-char v15, v1, v5

    const/16 v5, 0x14

    aput-char v14, v1, v5

    const/16 v5, 0x15

    const/16 v15, 0xce

    aput-char v15, v1, v5

    const/16 v5, 0x16

    const/16 v15, 0x68

    aput-char v15, v1, v5

    const/16 v5, 0x17

    const/16 v15, 0xad

    aput-char v15, v1, v5

    const/16 v5, 0x18

    const/16 v15, 0x4f

    aput-char v15, v1, v5

    const/16 v5, 0x5c

    aput-char v5, v1, v2

    const/16 v2, 0x1a

    const/16 v5, 0x8a

    aput-char v5, v1, v2

    const/16 v2, 0x1b

    aput-char v0, v1, v2

    const/16 v0, 0x1c

    const/16 v5, 0x28

    aput-char v5, v1, v0

    const/16 v0, 0x1d

    const/16 v5, 0x88

    aput-char v5, v1, v0

    const/16 v0, 0x1e

    const/16 v5, 0x97

    aput-char v5, v1, v0

    const/16 v0, 0x1f

    const/16 v5, 0x85

    aput-char v5, v1, v0

    const/16 v0, 0x20

    aput-char v12, v1, v0

    const/16 v0, 0x21

    aput-char v13, v1, v0

    const/16 v0, 0x22

    const/16 v5, 0x58

    aput-char v5, v1, v0

    const/16 v0, 0x23

    const/16 v12, 0xcb

    aput-char v12, v1, v0

    const-string v0, "\u026b\u02f4\u0287\u0278\u0304\u033f"

    invoke-static {v1, v0}, Lcom/netease/mobsec/grow/h;->c([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v9, v9, [C

    aput-char v5, v9, v3

    aput-char v2, v9, v4

    const/16 v2, 0xb9

    aput-char v2, v9, v6

    aput-char v6, v9, v7

    aput-char v14, v9, v8

    const/16 v2, 0xd0

    aput-char v2, v9, v10

    const/16 v2, 0x6c

    aput-char v2, v9, v11

    const-string v2, "\u031a\u02e6\u030c\u0344\u02a3\u0368"

    invoke-static {v9, v2}, Lcom/netease/mobsec/grow/h;->c([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit16 v2, v2, 0x8b

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x75

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

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 28

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0xc

    new-array v4, v3, [C

    const/16 v5, 0xc7

    const/4 v6, 0x0

    aput-char v5, v4, v6

    const/16 v5, 0x57

    const/4 v7, 0x1

    aput-char v5, v4, v7

    const/16 v5, 0xf0

    const/4 v8, 0x2

    aput-char v5, v4, v8

    const/16 v5, 0x76

    const/4 v9, 0x3

    aput-char v5, v4, v9

    const/16 v5, 0xdf

    const/4 v10, 0x4

    aput-char v5, v4, v10

    const/16 v5, 0x4a

    const/4 v11, 0x5

    aput-char v5, v4, v11

    const/16 v5, 0xfe

    const/4 v12, 0x6

    aput-char v5, v4, v12

    const/16 v5, 0x64

    const/4 v13, 0x7

    aput-char v5, v4, v13

    const/16 v5, 0xf8

    const/16 v14, 0x8

    aput-char v5, v4, v14

    const/16 v5, 0x5e

    const/16 v15, 0x9

    aput-char v5, v4, v15

    const/16 v5, 0xa6

    const/16 v16, 0xa

    aput-char v5, v4, v16

    const/16 v5, 0xc0

    const/16 v17, 0xb

    aput-char v5, v4, v17

    const-string v5, "\u031f\u0276\u02c8\u032c\u02d0\u0345"

    invoke-static {v4, v5}, Lcom/netease/mobsec/grow/h;->k([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/h;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-array v4, v3, [C

    const/16 v5, 0xdb

    aput-char v5, v4, v6

    const/16 v5, 0xd8

    aput-char v5, v4, v7

    const/16 v5, 0x9c

    aput-char v5, v4, v8

    const/16 v5, 0x9e

    aput-char v5, v4, v9

    const/16 v5, 0x52

    aput-char v5, v4, v10

    const/16 v5, 0xda

    aput-char v5, v4, v11

    aput-char v17, v4, v12

    const/16 v5, 0x28

    aput-char v5, v4, v13

    const/16 v5, 0x1c

    aput-char v5, v4, v14

    const/16 v5, 0x16

    aput-char v5, v4, v15

    const/16 v18, 0xf3

    aput-char v18, v4, v16

    const/16 v18, 0x30

    aput-char v18, v4, v17

    const-string v2, "\u037e\u028b\u033e\u036d\u02ad\u02d1"

    invoke-static {v4, v2}, Lcom/netease/mobsec/grow/h;->k([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x21

    new-array v4, v4, [C

    const/16 v19, 0xca

    aput-char v19, v4, v6

    const/16 v19, 0x23

    aput-char v19, v4, v7

    const/16 v19, 0x2d

    aput-char v19, v4, v8

    const/16 v19, 0x34

    aput-char v19, v4, v9

    const/16 v19, 0x8f

    aput-char v19, v4, v10

    const/16 v19, 0xaf

    aput-char v19, v4, v11

    const/16 v19, 0xfb

    aput-char v19, v4, v12

    const/16 v19, 0xbb

    aput-char v19, v4, v13

    const/16 v19, 0xcc

    aput-char v19, v4, v14

    const/16 v19, 0xa4

    aput-char v19, v4, v15

    const/16 v19, 0xe0

    aput-char v19, v4, v16

    const/16 v19, 0xef

    aput-char v19, v4, v17

    const/16 v19, 0x53

    aput-char v19, v4, v3

    const/16 v19, 0x99

    const/16 v20, 0xd

    aput-char v19, v4, v20

    const/16 v19, 0xe

    aput-char v3, v4, v19

    const/16 v21, 0xbd

    const/16 v22, 0xf

    aput-char v21, v4, v22

    const/16 v21, 0xff

    const/16 v23, 0x10

    aput-char v21, v4, v23

    const/16 v21, 0x11

    aput-char v22, v4, v21

    const/16 v24, 0x12

    const/16 v25, 0xca

    aput-char v25, v4, v24

    const/16 v24, 0x9b

    const/16 v25, 0x13

    aput-char v24, v4, v25

    const/16 v24, 0x14

    const/16 v26, 0xbc

    aput-char v26, v4, v24

    const/16 v24, 0x58

    const/16 v26, 0x15

    aput-char v24, v4, v26

    const/16 v24, 0xa0

    aput-char v24, v4, v5

    const/16 v24, 0x17

    aput-char v19, v4, v24

    const/16 v24, 0x18

    aput-char v19, v4, v24

    const/16 v24, 0x19

    const/16 v27, 0xc3

    aput-char v27, v4, v24

    const/16 v24, 0x1a

    aput-char v22, v4, v24

    const/16 v24, 0x1b

    const/16 v27, 0x5f

    aput-char v27, v4, v24

    const/16 v24, 0x1c

    const/16 v27, 0xc0

    aput-char v27, v4, v24

    const/16 v24, 0x1d

    aput-char v26, v4, v24

    const/16 v24, 0x1e

    const/16 v27, 0xfb

    aput-char v27, v4, v24

    const/16 v24, 0x1f

    const/16 v27, 0x5b

    aput-char v27, v4, v24

    const/16 v24, 0x20

    const/16 v27, 0x34

    aput-char v27, v4, v24

    const-string v5, "\u02f7\u0318\u02aa\u033e\u0356\u02bf"

    invoke-static {v4, v5}, Lcom/netease/mobsec/grow/h;->k([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x21

    new-array v2, v2, [C

    const/16 v4, 0x7f

    aput-char v4, v2, v6

    const/16 v4, 0x58

    aput-char v4, v2, v7

    const/16 v4, 0xa2

    aput-char v4, v2, v8

    const/16 v4, 0x98

    aput-char v4, v2, v9

    const/16 v4, 0x1d

    aput-char v4, v2, v10

    const/16 v4, 0xd3

    aput-char v4, v2, v11

    aput-char v13, v2, v12

    const/16 v4, 0x70

    aput-char v4, v2, v13

    const/16 v4, 0xa2

    aput-char v4, v2, v14

    aput-char v23, v2, v15

    const/16 v4, 0xc4

    aput-char v4, v2, v16

    aput-char v21, v2, v17

    aput-char v22, v2, v3

    const/16 v4, 0xb3

    aput-char v4, v2, v20

    const/16 v4, 0x83

    aput-char v4, v2, v19

    const/16 v4, 0xd2

    aput-char v4, v2, v22

    const/16 v4, 0x8d

    aput-char v4, v2, v23

    const/16 v4, 0xf8

    aput-char v4, v2, v21

    const/16 v4, 0x12

    const/16 v5, 0xde

    aput-char v5, v2, v4

    const/16 v4, 0xab

    aput-char v4, v2, v25

    const/16 v4, 0x14

    const/16 v5, 0xe4

    aput-char v5, v2, v4

    const/16 v4, 0x90

    aput-char v4, v2, v26

    const/16 v4, 0x1a

    const/16 v5, 0x16

    aput-char v4, v2, v5

    const/16 v4, 0x17

    const/16 v5, 0xab

    aput-char v5, v2, v4

    const/16 v4, 0x18

    const/16 v5, 0x9e

    aput-char v5, v2, v4

    const/16 v4, 0x19

    aput-char v23, v2, v4

    const/16 v4, 0x1a

    const/16 v5, 0xa3

    aput-char v5, v2, v4

    const/16 v4, 0x1b

    const/16 v5, 0x23

    aput-char v5, v2, v4

    const/16 v4, 0x1c

    const/16 v5, 0xda

    aput-char v5, v2, v4

    const/16 v4, 0x1d

    const/16 v5, 0xd3

    aput-char v5, v2, v4

    const/16 v4, 0x1e

    const/16 v5, 0x40

    aput-char v5, v2, v4

    const/16 v4, 0x1f

    const/16 v5, 0xab

    aput-char v5, v2, v4

    const/16 v4, 0x20

    const/16 v5, 0xa5

    aput-char v5, v2, v4

    const-string v4, "\u0259\u029f\u032e\u02dc\u02e5\u0289"

    invoke-static {v2, v4}, Lcom/netease/mobsec/grow/h;->k([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x19

    new-array v2, v2, [C

    const/16 v4, 0xb3

    aput-char v4, v2, v6

    const/16 v4, 0x2d

    aput-char v4, v2, v7

    aput-char v7, v2, v8

    const/16 v4, 0xfe

    aput-char v4, v2, v9

    const/16 v4, 0x73

    aput-char v4, v2, v10

    const/16 v4, 0x8c

    aput-char v4, v2, v11

    aput-char v25, v2, v12

    aput-char v20, v2, v13

    aput-char v7, v2, v14

    const/16 v4, 0x7d

    aput-char v4, v2, v15

    const/16 v4, 0x73

    aput-char v4, v2, v16

    const/16 v4, 0x3d

    aput-char v4, v2, v17

    const/16 v4, 0x35

    aput-char v4, v2, v3

    const/16 v3, 0x5d

    aput-char v3, v2, v20

    const/16 v3, 0x27

    aput-char v3, v2, v19

    const/16 v3, 0x27

    aput-char v3, v2, v22

    aput-char v25, v2, v23

    const/16 v3, 0x45

    aput-char v3, v2, v21

    const/16 v3, 0x12

    const/16 v4, 0x4d

    aput-char v4, v2, v3

    const/16 v3, 0x66

    aput-char v3, v2, v25

    const/16 v3, 0x14

    const/16 v4, 0xc1

    aput-char v4, v2, v3

    const/16 v3, 0xa6

    aput-char v3, v2, v26

    const/16 v3, 0x93

    const/16 v4, 0x16

    aput-char v3, v2, v4

    const/16 v3, 0x17

    const/16 v4, 0x85

    aput-char v4, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0x93

    aput-char v4, v2, v3

    const-string v3, "\u02b8\u02e8\u034b\u0278\u02bb\u0366"

    invoke-static {v2, v3}, Lcom/netease/mobsec/grow/h;->k([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/netease/mobsec/grow/o;

    invoke-direct {v2}, Lcom/netease/mobsec/grow/o;-><init>()V

    invoke-virtual {v1, v0, v2, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v2}, Lcom/netease/mobsec/grow/o;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 1
    sget v3, Lcom/netease/mobsec/grow/c$a;->a:I

    if-nez v0, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "com.bun.lib.MsaIdInterface"

    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v4, v3, Lcom/netease/mobsec/grow/c;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/netease/mobsec/grow/c;

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/netease/mobsec/grow/c$a$a;

    invoke-direct {v3, v0}, Lcom/netease/mobsec/grow/c$a$a;-><init>(Landroid/os/IBinder;)V

    .line 2
    :goto_0
    invoke-interface {v3}, Lcom/netease/mobsec/grow/c;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :try_start_4
    throw v0

    :catch_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_3
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public static f([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit16 v2, v2, 0x9a

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x66

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

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    const/16 v0, 0x8

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [C

    const/16 v3, 0x3b

    const/4 v4, 0x0

    aput-char v3, v2, v4

    const/16 v3, 0x31

    const/4 v5, 0x1

    aput-char v3, v2, v5

    const/16 v3, 0xf

    const/4 v6, 0x2

    aput-char v3, v2, v6

    const/16 v3, 0xab

    const/4 v7, 0x3

    aput-char v3, v2, v7

    const/16 v3, 0xf9

    const/4 v8, 0x4

    aput-char v3, v2, v8

    const/16 v3, 0xb0

    const/4 v9, 0x5

    aput-char v3, v2, v9

    const/16 v10, 0xa

    const/4 v11, 0x6

    aput-char v10, v2, v11

    const/16 v12, 0x51

    const/4 v13, 0x7

    aput-char v12, v2, v13

    const-string v12, "\u035c\u02a3\u036f\u036c\u02e8\u02a3"

    invoke-static {v2, v12}, Lcom/netease/mobsec/grow/h;->o([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v10, v10, [C

    const/16 v12, 0xb4

    aput-char v12, v10, v4

    const/16 v12, 0x8d

    aput-char v12, v10, v5

    const/16 v12, 0xc6

    aput-char v12, v10, v6

    const/16 v6, 0xeb

    aput-char v6, v10, v7

    const/16 v6, 0x69

    aput-char v6, v10, v8

    const/16 v6, 0x17

    aput-char v6, v10, v9

    aput-char v3, v10, v11

    const/16 v3, 0x95

    aput-char v3, v10, v13

    const/16 v3, 0x2e

    aput-char v3, v10, v0

    const/16 v0, 0x9

    const/16 v3, 0x39

    aput-char v3, v10, v0

    const-string v0, "\u028d\u02db\u02a7\u036c\u0270\u02d8"

    invoke-static {v10, v0}, Lcom/netease/mobsec/grow/h;->o([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static g([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit8 v2, v2, 0x78

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x88

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

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 29

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x1b

    new-array v4, v3, [C

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-char v5, v4, v6

    const/16 v7, 0xe4

    aput-char v7, v4, v5

    const/16 v7, 0x64

    const/4 v8, 0x2

    aput-char v7, v4, v8

    const/16 v9, 0x49

    const/4 v10, 0x3

    aput-char v9, v4, v10

    const/16 v9, 0xbc

    const/4 v11, 0x4

    aput-char v9, v4, v11

    const/16 v9, 0x7c

    const/4 v12, 0x5

    aput-char v9, v4, v12

    const/16 v9, 0x80

    const/4 v13, 0x6

    aput-char v9, v4, v13

    const/16 v9, 0xbe

    const/4 v14, 0x7

    aput-char v9, v4, v14

    const/16 v9, 0x8

    const/16 v15, 0xb

    aput-char v15, v4, v9

    const/16 v16, 0xe1

    const/16 v17, 0x9

    aput-char v16, v4, v17

    const/16 v16, 0x6b

    const/16 v18, 0xa

    aput-char v16, v4, v18

    const/16 v16, 0x4c

    aput-char v16, v4, v15

    const/16 v16, 0x21

    const/16 v19, 0xc

    aput-char v16, v4, v19

    const/16 v16, 0xa5

    const/16 v20, 0xd

    aput-char v16, v4, v20

    const/16 v16, 0x3b

    const/16 v21, 0xe

    aput-char v16, v4, v21

    const/16 v16, 0xe0

    const/16 v22, 0xf

    aput-char v16, v4, v22

    const/16 v16, 0xcc

    const/16 v23, 0x10

    aput-char v16, v4, v23

    const/16 v16, 0x4d

    const/16 v24, 0x11

    aput-char v16, v4, v24

    const/16 v16, 0xc1

    const/16 v25, 0x12

    aput-char v16, v4, v25

    const/16 v26, 0x13

    const/16 v27, 0xbd

    aput-char v27, v4, v26

    const/16 v26, 0x14

    const/16 v27, 0x5c

    aput-char v27, v4, v26

    const/16 v26, 0x15

    const/16 v27, 0x4a

    aput-char v27, v4, v26

    const/16 v26, 0x16

    const/16 v27, 0x94

    aput-char v27, v4, v26

    const/16 v26, 0x17

    const/16 v27, 0x54

    aput-char v27, v4, v26

    const/16 v26, 0x18

    const/16 v27, 0x80

    aput-char v27, v4, v26

    const/16 v26, 0x19

    const/16 v27, 0x7e

    aput-char v27, v4, v26

    const/16 v26, 0x1a

    const/16 v27, 0x8b

    aput-char v27, v4, v26

    const-string v2, "\u0340\u032d\u02e3\u034b\u02f2\u02e0"

    invoke-static {v4, v2}, Lcom/netease/mobsec/grow/h;->i([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    new-array v4, v3, [C

    const/16 v27, 0xb1

    aput-char v27, v4, v6

    const/16 v27, 0x1f

    aput-char v27, v4, v5

    const/16 v27, 0x6b

    aput-char v27, v4, v8

    const/16 v27, 0xd1

    aput-char v27, v4, v10

    const/16 v27, 0x8f

    aput-char v27, v4, v11

    const/16 v27, 0x44

    aput-char v27, v4, v12

    const/16 v27, 0x31

    aput-char v27, v4, v13

    const/16 v27, 0x7f

    aput-char v27, v4, v14

    aput-char v19, v4, v9

    const/16 v27, 0x59

    aput-char v27, v4, v17

    const/16 v27, 0x56

    aput-char v27, v4, v18

    const/16 v27, 0xf5

    aput-char v27, v4, v15

    const/16 v27, 0x70

    aput-char v27, v4, v19

    const/16 v27, 0x5e

    aput-char v27, v4, v20

    const/16 v27, 0x34

    aput-char v27, v4, v21

    const/16 v27, 0x48

    aput-char v27, v4, v22

    const/16 v27, 0x9f

    aput-char v27, v4, v23

    const/16 v27, 0x85

    aput-char v27, v4, v24

    const/16 v27, 0xb0

    aput-char v27, v4, v25

    const/16 v27, 0x13

    const/16 v28, 0x7e

    aput-char v28, v4, v27

    const/16 v27, 0x14

    const/16 v28, 0x5d

    aput-char v28, v4, v27

    const/16 v27, 0x15

    const/16 v28, 0xb2

    aput-char v28, v4, v27

    const/16 v27, 0x16

    aput-char v6, v4, v27

    const/16 v27, 0x17

    const/16 v28, 0x9e

    aput-char v28, v4, v27

    const/16 v27, 0x18

    const/16 v28, 0xd0

    aput-char v28, v4, v27

    const/16 v27, 0x19

    const/16 v28, 0xc5

    aput-char v28, v4, v27

    const/16 v27, 0x1a

    const/16 v28, 0x84

    aput-char v28, v4, v27

    const-string v3, "\u02cb\u033b\u02fb\u0287\u035b\u0322"

    invoke-static {v4, v3}, Lcom/netease/mobsec/grow/h;->i([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2b

    new-array v4, v4, [C

    const/16 v28, 0x7d

    aput-char v28, v4, v6

    const/16 v6, 0xa5

    aput-char v6, v4, v5

    const/16 v6, 0xf5

    aput-char v6, v4, v8

    const/16 v6, 0x69

    aput-char v6, v4, v10

    const/16 v6, 0xb6

    aput-char v6, v4, v11

    aput-char v19, v4, v12

    const/16 v6, 0xe5

    aput-char v6, v4, v13

    const/16 v6, 0xfd

    aput-char v6, v4, v14

    const/16 v6, 0x3b

    aput-char v6, v4, v9

    aput-char v16, v4, v17

    const/16 v6, 0x79

    aput-char v6, v4, v18

    const/16 v6, 0x3c

    aput-char v6, v4, v15

    const/16 v6, 0x6a

    aput-char v6, v4, v19

    const/16 v6, 0xe4

    aput-char v6, v4, v20

    aput-char v7, v4, v21

    const/16 v6, 0x82

    aput-char v6, v4, v22

    const/16 v6, 0x76

    aput-char v6, v4, v23

    const/16 v6, 0x5d

    aput-char v6, v4, v24

    const/16 v6, 0xf5

    aput-char v6, v4, v25

    const/16 v6, 0x13

    const/16 v8, 0xfc

    aput-char v8, v4, v6

    const/16 v6, 0x14

    const/16 v8, 0xea

    aput-char v8, v4, v6

    const/16 v6, 0x15

    const/16 v8, 0xeb

    aput-char v8, v4, v6

    const/16 v6, 0x16

    aput-char v22, v4, v6

    const/16 v6, 0x17

    const/16 v8, 0xa6

    aput-char v8, v4, v6

    const/16 v6, 0x18

    const/16 v8, 0x9d

    aput-char v8, v4, v6

    const/16 v6, 0x19

    const/16 v8, 0x3f

    aput-char v8, v4, v6

    const/16 v6, 0x1a

    const/16 v8, 0xb4

    aput-char v8, v4, v6

    const/16 v6, 0x29

    const/16 v8, 0x1b

    aput-char v6, v4, v8

    const/16 v6, 0x1c

    const/16 v8, 0x75

    aput-char v8, v4, v6

    const/16 v6, 0x1d

    const/16 v8, 0x2d

    aput-char v8, v4, v6

    const/16 v6, 0x1e

    const/16 v8, 0xa4

    aput-char v8, v4, v6

    const/16 v6, 0x1f

    const/16 v8, 0x1c

    aput-char v8, v4, v6

    const/16 v6, 0x20

    const/16 v8, 0x3d

    aput-char v8, v4, v6

    const/16 v6, 0x21

    aput-char v16, v4, v6

    const/16 v6, 0x22

    const/16 v8, 0x6d

    aput-char v8, v4, v6

    const/16 v6, 0x23

    const/16 v8, 0xf4

    aput-char v8, v4, v6

    const/16 v6, 0x24

    const/16 v8, 0xee

    aput-char v8, v4, v6

    const/16 v6, 0x25

    aput-char v7, v4, v6

    const/16 v6, 0x26

    aput-char v15, v4, v6

    const/16 v6, 0x27

    const/16 v7, 0xc3

    aput-char v7, v4, v6

    const/16 v6, 0x28

    const/16 v7, 0x59

    aput-char v7, v4, v6

    const/16 v6, 0x29

    const/16 v7, 0x76

    aput-char v7, v4, v6

    const/16 v6, 0x2a

    const/16 v7, 0x9a

    aput-char v7, v4, v6

    const-string v6, "\u0364\u0327\u0366\u0348\u0283\u0363"

    invoke-static {v4, v6}, Lcom/netease/mobsec/grow/h;->i([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Lcom/netease/mobsec/grow/o;

    invoke-direct {v2}, Lcom/netease/mobsec/grow/o;-><init>()V

    invoke-virtual {v1, v0, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lcom/netease/mobsec/grow/o;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 1
    sget v3, Lcom/netease/mobsec/grow/d$a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v3, "com.coolpad.deviceidsupport.IDeviceIdManager"

    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/netease/mobsec/grow/d;

    if-eqz v4, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/netease/mobsec/grow/d;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/netease/mobsec/grow/d$a$a;

    invoke-direct {v3, v0}, Lcom/netease/mobsec/grow/d$a$a;-><init>(Landroid/os/IBinder;)V

    move-object v0, v3

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/netease/mobsec/grow/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :try_start_4
    throw v0

    :catch_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public static h([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit8 v2, v2, 0x79

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x87

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

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 27

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x13

    new-array v4, v3, [C

    const/16 v5, 0x36

    const/4 v6, 0x0

    aput-char v5, v4, v6

    const/16 v5, 0xf8

    const/4 v7, 0x1

    aput-char v5, v4, v7

    const/16 v5, 0x31

    const/4 v8, 0x2

    aput-char v5, v4, v8

    const/16 v5, 0xa1

    const/4 v9, 0x3

    aput-char v5, v4, v9

    const/16 v5, 0xb6

    const/4 v10, 0x4

    aput-char v5, v4, v10

    const/16 v5, 0xa4

    const/4 v11, 0x5

    aput-char v5, v4, v11

    const/16 v5, 0x89

    const/4 v12, 0x6

    aput-char v5, v4, v12

    const/16 v5, 0x89

    const/4 v13, 0x7

    aput-char v5, v4, v13

    const/16 v5, 0x51

    const/16 v14, 0x8

    aput-char v5, v4, v14

    const/16 v5, 0x9

    const/16 v15, 0x12

    aput-char v15, v4, v5

    const/16 v16, 0x2f

    const/16 v17, 0xa

    aput-char v16, v4, v17

    const/16 v16, 0x74

    const/16 v18, 0xb

    aput-char v16, v4, v18

    const/16 v16, 0x16

    const/16 v19, 0xc

    aput-char v16, v4, v19

    const/16 v16, 0x69

    const/16 v20, 0xd

    aput-char v16, v4, v20

    const/16 v16, 0xe

    const/16 v21, 0x10

    aput-char v21, v4, v16

    const/16 v22, 0xf

    aput-char v18, v4, v22

    const/16 v23, 0x59

    aput-char v23, v4, v21

    const/16 v23, 0x84

    const/16 v24, 0x11

    aput-char v23, v4, v24

    const/16 v23, 0x58

    aput-char v23, v4, v15

    const-string v2, "\u0365\u0273\u02b0\u026f\u036b\u0317"

    invoke-static {v4, v2}, Lcom/netease/mobsec/grow/h;->j([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v0, Landroid/content/Intent;

    const/16 v2, 0x1a

    new-array v2, v2, [C

    const/16 v4, 0xf9

    aput-char v4, v2, v6

    const/16 v4, 0x85

    aput-char v4, v2, v7

    const/16 v4, 0x99

    aput-char v4, v2, v8

    aput-char v21, v2, v9

    const/16 v4, 0x53

    aput-char v4, v2, v10

    const/16 v4, 0xbf

    aput-char v4, v2, v11

    const/16 v4, 0x8f

    aput-char v4, v2, v12

    const/16 v4, 0x65

    aput-char v4, v2, v13

    const/16 v4, 0x18

    aput-char v4, v2, v14

    const/16 v4, 0xeb

    aput-char v4, v2, v5

    const/16 v4, 0xcd

    aput-char v4, v2, v17

    const/16 v4, 0x1f

    aput-char v4, v2, v18

    const/16 v25, 0xc8

    aput-char v25, v2, v19

    aput-char v4, v2, v20

    const/16 v25, 0x49

    aput-char v25, v2, v16

    const/16 v25, 0x7a

    aput-char v25, v2, v22

    const/16 v25, 0x95

    aput-char v25, v2, v21

    const/16 v25, 0x84

    aput-char v25, v2, v24

    const/16 v25, 0x99

    aput-char v25, v2, v15

    const/16 v25, 0x1e

    aput-char v25, v2, v3

    const/16 v25, 0x14

    const/16 v26, 0x76

    aput-char v26, v2, v25

    const/16 v25, 0x15

    const/16 v26, 0x7a

    aput-char v26, v2, v25

    const/16 v25, 0x16

    const/16 v26, 0x1b

    aput-char v26, v2, v25

    const/16 v25, 0x17

    const/16 v26, 0x3c

    aput-char v26, v2, v25

    const/16 v25, 0x18

    const/16 v26, 0xd7

    aput-char v26, v2, v25

    const/16 v25, 0x19

    aput-char v4, v2, v25

    const-string v15, "\u0275\u030e\u0365\u02a6\u0281\u031b"

    invoke-static {v2, v15}, Lcom/netease/mobsec/grow/h;->j([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-array v2, v3, [C

    const/16 v3, 0xfd

    aput-char v3, v2, v6

    const/16 v3, 0x64

    aput-char v3, v2, v7

    const/16 v3, 0xf0

    aput-char v3, v2, v8

    const/16 v3, 0x29

    aput-char v3, v2, v9

    const/16 v3, 0x80

    aput-char v3, v2, v10

    const/16 v3, 0x3d

    aput-char v3, v2, v11

    const/16 v3, 0xc5

    aput-char v3, v2, v12

    const/16 v3, 0xbe

    aput-char v3, v2, v13

    const/16 v3, 0x90

    aput-char v3, v2, v14

    const/16 v3, 0xb0

    aput-char v3, v2, v5

    const/16 v3, 0x21

    aput-char v3, v2, v17

    const/16 v3, 0x2d

    aput-char v3, v2, v18

    const/16 v3, 0xcd

    aput-char v3, v2, v19

    const/16 v3, 0xbe

    aput-char v3, v2, v20

    const/16 v3, 0xd1

    aput-char v3, v2, v16

    const/16 v3, 0xb3

    aput-char v3, v2, v22

    aput-char v4, v2, v21

    const/16 v3, 0x2d

    aput-char v3, v2, v24

    const/16 v3, 0x1a

    const/16 v4, 0x12

    aput-char v3, v2, v4

    const-string v3, "\u0357\u0318\u02b6\u02b3\u0339\u02d0"

    invoke-static {v2, v3}, Lcom/netease/mobsec/grow/h;->j([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/netease/mobsec/grow/o;

    invoke-direct {v2}, Lcom/netease/mobsec/grow/o;-><init>()V

    invoke-virtual {v1, v0, v2, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lcom/netease/mobsec/grow/o;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 1
    sget v3, Lcom/netease/mobsec/grow/a$a;->a:I

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const-string v3, "com.android.creator.IdsSupplier"

    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/netease/mobsec/grow/a;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/netease/mobsec/grow/a;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/netease/mobsec/grow/a$a$a;

    invoke-direct {v3, v0}, Lcom/netease/mobsec/grow/a$a$a;-><init>(Landroid/os/IBinder;)V

    .line 2
    :goto_0
    invoke-interface {v3}, Lcom/netease/mobsec/grow/a;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :try_start_4
    throw v0

    :catch_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public static i([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit16 v2, v2, 0x91

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x6f

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

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 28

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x17

    new-array v4, v3, [C

    const/16 v5, 0x9e

    const/4 v6, 0x0

    aput-char v5, v4, v6

    const/16 v5, 0x88

    const/4 v7, 0x1

    aput-char v5, v4, v7

    const/16 v5, 0xe6

    const/4 v8, 0x2

    aput-char v5, v4, v8

    const/16 v5, 0x96

    const/4 v9, 0x3

    aput-char v5, v4, v9

    const/16 v5, 0x77

    const/4 v10, 0x4

    aput-char v5, v4, v10

    const/16 v5, 0x95

    const/4 v11, 0x5

    aput-char v5, v4, v11

    const/16 v5, 0x47

    const/4 v12, 0x6

    aput-char v5, v4, v12

    const/16 v5, 0xa0

    const/4 v13, 0x7

    aput-char v5, v4, v13

    const/16 v5, 0xcf

    const/16 v14, 0x8

    aput-char v5, v4, v14

    const/16 v5, 0x9

    const/16 v15, 0xf

    aput-char v15, v4, v5

    const/16 v16, 0xce

    const/16 v17, 0xa

    aput-char v16, v4, v17

    const/16 v16, 0xec

    const/16 v18, 0xb

    aput-char v16, v4, v18

    const/16 v16, 0x6e

    const/16 v19, 0xc

    aput-char v16, v4, v19

    const/16 v16, 0x39

    const/16 v20, 0xd

    aput-char v16, v4, v20

    const/16 v16, 0x56

    const/16 v21, 0xe

    aput-char v16, v4, v21

    const/16 v16, 0x2f

    aput-char v16, v4, v15

    const/16 v16, 0x96

    const/16 v22, 0x10

    aput-char v16, v4, v22

    const/16 v16, 0x93

    const/16 v23, 0x11

    aput-char v16, v4, v23

    const/16 v16, 0x34

    const/16 v24, 0x12

    aput-char v16, v4, v24

    const/16 v16, 0x67

    const/16 v25, 0x13

    aput-char v16, v4, v25

    const/16 v16, 0x1e

    const/16 v26, 0x14

    aput-char v16, v4, v26

    const/16 v16, 0x15

    const/16 v27, 0xaf

    aput-char v27, v4, v16

    const/16 v16, 0x16

    const/16 v27, 0xcc

    aput-char v27, v4, v16

    const-string v2, "\u0308\u02b5\u0380\u0365\u0258\u0346"

    invoke-static {v4, v2}, Lcom/netease/mobsec/grow/h;->g([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-array v2, v3, [C

    const/16 v4, 0x42

    aput-char v4, v2, v6

    const/16 v4, 0xcb

    aput-char v4, v2, v7

    aput-char v26, v2, v8

    const/16 v4, 0x22

    aput-char v4, v2, v9

    const/16 v4, 0xf3

    aput-char v4, v2, v10

    const/16 v4, 0xbe

    aput-char v4, v2, v11

    const/16 v4, 0x83

    aput-char v4, v2, v12

    const/16 v4, 0xdb

    aput-char v4, v2, v13

    const/16 v4, 0xdc

    aput-char v4, v2, v14

    const/16 v4, 0xc2

    aput-char v4, v2, v5

    const/16 v4, 0x52

    aput-char v4, v2, v17

    const/16 v4, 0x41

    aput-char v4, v2, v18

    const/16 v4, 0x42

    aput-char v4, v2, v19

    const/16 v4, 0xfa

    aput-char v4, v2, v20

    const/16 v4, 0x65

    aput-char v4, v2, v21

    const/16 v4, 0xda

    aput-char v4, v2, v15

    aput-char v23, v2, v22

    const/16 v4, 0xc0

    aput-char v4, v2, v23

    const/16 v4, 0x20

    aput-char v4, v2, v24

    const/16 v4, 0xa4

    aput-char v4, v2, v25

    const/16 v4, 0x8d

    aput-char v4, v2, v26

    const/16 v4, 0x15

    const/16 v27, 0x82

    aput-char v27, v2, v4

    const/16 v4, 0x16

    const/16 v27, 0x50

    aput-char v27, v2, v4

    const-string v4, "\u02eb\u028b\u031a\u02c9\u037c\u02f9"

    invoke-static {v2, v4}, Lcom/netease/mobsec/grow/h;->g([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x27

    new-array v4, v4, [C

    const/16 v27, 0xdf

    aput-char v27, v4, v6

    const/16 v6, 0xc4

    aput-char v6, v4, v7

    const/16 v6, 0x6b

    aput-char v6, v4, v8

    const/16 v6, 0x79

    aput-char v6, v4, v9

    const/16 v6, 0x7f

    aput-char v6, v4, v10

    const/16 v6, 0x69

    aput-char v6, v4, v11

    aput-char v11, v4, v12

    const/16 v6, 0xd4

    aput-char v6, v4, v13

    const/16 v6, 0x4a

    aput-char v6, v4, v14

    const/16 v6, 0x30

    aput-char v6, v4, v5

    aput-char v13, v4, v17

    const/16 v5, 0xd6

    aput-char v5, v4, v18

    const/16 v5, 0xaf

    aput-char v5, v4, v19

    aput-char v10, v4, v20

    const/16 v5, 0xdb

    aput-char v5, v4, v21

    aput-char v22, v4, v15

    const/16 v5, 0x6e

    aput-char v5, v4, v22

    const/16 v5, 0x37

    aput-char v5, v4, v23

    const/16 v5, 0x75

    aput-char v5, v4, v24

    const/16 v5, 0x9b

    aput-char v5, v4, v25

    const/16 v5, 0x9b

    aput-char v5, v4, v26

    const/16 v5, 0x15

    aput-char v15, v4, v5

    const/16 v5, 0x16

    const/16 v6, 0x94

    aput-char v6, v4, v5

    const/16 v5, 0x4e

    aput-char v5, v4, v3

    const/16 v3, 0x18

    const/16 v5, 0x1b

    aput-char v5, v4, v3

    const/16 v3, 0x19

    aput-char v10, v4, v3

    const/16 v3, 0x1a

    const/16 v5, 0x88

    aput-char v5, v4, v3

    const/16 v3, 0x1b

    const/16 v5, 0xb1

    aput-char v5, v4, v3

    const/16 v3, 0x1c

    const/16 v5, 0x5c

    aput-char v5, v4, v3

    const/16 v3, 0x1d

    aput-char v13, v4, v3

    const/16 v3, 0x1e

    const/16 v5, 0xe4

    aput-char v5, v4, v3

    const/16 v3, 0x1f

    const/16 v5, 0xdd

    aput-char v5, v4, v3

    const/16 v3, 0x20

    const/16 v5, 0x2f

    aput-char v5, v4, v3

    const/16 v3, 0x21

    const/16 v5, 0xd1

    aput-char v5, v4, v3

    const/16 v3, 0x22

    const/16 v5, 0x86

    aput-char v5, v4, v3

    const/16 v3, 0x23

    const/16 v5, 0xd8

    aput-char v5, v4, v3

    const/16 v3, 0x24

    aput-char v20, v4, v3

    const/16 v3, 0x25

    const/16 v5, 0xc4

    aput-char v5, v4, v3

    const/16 v3, 0x26

    const/16 v5, 0xdb

    aput-char v5, v4, v3

    const-string v3, "\u0306\u02d3\u02ac\u037c\u0298\u0327"

    invoke-static {v4, v3}, Lcom/netease/mobsec/grow/h;->g([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/netease/mobsec/grow/o;

    invoke-direct {v2}, Lcom/netease/mobsec/grow/o;-><init>()V

    invoke-virtual {v1, v0, v2, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lcom/netease/mobsec/grow/o;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 1
    sget v3, Lcom/netease/mobsec/grow/e0$a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v3, "com.zui.deviceidservice.IDeviceidInterface"

    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/netease/mobsec/grow/e0;

    if-eqz v4, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/netease/mobsec/grow/e0;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/netease/mobsec/grow/e0$a$a;

    invoke-direct {v3, v0}, Lcom/netease/mobsec/grow/e0$a$a;-><init>(Landroid/os/IBinder;)V

    move-object v0, v3

    .line 2
    :goto_0
    invoke-interface {v0}, Lcom/netease/mobsec/grow/e0;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :try_start_4
    throw v0

    :catch_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public static j([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit8 v2, v2, 0x17

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit16 v2, v2, -0xe9

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

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 26

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x19

    new-array v3, v2, [C

    const/16 v4, 0xa8

    const/4 v5, 0x0

    aput-char v4, v3, v5

    const/16 v4, 0x7a

    const/4 v6, 0x1

    aput-char v4, v3, v6

    const/16 v4, 0xd5

    const/4 v7, 0x2

    aput-char v4, v3, v7

    const/16 v4, 0x86

    const/4 v8, 0x3

    aput-char v4, v3, v8

    const/16 v9, 0x7b

    const/4 v10, 0x4

    aput-char v9, v3, v10

    const/16 v9, 0x3e

    const/4 v11, 0x5

    aput-char v9, v3, v11

    const/16 v9, 0x5f

    const/4 v12, 0x6

    aput-char v9, v3, v12

    const/16 v9, 0xe1

    const/4 v13, 0x7

    aput-char v9, v3, v13

    const/16 v9, 0xbc

    const/16 v14, 0x8

    aput-char v9, v3, v14

    const/16 v9, 0x9

    aput-char v4, v3, v9

    const/16 v15, 0xa4

    const/16 v16, 0xa

    aput-char v15, v3, v16

    const/16 v17, 0x1d

    const/16 v18, 0xb

    aput-char v17, v3, v18

    const/16 v19, 0x59

    const/16 v20, 0xc

    aput-char v19, v3, v20

    const/16 v21, 0x8a

    const/16 v22, 0xd

    aput-char v21, v3, v22

    const/16 v21, 0xe

    const/16 v23, 0xaa

    aput-char v23, v3, v21

    const/16 v21, 0xf

    const/16 v23, 0x76

    aput-char v23, v3, v21

    const/16 v21, 0xcd

    const/16 v23, 0x10

    aput-char v21, v3, v23

    const/16 v21, 0x64

    const/16 v24, 0x11

    aput-char v21, v3, v24

    const/16 v21, 0x12

    const/16 v25, 0xa9

    aput-char v25, v3, v21

    const/16 v21, 0x13

    const/16 v25, 0x52

    aput-char v25, v3, v21

    const/16 v21, 0x14

    const/16 v25, 0x4c

    aput-char v25, v3, v21

    const/16 v21, 0x15

    const/16 v25, 0xbf

    aput-char v25, v3, v21

    const/16 v21, 0x16

    const/16 v25, 0x3a

    aput-char v25, v3, v21

    const/16 v21, 0x17

    const/16 v25, 0xdf

    aput-char v25, v3, v21

    const/16 v21, 0x18

    const/16 v25, 0x69

    aput-char v25, v3, v21

    const-string v0, "\u02bd\u02e2\u0315\u02c3\u0298\u02ce"

    invoke-static {v3, v0}, Lcom/netease/mobsec/grow/h;->n([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x24

    :try_start_1
    new-array v0, v0, [C

    const/16 v1, 0x6f

    aput-char v1, v0, v5

    const/16 v1, 0xab

    aput-char v1, v0, v6

    const/16 v1, 0x66

    aput-char v1, v0, v7

    const/16 v1, 0x65

    aput-char v1, v0, v8

    const/16 v1, 0xd7

    aput-char v1, v0, v10

    const/16 v1, 0x5e

    aput-char v1, v0, v11

    aput-char v24, v0, v12

    aput-char v18, v0, v13

    const/16 v1, 0x36

    aput-char v1, v0, v14

    const/16 v1, 0xc4

    aput-char v1, v0, v9

    const/16 v1, 0x6e

    aput-char v1, v0, v16

    const/16 v1, 0x7e

    aput-char v1, v0, v18

    aput-char v23, v0, v20

    const/16 v1, 0x69

    aput-char v1, v0, v22

    const/16 v1, 0xe

    const/16 v3, 0x76

    aput-char v3, v0, v1

    const/16 v1, 0xf

    const/16 v3, 0x77

    aput-char v3, v0, v1

    aput-char v19, v0, v23

    const/16 v1, 0xa5

    aput-char v1, v0, v24

    const/16 v1, 0x12

    const/16 v3, 0xf0

    aput-char v3, v0, v1

    const/16 v1, 0x13

    const/16 v3, 0x99

    aput-char v3, v0, v1

    const/16 v1, 0x14

    const/16 v3, 0x31

    aput-char v3, v0, v1

    const/16 v1, 0x15

    const/16 v3, 0x1c

    aput-char v3, v0, v1

    const/16 v1, 0x16

    const/16 v3, 0x4f

    aput-char v3, v0, v1

    const/16 v1, 0x17

    const/16 v3, 0xbe

    aput-char v3, v0, v1

    const/16 v1, 0x18

    const/16 v3, 0xee

    aput-char v3, v0, v1

    const/16 v1, 0x79

    aput-char v1, v0, v2

    const/16 v1, 0x1a

    const/16 v2, 0x46

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    aput-char v15, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0xb7

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    aput-char v1, v0, v17

    const/16 v1, 0x1e

    const/16 v2, 0x50

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0xe6

    aput-char v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x99

    aput-char v2, v0, v1

    const/16 v1, 0x23

    aput-char v4, v0, v1

    const-string v1, "\u0376\u0368\u0363\u0290\u032d\u02c2"

    invoke-static {v0, v1}, Lcom/netease/mobsec/grow/h;->n([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v0, v6, [Ljava/lang/String;

    new-array v1, v10, [C

    const/16 v2, 0xe3

    aput-char v2, v1, v5

    const/16 v2, 0x5b

    aput-char v2, v1, v6

    const/16 v2, 0xdf

    aput-char v2, v1, v7

    const/16 v2, 0xe9

    aput-char v2, v1, v8

    const-string v2, "\u02c7\u02f5\u02a1\u02bc\u0277\u02d5"

    invoke-static {v1, v2}, Lcom/netease/mobsec/grow/h;->n([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v17, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    new-array v1, v11, [C

    const/16 v2, 0x39

    aput-char v2, v1, v5

    const/16 v2, 0x98

    aput-char v2, v1, v6

    const/16 v2, 0x53

    aput-char v2, v1, v7

    const/16 v2, 0xdc

    aput-char v2, v1, v8

    const/16 v2, 0xb4

    aput-char v2, v1, v10

    const-string v2, "\u0335\u033f\u0258\u02d5\u025a\u02f5"

    invoke-static {v1, v2}, Lcom/netease/mobsec/grow/h;->n([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    return-object v1

    :catchall_0
    :cond_3
    const/4 v0, 0x0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static k([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit16 v2, v2, 0xa1

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x5f

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

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const-string v1, "\u0288\u036f\u02d5\u02b0\u02c3\u025a"

    invoke-static {v0, v1}, Lcom/netease/mobsec/grow/h;->f([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    const/16 v4, 0xb6

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    new-array v0, v7, [C

    const/16 v3, 0xbe

    aput-char v3, v0, v12

    const/16 v3, 0xa4

    aput-char v3, v0, v11

    const/16 v3, 0xc6

    aput-char v3, v0, v10

    const/16 v3, 0x83

    aput-char v3, v0, v9

    const/16 v3, 0x8c

    aput-char v3, v0, v8

    aput-char v4, v0, v6

    const/16 v3, 0xa2

    aput-char v3, v0, v5

    const-string v3, "\u02b5\u0367\u0337\u0306\u0280\u027a"

    invoke-static {v0, v3}, Lcom/netease/mobsec/grow/h;->f([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-array v2, v7, [C

    const/16 v3, 0x4f

    aput-char v3, v2, v12

    const/16 v3, 0x75

    aput-char v3, v2, v11

    const/16 v3, 0x41

    aput-char v3, v2, v10

    const/16 v3, 0xa7

    aput-char v3, v2, v9

    const/16 v3, 0x2b

    aput-char v3, v2, v8

    const/16 v3, 0xd7

    aput-char v3, v2, v6

    const/16 v3, 0xf2

    aput-char v3, v2, v5

    const-string v3, "\u0320\u02fd\u0282\u0365\u02e7\u0365"

    invoke-static {v2, v3}, Lcom/netease/mobsec/grow/h;->f([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    const/16 p0, 0x3f

    if-eqz v0, :cond_2

    new-array v2, v8, [C

    const/16 v3, 0x43

    aput-char v3, v2, v12

    aput-char p0, v2, v11

    const/16 p0, 0x1d

    aput-char p0, v2, v10

    const/16 p0, 0x44

    aput-char p0, v2, v9

    const-string p0, "\u0285\u0289\u0372\u033a\u02e0\u032d"

    invoke-static {v2, p0}, Lcom/netease/mobsec/grow/h;->f([CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    new-array p0, v10, [C

    const/16 v2, 0x17

    aput-char v2, p0, v12

    const/16 v2, 0x97

    aput-char v2, p0, v11

    const-string v2, "\u02ec\u02cd\u028c\u0381\u02cd\u02c5"

    invoke-static {p0, v2}, Lcom/netease/mobsec/grow/h;->f([CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const/16 v2, 0xf

    new-array v2, v2, [C

    const/16 v3, 0xcc

    aput-char v3, v2, v12

    const/16 v3, 0x81

    aput-char v3, v2, v11

    const/16 v11, 0x57

    aput-char v11, v2, v10

    const/16 v10, 0xde

    aput-char v10, v2, v9

    const/16 v9, 0x87

    aput-char v9, v2, v8

    const/16 v8, 0xc7

    aput-char v8, v2, v6

    const/16 v6, 0xf5

    aput-char v6, v2, v5

    const/16 v5, 0xa1

    aput-char v5, v2, v7

    const/16 v5, 0x8

    const/16 v6, 0xb4

    aput-char v6, v2, v5

    const/16 v5, 0x9

    const/16 v6, 0xf6

    aput-char v6, v2, v5

    const/16 v5, 0xa

    aput-char p0, v2, v5

    const/16 p0, 0xb

    aput-char v4, v2, p0

    const/16 p0, 0xc

    const/16 v4, 0x5d

    aput-char v4, v2, p0

    const/16 p0, 0xd

    aput-char v3, v2, p0

    const/16 p0, 0xe

    const/16 v3, 0x25

    aput-char v3, v2, p0

    const-string p0, "\u0334\u029d\u02b3\u02c3\u0366\u02ca"

    invoke-static {v2, p0}, Lcom/netease/mobsec/grow/h;->f([CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object v1

    nop

    :array_0
    .array-data 2
        0xe3s
        0x64s
        0xd9s
        0xf2s
        0x2bs
        0xd8s
        0x0s
        0xf4s
        0xc1s
        0x34s
        0x58s
        0xe8s
        0xbs
        0x84s
        0x48s
        0x82s
        0x7bs
        0xc9s
        0xfas
        0xdas
        0x8as
        0xds
        0xas
        0xd7s
        0x60s
        0xc5s
        0x9bs
        0x2cs
        0x4bs
        0xd9s
        0xe3s
        0x7cs
        0x98s
        0x9ds
        0xd8s
        0x48s
    .end array-data
.end method

.method public static l([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit8 v2, v2, 0x65

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x9b

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

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 28

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x23

    new-array v4, v3, [C

    const/16 v5, 0xa

    const/4 v6, 0x0

    aput-char v5, v4, v6

    const/16 v7, 0x65

    const/4 v8, 0x1

    aput-char v7, v4, v8

    const/16 v7, 0xf8

    const/4 v9, 0x2

    aput-char v7, v4, v9

    const/16 v7, 0xa3

    const/4 v10, 0x3

    aput-char v7, v4, v10

    const/16 v7, 0xac

    const/4 v11, 0x4

    aput-char v7, v4, v11

    const/16 v7, 0xb0

    const/4 v12, 0x5

    aput-char v7, v4, v12

    const/16 v7, 0x3b

    const/4 v13, 0x6

    aput-char v7, v4, v13

    const/16 v7, 0xdf

    const/4 v14, 0x7

    aput-char v7, v4, v14

    const/16 v7, 0xd7

    const/16 v15, 0x8

    aput-char v7, v4, v15

    const/16 v7, 0x93

    const/16 v16, 0x9

    aput-char v7, v4, v16

    const/16 v7, 0x1b

    aput-char v7, v4, v5

    const/16 v17, 0xaa

    const/16 v18, 0xb

    aput-char v17, v4, v18

    const/16 v17, 0xc

    const/16 v19, 0xbb

    aput-char v19, v4, v17

    const/16 v17, 0x45

    const/16 v19, 0xd

    aput-char v17, v4, v19

    const/16 v17, 0xe

    const/16 v20, 0xa9

    aput-char v20, v4, v17

    const/16 v17, 0xf

    aput-char v15, v4, v17

    const/16 v17, 0x10

    const/16 v20, 0xfb

    aput-char v20, v4, v17

    const/16 v17, 0x11

    const/16 v20, 0x6b

    aput-char v20, v4, v17

    const/16 v17, 0x24

    const/16 v20, 0x12

    aput-char v17, v4, v20

    const/16 v17, 0xf4

    const/16 v21, 0x13

    aput-char v17, v4, v21

    const/16 v17, 0x14

    const/16 v22, 0xc9

    aput-char v22, v4, v17

    const/16 v17, 0x15

    const/16 v22, 0x48

    aput-char v22, v4, v17

    const/16 v17, 0x45

    const/16 v22, 0x16

    aput-char v17, v4, v22

    const/16 v17, 0x17

    const/16 v23, 0x53

    aput-char v23, v4, v17

    const/16 v17, 0x18

    aput-char v5, v4, v17

    const/16 v23, 0x5e

    const/16 v24, 0x19

    aput-char v23, v4, v24

    const/16 v23, 0x1a

    aput-char v24, v4, v23

    aput-char v17, v4, v7

    const/16 v23, 0x1c

    const/16 v25, 0x4c

    aput-char v25, v4, v23

    const/16 v23, 0xdb

    const/16 v25, 0x1d

    aput-char v23, v4, v25

    const/16 v23, 0x1e

    const/16 v26, 0xd5

    aput-char v26, v4, v23

    const/16 v23, 0x3c

    const/16 v26, 0x1f

    aput-char v23, v4, v26

    const/16 v23, 0x20

    const/16 v27, 0xf8

    aput-char v27, v4, v23

    const/16 v23, 0x21

    aput-char v20, v4, v23

    const/16 v23, 0x22

    const/16 v27, 0xfa

    aput-char v27, v4, v23

    const-string v2, "\u02e9\u033a\u029c\u0289\u0363\u02ce"

    invoke-static {v4, v2}, Lcom/netease/mobsec/grow/h;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-array v2, v3, [C

    const/16 v4, 0xe6

    aput-char v4, v2, v6

    const/16 v4, 0x47

    aput-char v4, v2, v8

    const/16 v4, 0xba

    aput-char v4, v2, v9

    const/16 v4, 0xe0

    aput-char v4, v2, v10

    const/16 v4, 0x7c

    aput-char v4, v2, v11

    const/16 v4, 0x6a

    aput-char v4, v2, v12

    const/16 v4, 0x98

    aput-char v4, v2, v13

    const/16 v4, 0xb5

    aput-char v4, v2, v14

    const/16 v4, 0x9d

    aput-char v4, v2, v15

    const/16 v4, 0xe8

    aput-char v4, v2, v16

    aput-char v11, v2, v5

    const/16 v4, 0xe8

    aput-char v4, v2, v18

    const/16 v4, 0xc

    const/16 v27, 0x27

    aput-char v27, v2, v4

    const/16 v4, 0x57

    aput-char v4, v2, v19

    const/16 v4, 0xe

    const/16 v27, 0xab

    aput-char v27, v2, v4

    const/16 v4, 0xf

    const/16 v27, 0x58

    aput-char v27, v2, v4

    const/16 v4, 0x10

    aput-char v19, v2, v4

    const/16 v4, 0x11

    const/16 v27, 0x81

    aput-char v27, v2, v4

    const/16 v4, 0x7f

    aput-char v4, v2, v20

    const/16 v4, 0x2f

    aput-char v4, v2, v21

    const/16 v4, 0x14

    const/16 v27, 0xcb

    aput-char v27, v2, v4

    const/16 v4, 0x15

    const/16 v27, 0xf9

    aput-char v27, v2, v4

    const/16 v4, 0xdb

    aput-char v4, v2, v22

    const/16 v4, 0x17

    const/16 v27, 0x81

    aput-char v27, v2, v4

    const/16 v4, 0xa6

    aput-char v4, v2, v17

    const/16 v4, 0x8c

    aput-char v4, v2, v24

    const/16 v4, 0x1a

    const/16 v27, 0xda

    aput-char v27, v2, v4

    const/16 v4, 0xe9

    aput-char v4, v2, v7

    const/16 v4, 0x1c

    const/16 v27, 0x7c

    aput-char v27, v2, v4

    aput-char v6, v2, v25

    const/16 v4, 0x1e

    const/16 v27, 0xb8

    aput-char v27, v2, v4

    aput-char v22, v2, v26

    const/16 v4, 0x20

    const/16 v27, 0x3b

    aput-char v27, v2, v4

    const/16 v4, 0x21

    const/16 v27, 0xc3

    aput-char v27, v2, v4

    const/16 v4, 0x22

    const/16 v27, 0x45

    aput-char v27, v2, v4

    const-string v4, "\u0302\u02eb\u026d\u031f\u02fd\u035f"

    invoke-static {v2, v4}, Lcom/netease/mobsec/grow/h;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x33

    new-array v4, v4, [C

    const/16 v27, 0xf7

    aput-char v27, v4, v6

    aput-char v26, v4, v8

    const/16 v6, 0x4e

    aput-char v6, v4, v9

    const/16 v6, 0x44

    aput-char v6, v4, v10

    aput-char v25, v4, v11

    aput-char v14, v4, v12

    const/16 v6, 0xaf

    aput-char v6, v4, v13

    const/16 v6, 0x9e

    aput-char v6, v4, v14

    const/16 v6, 0x37

    aput-char v6, v4, v15

    const/16 v6, 0x34

    aput-char v6, v4, v16

    const/16 v6, 0xab

    aput-char v6, v4, v5

    const/16 v5, 0x3c

    aput-char v5, v4, v18

    const/16 v5, 0xc

    aput-char v22, v4, v5

    const/16 v5, 0xfe

    aput-char v5, v4, v19

    const/16 v5, 0xe

    const/16 v6, 0x49

    aput-char v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0xac

    aput-char v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x6c

    aput-char v6, v4, v5

    const/16 v5, 0x11

    aput-char v22, v4, v5

    const/16 v5, 0x98

    aput-char v5, v4, v20

    const/16 v5, 0xb6

    aput-char v5, v4, v21

    const/16 v5, 0x14

    const/16 v6, 0x29

    aput-char v6, v4, v5

    const/16 v5, 0x15

    const/16 v6, 0x6f

    aput-char v6, v4, v5

    const/16 v5, 0x75

    aput-char v5, v4, v22

    const/16 v5, 0x17

    aput-char v13, v4, v5

    const/16 v5, 0x97

    aput-char v5, v4, v17

    const/16 v5, 0x9f

    aput-char v5, v4, v24

    const/16 v5, 0x1a

    const/16 v6, 0xb9

    aput-char v6, v4, v5

    const/16 v5, 0x6f

    aput-char v5, v4, v7

    const/16 v5, 0x1c

    const/16 v6, 0xdc

    aput-char v6, v4, v5

    const/16 v5, 0x67

    aput-char v5, v4, v25

    const/16 v5, 0x1e

    const/16 v6, 0xa9

    aput-char v6, v4, v5

    const/16 v5, 0xfd

    aput-char v5, v4, v26

    const/16 v5, 0x20

    const/16 v6, 0x59

    aput-char v6, v4, v5

    const/16 v5, 0x21

    const/16 v6, 0x6e

    aput-char v6, v4, v5

    const/16 v5, 0x22

    const/16 v6, 0xea

    aput-char v6, v4, v5

    const/16 v5, 0xbd

    aput-char v5, v4, v3

    const/16 v3, 0x24

    const/16 v5, 0x94

    aput-char v5, v4, v3

    const/16 v3, 0x25

    const/16 v5, 0x5f

    aput-char v5, v4, v3

    const/16 v3, 0x26

    const/16 v5, 0xaf

    aput-char v5, v4, v3

    const/16 v3, 0x27

    const/16 v5, 0x2e

    aput-char v5, v4, v3

    const/16 v3, 0x28

    const/16 v5, 0x2b

    aput-char v5, v4, v3

    const/16 v3, 0x29

    const/16 v5, 0x77

    aput-char v5, v4, v3

    const/16 v3, 0x2a

    aput-char v21, v4, v3

    const/16 v3, 0x2b

    const/16 v5, 0x3f

    aput-char v5, v4, v3

    const/16 v3, 0x2c

    const/16 v5, 0xf2

    aput-char v5, v4, v3

    const/16 v3, 0x2d

    const/16 v5, 0x8f

    aput-char v5, v4, v3

    const/16 v3, 0x2e

    const/16 v5, 0xf4

    aput-char v5, v4, v3

    const/16 v3, 0x2f

    aput-char v12, v4, v3

    const/16 v3, 0x30

    const/16 v5, 0xf6

    aput-char v5, v4, v3

    const/16 v3, 0x31

    const/16 v5, 0x64

    aput-char v5, v4, v3

    const/16 v3, 0x32

    const/16 v5, 0xd8

    aput-char v5, v4, v3

    const-string v3, "\u028a\u032c\u0291\u02a2\u02e0\u0262"

    invoke-static {v4, v3}, Lcom/netease/mobsec/grow/h;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/netease/mobsec/grow/o;

    invoke-direct {v2}, Lcom/netease/mobsec/grow/o;-><init>()V

    invoke-virtual {v1, v0, v2, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lcom/netease/mobsec/grow/o;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 1
    sget v3, Lcom/netease/mobsec/grow/c0$a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v3, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/netease/mobsec/grow/c0;

    if-eqz v4, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/netease/mobsec/grow/c0;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/netease/mobsec/grow/c0$a$a;

    invoke-direct {v3, v0}, Lcom/netease/mobsec/grow/c0$a$a;-><init>(Landroid/os/IBinder;)V

    move-object v0, v3

    .line 2
    :goto_0
    invoke-interface {v0}, Lcom/netease/mobsec/grow/c0;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-object v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :try_start_4
    throw v0

    :catch_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public static m([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit8 v2, v2, 0x12

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit16 v2, v2, -0xee

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

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x4

    new-array v2, v1, [C

    const/16 v3, 0x8f

    const/4 v4, 0x0

    aput-char v3, v2, v4

    const/16 v3, 0x8b

    const/4 v5, 0x1

    aput-char v3, v2, v5

    const/16 v3, 0xdd

    const/4 v6, 0x2

    aput-char v3, v2, v6

    const/16 v3, 0x9f

    const/4 v7, 0x3

    aput-char v3, v2, v7

    const-string v3, "\u035c\u0352\u02ac\u02b7\u0342\u0342"

    invoke-static {v2, v3}, Lcom/netease/mobsec/grow/h;->h([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_1

    new-array v2, v3, [C

    const/16 v3, 0x26

    aput-char v3, v2, v4

    const/16 v4, 0x56

    aput-char v4, v2, v5

    const/16 v5, 0x7b

    aput-char v5, v2, v6

    const/16 v5, 0xd1

    aput-char v5, v2, v7

    const/16 v6, 0xf9

    aput-char v6, v2, v1

    const/4 v1, 0x5

    const/16 v7, 0x3c

    aput-char v7, v2, v1

    const/4 v1, 0x6

    const/16 v8, 0x1e

    aput-char v8, v2, v1

    const/4 v1, 0x7

    const/16 v9, 0x46

    aput-char v9, v2, v1

    const/16 v1, 0xfa

    const/16 v9, 0x8

    aput-char v1, v2, v9

    const/16 v10, 0x9

    const/16 v11, 0xb1

    aput-char v11, v2, v10

    const/16 v10, 0xa

    aput-char v9, v2, v10

    const/16 v10, 0xb

    const/16 v12, 0x44

    aput-char v12, v2, v10

    const/16 v10, 0xc

    aput-char v3, v2, v10

    const/16 v10, 0xd

    const/16 v12, 0x8d

    aput-char v12, v2, v10

    const/16 v10, 0xe

    const/16 v12, 0x4b

    aput-char v12, v2, v10

    const/16 v10, 0xf

    aput-char v11, v2, v10

    const/16 v10, 0x10

    aput-char v9, v2, v10

    const/16 v10, 0x11

    const/16 v12, 0x4c

    aput-char v12, v2, v10

    const/16 v10, 0x12

    const/16 v12, 0x88

    aput-char v12, v2, v10

    const/16 v10, 0x13

    aput-char v4, v2, v10

    const/16 v4, 0x14

    const/16 v10, 0x2b

    aput-char v10, v2, v4

    const/16 v4, 0x15

    aput-char v5, v2, v4

    const/16 v4, 0x16

    aput-char v6, v2, v4

    const/16 v4, 0x17

    const/16 v5, 0x57

    aput-char v5, v2, v4

    const/16 v4, 0x18

    const/16 v5, 0xe7

    aput-char v5, v2, v4

    const/16 v4, 0x19

    const/16 v5, 0x36

    aput-char v5, v2, v4

    const/16 v4, 0x1a

    const/16 v5, 0x1b

    aput-char v5, v2, v4

    aput-char v11, v2, v5

    const/16 v4, 0x1c

    aput-char v6, v2, v4

    const/16 v4, 0x1d

    aput-char v7, v2, v4

    const/16 v4, 0xdf

    aput-char v4, v2, v8

    const/16 v4, 0x1f

    aput-char v3, v2, v4

    const/16 v3, 0x20

    aput-char v1, v2, v3

    const/16 v1, 0x21

    const/16 v3, 0x51

    aput-char v3, v2, v1

    const/16 v1, 0x22

    aput-char v9, v2, v1

    const/16 v1, 0x23

    const/16 v3, 0xc5

    aput-char v3, v2, v1

    const-string v1, "\u02c7\u02a9\u02a2\u0315\u02d6\u0339"

    invoke-static {v2, v1}, Lcom/netease/mobsec/grow/h;->h([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static n([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit8 v2, v2, 0x33

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit16 v2, v2, -0xcd

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

.method public static o([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit8 v2, v2, 0x47

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit16 v2, v2, -0xb9

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

.method public static o(Landroid/content/Context;)Z
    .locals 27

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/16 v2, 0xc

    new-array v3, v2, [C

    const/16 v4, 0x31

    aput-char v4, v3, v0

    const/16 v4, 0xc8

    const/4 v5, 0x1

    aput-char v4, v3, v5

    const/16 v4, 0xa5

    const/4 v6, 0x2

    aput-char v4, v3, v6

    const/16 v4, 0xdf

    const/4 v7, 0x3

    aput-char v4, v3, v7

    const/16 v4, 0xcd

    const/4 v8, 0x4

    aput-char v4, v3, v8

    const/16 v4, 0xab

    const/4 v9, 0x5

    aput-char v4, v3, v9

    const/16 v4, 0xf1

    const/4 v10, 0x6

    aput-char v4, v3, v10

    const/16 v4, 0x18

    const/4 v11, 0x7

    aput-char v4, v3, v11

    const/16 v12, 0x35

    const/16 v13, 0x8

    aput-char v12, v3, v13

    const/16 v12, 0xd7

    const/16 v14, 0x9

    aput-char v12, v3, v14

    const/16 v12, 0x74

    const/16 v15, 0xa

    aput-char v12, v3, v15

    const/16 v12, 0x33

    const/16 v16, 0xb

    aput-char v12, v3, v16

    const-string v12, "\u02c4\u030b\u02e6\u0373\u0360\u0258"

    invoke-static {v3, v12}, Lcom/netease/mobsec/grow/h;->k([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v12, 0x21

    new-array v12, v12, [C

    const/16 v17, 0xbb

    aput-char v17, v12, v0

    const/16 v17, 0x3e

    aput-char v17, v12, v5

    const/16 v17, 0xdb

    aput-char v17, v12, v6

    const/16 v17, 0x34

    aput-char v17, v12, v7

    const/16 v17, 0x15

    aput-char v17, v12, v8

    const/16 v18, 0xec

    aput-char v18, v12, v9

    const/16 v18, 0xea

    aput-char v18, v12, v10

    const/16 v18, 0x9d

    aput-char v18, v12, v11

    aput-char v6, v12, v13

    const/16 v18, 0xa4

    aput-char v18, v12, v14

    const/16 v18, 0x33

    aput-char v18, v12, v15

    const/16 v18, 0x76

    aput-char v18, v12, v16

    const/16 v18, 0x64

    aput-char v18, v12, v2

    const/16 v18, 0xbf

    const/16 v19, 0xd

    aput-char v18, v12, v19

    const/16 v18, 0xaa

    const/16 v20, 0xe

    aput-char v18, v12, v20

    const/16 v18, 0xbd

    const/16 v21, 0xf

    aput-char v18, v12, v21

    const/16 v18, 0x10

    const/16 v22, 0xb3

    aput-char v22, v12, v18

    const/16 v18, 0x9d

    const/16 v22, 0x11

    aput-char v18, v12, v22

    const/16 v18, 0x7b

    const/16 v23, 0x12

    aput-char v18, v12, v23

    const/16 v18, 0x7d

    const/16 v24, 0x13

    aput-char v18, v12, v24

    const/16 v18, 0x14

    aput-char v6, v12, v18

    const/16 v18, 0x58

    aput-char v18, v12, v17

    const/16 v18, 0x53

    const/16 v25, 0x16

    aput-char v18, v12, v25

    const/16 v18, 0x17

    const/16 v26, 0x86

    aput-char v26, v12, v18

    const/16 v18, 0x5e

    aput-char v18, v12, v4

    const/16 v18, 0x19

    const/16 v26, 0x5e

    aput-char v26, v12, v18

    const/16 v18, 0x1a

    const/16 v26, 0x76

    aput-char v26, v12, v18

    const/16 v18, 0x1b

    const/16 v26, 0x5f

    aput-char v26, v12, v18

    const/16 v18, 0x1c

    aput-char v24, v12, v18

    const/16 v18, 0x1d

    const/16 v26, 0x4c

    aput-char v26, v12, v18

    const/16 v18, 0x1e

    const/16 v26, 0x8a

    aput-char v26, v12, v18

    const/16 v18, 0x1f

    const/16 v26, 0xbd

    aput-char v26, v12, v18

    const/16 v18, 0x20

    const/16 v26, 0x5a

    aput-char v26, v12, v18

    const-string v4, "\u037f\u032f\u0370\u033e\u02ab\u0262"

    invoke-static {v12, v4}, Lcom/netease/mobsec/grow/h;->k([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x20

    new-array v3, v3, [C

    const/16 v4, 0xe1

    aput-char v4, v3, v0

    const/16 v4, 0x2c

    aput-char v4, v3, v5

    const/16 v4, 0x55

    aput-char v4, v3, v6

    const/16 v4, 0x4b

    aput-char v4, v3, v7

    const/16 v4, 0xe6

    aput-char v4, v3, v8

    const/16 v4, 0x9d

    aput-char v4, v3, v9

    const/16 v4, 0x26

    aput-char v4, v3, v10

    aput-char v2, v3, v11

    const/16 v4, 0x3d

    aput-char v4, v3, v13

    const/16 v4, 0xd0

    aput-char v4, v3, v14

    const/16 v4, 0xfe

    aput-char v4, v3, v15

    const/16 v4, 0x2c

    aput-char v4, v3, v16

    const/16 v4, 0x20

    aput-char v4, v3, v2

    const/16 v4, 0x96

    aput-char v4, v3, v19

    aput-char v8, v3, v20

    aput-char v23, v3, v21

    const/16 v4, 0x10

    const/16 v12, 0x47

    aput-char v12, v3, v4

    const/16 v4, 0x4c

    aput-char v4, v3, v22

    const/16 v4, 0x3e

    aput-char v4, v3, v23

    const/16 v4, 0x64

    aput-char v4, v3, v24

    const/16 v4, 0x14

    const/16 v12, 0xed

    aput-char v12, v3, v4

    const/16 v4, 0xda

    aput-char v4, v3, v17

    const/16 v4, 0x98

    aput-char v4, v3, v25

    const/16 v4, 0x17

    const/16 v12, 0x75

    aput-char v12, v3, v4

    const/16 v4, 0x46

    const/16 v12, 0x18

    aput-char v4, v3, v12

    const/16 v4, 0x19

    const/16 v12, 0x6c

    aput-char v12, v3, v4

    const/16 v4, 0x1a

    const/16 v12, 0x3a

    aput-char v12, v3, v4

    const/16 v4, 0x1b

    const/16 v12, 0xb0

    aput-char v12, v3, v4

    const/16 v4, 0x1c

    const/16 v12, 0x26

    aput-char v12, v3, v4

    const/16 v4, 0x1d

    const/16 v12, 0xd6

    aput-char v12, v3, v4

    const/16 v4, 0x1e

    const/16 v12, 0xa1

    aput-char v12, v3, v4

    const/16 v4, 0x1f

    const/16 v12, 0x94

    aput-char v12, v3, v4

    const-string v4, "\u034e\u02e0\u0264\u02d6\u0317\u02fe"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/h;->k([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x19

    new-array v3, v3, [C

    const/16 v4, 0xee

    aput-char v4, v3, v0

    const/16 v4, 0xd6

    aput-char v4, v3, v5

    const/16 v4, 0xf5

    aput-char v4, v3, v6

    const/16 v4, 0x73

    aput-char v4, v3, v7

    const/16 v4, 0x54

    aput-char v4, v3, v8

    aput-char v24, v3, v9

    const/16 v4, 0x37

    aput-char v4, v3, v10

    const/16 v4, 0xbe

    aput-char v4, v3, v11

    const/16 v4, 0xdd

    aput-char v4, v3, v13

    const/16 v4, 0x29

    aput-char v4, v3, v14

    const/16 v4, 0x8c

    aput-char v4, v3, v15

    const/16 v4, 0xd1

    aput-char v4, v3, v16

    const/16 v4, 0xf0

    aput-char v4, v3, v2

    const/16 v4, 0x67

    aput-char v4, v3, v19

    const/16 v4, 0x24

    aput-char v4, v3, v20

    const/16 v4, 0xda

    aput-char v4, v3, v21

    const/16 v4, 0x10

    const/16 v12, 0xf3

    aput-char v12, v3, v4

    const/16 v4, 0xb1

    aput-char v4, v3, v22

    aput-char v22, v3, v23

    const/16 v4, 0x54

    aput-char v4, v3, v24

    const/16 v4, 0x14

    const/16 v12, 0x6a

    aput-char v12, v3, v4

    const/16 v4, 0x83

    aput-char v4, v3, v17

    const/16 v4, 0x6c

    aput-char v4, v3, v25

    const/16 v4, 0x17

    aput-char v13, v3, v4

    const/16 v4, 0x50

    const/16 v12, 0x18

    aput-char v4, v3, v12

    const-string v4, "\u02d6\u037a\u0263\u0314\u02b2\u0283"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/h;->k([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x1a

    new-array v3, v3, [C

    const/16 v4, 0xef

    aput-char v4, v3, v0

    const/16 v4, 0xfc

    aput-char v4, v3, v5

    const/16 v4, 0xef

    aput-char v4, v3, v6

    const/16 v4, 0x78

    aput-char v4, v3, v7

    const/16 v4, 0x3b

    aput-char v4, v3, v8

    const/16 v4, 0x6b

    aput-char v4, v3, v9

    const/16 v4, 0x50

    aput-char v4, v3, v10

    const/16 v4, 0x1d

    aput-char v4, v3, v11

    const/16 v4, 0xd7

    aput-char v4, v3, v13

    const/16 v4, 0xb1

    aput-char v4, v3, v14

    const/16 v4, 0xab

    aput-char v4, v3, v15

    const/16 v4, 0x5a

    aput-char v4, v3, v16

    const/16 v4, 0xf1

    aput-char v4, v3, v2

    aput-char v19, v3, v19

    const/16 v2, 0x6e

    aput-char v2, v3, v20

    const/16 v2, 0xf3

    aput-char v2, v3, v21

    const/16 v2, 0x10

    const/16 v4, 0xea

    aput-char v4, v3, v2

    const/16 v2, 0x22

    aput-char v2, v3, v22

    const/16 v2, 0xd1

    aput-char v2, v3, v23

    const/16 v2, 0x77

    aput-char v2, v3, v24

    const/16 v2, 0x14

    aput-char v25, v3, v2

    const/16 v2, 0xfa

    aput-char v2, v3, v17

    const/16 v2, 0xba

    aput-char v2, v3, v25

    const/16 v2, 0x17

    const/16 v4, 0x63

    aput-char v4, v3, v2

    const/16 v2, 0x6f

    const/16 v4, 0x18

    aput-char v2, v3, v4

    const/16 v2, 0x19

    const/16 v4, 0xb7

    aput-char v4, v3, v2

    const-string v2, "\u02de\u0369\u0290\u02df\u02fa\u034f"

    invoke-static {v3, v2}, Lcom/netease/mobsec/grow/h;->k([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    return v0
.end method

.method public static p([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit16 v2, v2, 0xce

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x32

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

.method public static q([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit16 v2, v2, 0xfa

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x6

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
