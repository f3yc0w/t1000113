.class public Lcom/netease/mobsec/xt/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const-string v1, "\u034f\u0301\u0283\u030e\u035d\u025b"

    invoke-static {v0, v1}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mobsec/xt/b;->a:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    const-string v2, "\u031e\u0318\u02fe\u02d1\u0283\u035e"

    invoke-static {v1, v2}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/netease/mobsec/xt/b;->b:Ljava/lang/String;

    new-array v1, v0, [C

    fill-array-data v1, :array_2

    const-string v2, "\u02a3\u02b7\u0300\u02c5\u0287\u025e"

    invoke-static {v1, v2}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/netease/mobsec/xt/b;->c:Ljava/lang/String;

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    const-string v1, "\u0312\u0295\u02b3\u026b\u033e\u02c8"

    invoke-static {v0, v1}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mobsec/xt/b;->d:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x6s
        0x10s
    .end array-data

    :array_1
    .array-data 2
        0x2cs
        0x31s
        0x17s
        0xbes
    .end array-data

    :array_2
    .array-data 2
        0xa1s
        0xfbs
        0x9s
        0x7es
    .end array-data

    :array_3
    .array-data 2
        0xafs
        0xbfs
        0xaes
        0xe5s
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

    add-int/lit16 v2, v2, 0xaa

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x56

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

.method public static a()Z
    .locals 24

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    const/16 v6, 0xf

    new-array v7, v6, [C

    const/16 v8, 0x6d

    aput-char v8, v7, v2

    const/16 v8, 0xef

    aput-char v8, v7, v0

    const/4 v8, 0x6

    const/4 v9, 0x2

    aput-char v8, v7, v9

    const/16 v10, 0x5b

    const/4 v11, 0x3

    aput-char v10, v7, v11

    const/4 v12, 0x4

    aput-char v2, v7, v12

    const/16 v13, 0x62

    const/4 v14, 0x5

    aput-char v13, v7, v14

    const/16 v13, 0xde

    aput-char v13, v7, v8

    const/16 v13, 0x51

    const/4 v15, 0x7

    aput-char v13, v7, v15

    const/16 v13, 0xcf

    const/16 v16, 0x8

    aput-char v13, v7, v16

    const/16 v17, 0x44

    const/16 v18, 0x9

    aput-char v17, v7, v18

    const/16 v17, 0x5a

    const/16 v19, 0xa

    aput-char v17, v7, v19

    const/16 v17, 0x22

    const/16 v20, 0xb

    aput-char v17, v7, v20

    const/16 v21, 0xa6

    const/16 v22, 0xc

    aput-char v21, v7, v22

    const/16 v1, 0xd

    aput-char v13, v7, v1

    const/16 v13, 0x16

    const/16 v23, 0xe

    aput-char v13, v7, v23

    const-string v13, "\u0374\u031f\u0322\u0364\u029c\u033c"

    invoke-static {v7, v13}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const/16 v5, 0x10

    new-array v7, v5, [C

    const/16 v13, 0x67

    aput-char v13, v7, v2

    const/16 v13, 0xfb

    aput-char v13, v7, v0

    const/16 v13, 0xdb

    aput-char v13, v7, v9

    const/16 v13, 0xfd

    aput-char v13, v7, v11

    const/16 v13, 0x23

    aput-char v13, v7, v12

    const/16 v13, 0x73

    aput-char v13, v7, v14

    const/16 v13, 0x5f

    aput-char v13, v7, v8

    const/16 v13, 0xe3

    aput-char v13, v7, v15

    const/16 v13, 0xbb

    aput-char v13, v7, v16

    aput-char v12, v7, v18

    const/16 v13, 0xd9

    aput-char v13, v7, v19

    const/16 v13, 0x93

    aput-char v13, v7, v20

    const/16 v21, 0xff

    aput-char v21, v7, v22

    aput-char v13, v7, v1

    const/16 v13, 0x6a

    aput-char v13, v7, v23

    const/16 v13, 0x9b

    aput-char v13, v7, v6

    const-string v13, "\u0324\u02a3\u02c7\u0262\u02de\u02bf"

    invoke-static {v7, v13}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_2

    :cond_1
    new-array v5, v5, [C

    const/16 v7, 0x7c

    aput-char v7, v5, v2

    const/16 v7, 0x14

    aput-char v7, v5, v0

    const/16 v7, 0x8b

    aput-char v7, v5, v9

    const/16 v7, 0x87

    aput-char v7, v5, v11

    const/16 v7, 0xa7

    aput-char v7, v5, v12

    const/16 v7, 0xeb

    aput-char v7, v5, v14

    const/16 v7, 0x64

    aput-char v7, v5, v8

    aput-char v22, v5, v15

    const/16 v7, 0x8b

    aput-char v7, v5, v16

    const/16 v7, 0x87

    aput-char v7, v5, v18

    const/16 v7, 0x45

    aput-char v7, v5, v19

    const/16 v7, 0x6a

    aput-char v7, v5, v20

    const/16 v7, 0xd7

    aput-char v7, v5, v22

    const/16 v7, 0x2c

    aput-char v7, v5, v1

    const/16 v7, 0xb8

    aput-char v7, v5, v23

    const/16 v7, 0x18

    aput-char v7, v5, v6

    const-string v7, "\u02ec\u02ec\u0345\u034e\u033b\u02fb"

    invoke-static {v5, v7}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    new-array v5, v1, [C

    const/16 v7, 0xa2

    aput-char v7, v5, v2

    const/16 v7, 0x15

    aput-char v7, v5, v0

    const/16 v7, 0x21

    aput-char v7, v5, v9

    aput-char v10, v5, v11

    const/16 v7, 0xab

    aput-char v7, v5, v12

    const/16 v7, 0x5e

    aput-char v7, v5, v14

    const/16 v7, 0x4a

    aput-char v7, v5, v8

    const/16 v7, 0x8a

    aput-char v7, v5, v15

    const/16 v7, 0x61

    aput-char v7, v5, v16

    aput-char v12, v5, v18

    aput-char v17, v5, v19

    const/16 v7, 0xf6

    aput-char v7, v5, v20

    aput-char v9, v5, v22

    const-string v7, "\u02db\u02fa\u0291\u0365\u0382\u029e"

    invoke-static {v5, v7}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_2
    throw v0

    :catch_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v1

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    move v2, v0

    :goto_3
    return v2
.end method

.method public static b()Z
    .locals 26

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v1, :cond_0

    new-array v1, v2, [C

    fill-array-data v1, :array_0

    const-string v4, "\u026f\u0280\u0308\u0370\u0271\u02d8"

    invoke-static {v1, v4}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v2, [C

    fill-array-data v1, :array_1

    const-string v4, "\u0369\u02a5\u0320\u0280\u0381\u02d5"

    invoke-static {v1, v4}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v4, 0x0

    if-lt v0, v1, :cond_3

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    aget-object v6, v0, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    new-array v7, v2, [C

    fill-array-data v7, :array_2

    const-string v8, "\u033d\u02e8\u0309\u0296\u0368\u0321"

    invoke-static {v7, v8}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const/16 v0, 0x12

    new-array v6, v0, [C

    const/16 v7, 0x8d

    aput-char v7, v6, v4

    const/16 v7, 0x63

    aput-char v7, v6, v3

    const/16 v7, 0xec

    const/4 v8, 0x2

    aput-char v7, v6, v8

    const/16 v7, 0xc0

    aput-char v7, v6, v2

    const/16 v9, 0xfe

    const/4 v10, 0x4

    aput-char v9, v6, v10

    const/16 v9, 0xac

    const/4 v11, 0x5

    aput-char v9, v6, v11

    const/16 v9, 0xbd

    const/4 v12, 0x6

    aput-char v9, v6, v12

    const/16 v9, 0xd4

    const/4 v13, 0x7

    aput-char v9, v6, v13

    const/16 v9, 0x77

    const/16 v14, 0x8

    aput-char v9, v6, v14

    const/16 v9, 0x7e

    const/16 v15, 0x9

    aput-char v9, v6, v15

    const/16 v16, 0xa4

    const/16 v17, 0xa

    aput-char v16, v6, v17

    const/16 v16, 0x75

    const/16 v18, 0xb

    aput-char v16, v6, v18

    const/16 v16, 0xe4

    const/16 v19, 0xc

    aput-char v16, v6, v19

    const/16 v16, 0xbc

    const/16 v20, 0xd

    aput-char v16, v6, v20

    const/16 v16, 0xad

    const/16 v21, 0xe

    aput-char v16, v6, v21

    const/16 v16, 0x9e

    const/16 v22, 0xf

    aput-char v16, v6, v22

    const/16 v16, 0x2e

    const/16 v23, 0x10

    aput-char v16, v6, v23

    const/16 v16, 0x1c

    const/16 v24, 0x11

    aput-char v16, v6, v24

    const-string v1, "\u0373\u0378\u02ee\u0286\u033c\u02b0"

    invoke-static {v6, v1}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v6, v3, [C

    const/16 v25, 0xf2

    aput-char v25, v6, v4

    const-string v7, "\u0315\u02d2\u033e\u0268\u02cb\u02cf"

    invoke-static {v6, v7}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-array v6, v0, [C

    const/16 v7, 0x98

    aput-char v7, v6, v4

    const/16 v7, 0xf7

    aput-char v7, v6, v3

    const/16 v7, 0x22

    aput-char v7, v6, v8

    const/16 v7, 0x59

    aput-char v7, v6, v2

    const/16 v7, 0x48

    aput-char v7, v6, v10

    aput-char v9, v6, v11

    const/16 v7, 0x4a

    aput-char v7, v6, v12

    const/16 v7, 0xa8

    aput-char v7, v6, v13

    const/16 v7, 0x99

    aput-char v7, v6, v14

    const/16 v7, 0xb9

    aput-char v7, v6, v15

    const/16 v7, 0xe1

    aput-char v7, v6, v17

    aput-char v4, v6, v18

    const/16 v7, 0xaa

    aput-char v7, v6, v19

    const/16 v7, 0x88

    aput-char v7, v6, v20

    const/16 v7, 0x22

    aput-char v7, v6, v21

    const/16 v7, 0x47

    aput-char v7, v6, v22

    const/16 v7, 0x5a

    aput-char v7, v6, v23

    const/16 v7, 0xc0

    aput-char v7, v6, v24

    const-string v0, "\u02d6\u02c0\u02de\u02ca\u02d0\u029c"

    invoke-static {v6, v0}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v2, [C

    const/16 v2, 0x9c

    aput-char v2, v0, v4

    const/16 v2, 0x80

    aput-char v2, v0, v3

    const/16 v2, 0xd3

    aput-char v2, v0, v8

    const-string v2, "\u02bc\u02db\u0358\u02e5\u0357\u034f"

    invoke-static {v0, v2}, Lcom/netease/mobsec/xt/b;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_4
    const/16 v0, 0x12

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v5

    goto :goto_2

    :catch_0
    move-object v1, v5

    goto :goto_3

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_5
    throw v0

    :catch_2
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    move-object v5, v1

    :cond_7
    const/4 v3, 0x0

    :goto_4
    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    move v4, v3

    :goto_5
    return v4

    :array_0
    .array-data 2
        0xe4s
        0x19s
        0xc9s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x26s
        0xb5s
        0xbcs
    .end array-data

    nop

    :array_2
    .array-data 2
        0xaes
        0x1as
        0xe9s
    .end array-data
.end method
