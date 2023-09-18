.class public Lcom/netease/mobsec/grow/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mobsec/grow/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobsec/grow/t$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    add-int/lit16 v2, v2, 0xbc

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x44

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


# virtual methods
.method public final a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobsec/grow/y;)Lcom/netease/mobsec/grow/t$a;
    .locals 16

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p1}, Lcom/netease/mobsec/grow/t;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_5

    aget-object v6, v1, v4

    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v8, v7, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-ge v7, v9, :cond_0

    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11, v10}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v7

    goto :goto_2

    :catch_0
    move v7, v8

    goto :goto_1

    :cond_0
    :goto_2
    if-nez v5, :cond_1

    move-object/from16 v12, p3

    goto :goto_5

    :cond_1
    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v8, v7, 0x1

    if-ge v7, v9, :cond_4

    array-length v7, v0

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v7, :cond_3

    aget-object v12, v0, v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x3

    new-array v14, v14, [C

    fill-array-data v14, :array_0

    const-string v15, "\u02c7\u035e\u02fb\u0300\u02b5\u035b"

    invoke-static {v14, v15}, Lcom/netease/mobsec/grow/t;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v14, Ljava/io/File;->separatorChar:C

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v12, Ljava/io/File;->separatorChar:C

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x1b

    new-array v14, v14, [C

    fill-array-data v14, :array_1

    const-string v15, "\u0316\u0358\u02e8\u0301\u02b9\u02fe"

    invoke-static {v14, v15}, Lcom/netease/mobsec/grow/t;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v13, v15, v3

    aput-object v6, v15, v10

    .line 1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-virtual {v5, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v0, Lcom/netease/mobsec/grow/t$a;

    invoke-direct {v0, v5, v3}, Lcom/netease/mobsec/grow/t$a;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-object v0

    :cond_2
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_4

    :cond_3
    move-object/from16 v12, p3

    move v7, v8

    goto :goto_3

    :cond_4
    move-object/from16 v12, p3

    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_5
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    return-object v5

    :array_0
    .array-data 2
        0xfs
        0x7as
        0xc8s
    .end array-data

    nop

    :array_1
    .array-data 2
        0xe0s
        0x7as
        0x8as
        0xdas
        0xb3s
        0x97s
        0xbfs
        0x9cs
        0x6bs
        0x63s
        0xf2s
        0x51s
        0xcfs
        0xcas
        0x92s
        0x9as
        0x90s
        0x31s
        0x82s
        0x96s
        0xfds
        0x6ds
        0xd8s
        0x37s
        0x7cs
        0x22s
        0x10s
    .end array-data
.end method

.method public a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/netease/mobsec/grow/y;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    :try_start_0
    invoke-virtual {v1, v0, v2, v3, v6}, Lcom/netease/mobsec/grow/t;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobsec/grow/y;)Lcom/netease/mobsec/grow/t$a;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_6

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, v0, 0x1

    const/16 v10, 0x2b

    const/4 v11, 0x6

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/16 v14, 0x5c

    const/4 v15, 0x2

    const/16 v16, 0x77

    const/16 v17, 0x16

    const/16 v18, 0x14

    const/16 v19, 0xc

    const/16 v20, 0x7

    const/4 v5, 0x5

    const/16 v21, 0x8

    const/16 v9, 0x17

    if-ge v0, v5, :cond_4

    :try_start_1
    new-array v0, v9, [C

    const/16 v9, 0xb8

    aput-char v9, v0, v8

    const/16 v9, 0xb3

    aput-char v9, v0, v7

    aput-char v14, v0, v15

    const/16 v9, 0xc8

    aput-char v9, v0, v13

    aput-char v21, v0, v12

    const/16 v9, 0xf9

    aput-char v9, v0, v5

    const/16 v5, 0xdc

    aput-char v5, v0, v11

    aput-char v10, v0, v20

    const/16 v5, 0xbf

    aput-char v5, v0, v21

    const/16 v5, 0x70

    const/16 v9, 0x9

    aput-char v5, v0, v9

    const/16 v5, 0xa

    aput-char v18, v0, v5

    const/16 v5, 0xb

    const/16 v9, 0xf0

    aput-char v9, v0, v5

    const/16 v5, 0xce

    aput-char v5, v0, v19

    const/16 v5, 0xd

    const/16 v9, 0x33

    aput-char v9, v0, v5

    const/16 v5, 0xe

    const/16 v9, 0xdf

    aput-char v9, v0, v5

    const/16 v5, 0xf

    aput-char v17, v0, v5

    const/16 v5, 0x10

    const/16 v9, 0x1a

    aput-char v9, v0, v5

    const/16 v5, 0x11

    const/16 v9, 0xae

    aput-char v9, v0, v5

    const/16 v5, 0x12

    aput-char v16, v0, v5

    const/16 v5, 0x13

    const/16 v9, 0x6c

    aput-char v9, v0, v5

    const/16 v5, 0xec

    aput-char v5, v0, v18

    const/16 v5, 0x15

    const/16 v9, 0xd0

    aput-char v9, v0, v5

    const/16 v5, 0x23

    aput-char v5, v0, v17

    const-string v5, "\u035f\u029f\u0313\u02f7\u0260\u02a3"

    invoke-static {v0, v5}, Lcom/netease/mobsec/grow/t;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v8

    .line 3
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v9, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 4
    :try_start_2
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    :try_start_3
    iget-object v0, v6, Lcom/netease/mobsec/grow/t$a;->a:Ljava/util/zip/ZipFile;

    iget-object v5, v6, Lcom/netease/mobsec/grow/t$a;->b:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v10, 0x0

    const/16 v0, 0x1000

    :try_start_5
    new-array v0, v0, [B

    .line 5
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J

    move-result-wide v12
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v0, v10, v12

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    :try_start_6
    invoke-virtual {v1, v5}, Lcom/netease/mobsec/grow/t;->a(Ljava/io/Closeable;)V

    invoke-virtual {v1, v9}, Lcom/netease/mobsec/grow/t;->a(Ljava/io/Closeable;)V

    invoke-virtual {v4, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v4, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v4, v7}, Ljava/io/File;->setWritable(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iget-object v0, v6, Lcom/netease/mobsec/grow/t$a;->a:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    :cond_2
    return-void

    .line 7
    :cond_3
    :try_start_8
    invoke-virtual {v9, v0, v8, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    int-to-long v12, v12

    add-long/2addr v10, v12

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v5

    move-object v5, v9

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    :goto_2
    move-object v2, v5

    const/4 v5, 0x0

    .line 8
    :goto_3
    :try_start_9
    invoke-virtual {v1, v2}, Lcom/netease/mobsec/grow/t;->a(Ljava/io/Closeable;)V

    invoke-virtual {v1, v5}, Lcom/netease/mobsec/grow/t;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    const/4 v5, 0x0

    :catch_2
    const/4 v9, 0x0

    .line 6
    :catch_3
    :goto_4
    invoke-virtual {v1, v5}, Lcom/netease/mobsec/grow/t;->a(Ljava/io/Closeable;)V

    .line 8
    invoke-virtual {v1, v9}, Lcom/netease/mobsec/grow/t;->a(Ljava/io/Closeable;)V

    :catch_4
    :goto_5
    move v0, v2

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x31

    new-array v0, v0, [C

    const/16 v2, 0x41

    aput-char v2, v0, v8

    const/16 v2, 0xc7

    aput-char v2, v0, v7

    const/16 v3, 0xa8

    aput-char v3, v0, v15

    const/16 v4, 0x95

    aput-char v4, v0, v13

    aput-char v3, v0, v12

    const/16 v3, 0x9e

    aput-char v3, v0, v5

    const/16 v3, 0xe4

    aput-char v3, v0, v11

    const/16 v3, 0xf7

    aput-char v3, v0, v20

    aput-char v19, v0, v21

    const/16 v5, 0x9

    aput-char v3, v0, v5

    const/16 v3, 0xa

    const/16 v5, 0x94

    aput-char v5, v0, v3

    const/16 v3, 0xb

    aput-char v9, v0, v3

    const/16 v3, 0x46

    aput-char v3, v0, v19

    const/16 v3, 0xd

    const/16 v5, 0x74

    aput-char v5, v0, v3

    const/16 v3, 0xe

    const/16 v5, 0x94

    aput-char v5, v0, v3

    const/16 v3, 0xf

    const/16 v5, 0xc1

    aput-char v5, v0, v3

    const/16 v3, 0x10

    const/16 v5, 0x9f

    aput-char v5, v0, v3

    const/16 v3, 0x11

    aput-char v16, v0, v3

    const/16 v3, 0x12

    const/16 v5, 0x7f

    aput-char v5, v0, v3

    const/16 v3, 0x13

    const/16 v5, 0xa5

    aput-char v5, v0, v3

    const/16 v3, 0x3f

    aput-char v3, v0, v18

    const/16 v3, 0x15

    const/16 v5, 0xc9

    aput-char v5, v0, v3

    const/16 v3, 0x65

    aput-char v3, v0, v17

    const/16 v3, 0xbe

    aput-char v3, v0, v9

    const/16 v3, 0x18

    const/16 v5, 0x87

    aput-char v5, v0, v3

    const/16 v3, 0x19

    const/16 v5, 0x6c

    aput-char v5, v0, v3

    const/16 v3, 0x1a

    const/16 v5, 0xc6

    aput-char v5, v0, v3

    const/16 v3, 0x1b

    const/16 v5, 0xc1

    aput-char v5, v0, v3

    const/16 v3, 0x1c

    const/16 v5, 0x4c

    aput-char v5, v0, v3

    const/16 v3, 0x1d

    const/16 v5, 0x69

    aput-char v5, v0, v3

    const/16 v3, 0x1e

    const/16 v5, 0xbc

    aput-char v5, v0, v3

    const/16 v3, 0x1f

    aput-char v4, v0, v3

    const/16 v3, 0x20

    const/16 v4, 0xce

    aput-char v4, v0, v3

    const/16 v3, 0x21

    aput-char v16, v0, v3

    const/16 v3, 0x22

    aput-char v9, v0, v3

    const/16 v3, 0x23

    const/16 v4, 0x3e

    aput-char v4, v0, v3

    const/16 v3, 0x24

    const/16 v4, 0xc4

    aput-char v4, v0, v3

    const/16 v3, 0x25

    const/16 v4, 0x5d

    aput-char v4, v0, v3

    const/16 v3, 0x26

    const/16 v4, 0xf5

    aput-char v4, v0, v3

    const/16 v3, 0x27

    aput-char v20, v0, v3

    const/16 v3, 0x28

    aput-char v2, v0, v3

    const/16 v2, 0x29

    const/16 v3, 0x19

    aput-char v3, v0, v2

    const/16 v2, 0x2a

    const/16 v3, 0xff

    aput-char v3, v0, v2

    const/16 v2, 0xc3

    aput-char v2, v0, v10

    const/16 v2, 0x2c

    aput-char v9, v0, v2

    const/16 v2, 0x2d

    const/16 v3, 0x6d

    aput-char v3, v0, v2

    const/16 v2, 0x2e

    aput-char v21, v0, v2

    const/16 v2, 0x2f

    const/16 v3, 0x25

    aput-char v3, v0, v2

    const/16 v2, 0x30

    aput-char v14, v0, v2

    const-string v2, "\u031b\u02d0\u02cc\u0361\u0355\u0269"

    invoke-static {v0, v2}, Lcom/netease/mobsec/grow/t;->a([CLjava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    iget-object v0, v6, Lcom/netease/mobsec/grow/t$a;->a:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    :cond_5
    return-void

    :cond_6
    :try_start_b
    invoke-virtual {v1, v0, v3}, Lcom/netease/mobsec/grow/t;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v5, v6

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v4, v0

    :try_start_c
    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    :goto_6
    new-instance v4, Lcom/netease/mobsec/grow/u;

    invoke-direct {v4, v3, v2, v0}, Lcom/netease/mobsec/grow/u;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_4
    move-exception v0

    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_7

    :try_start_d
    iget-object v2, v5, Lcom/netease/mobsec/grow/t$a;->a:Ljava/util/zip/ZipFile;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :catch_7
    :cond_7
    throw v0
.end method

.method public final a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    array-length v3, v0

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object p1, v3, v1

    array-length p1, v0

    invoke-static {v0, v1, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object p1, v0, v1

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    const-string v3, "\u0344\u02ce\u0342\u0311\u02ea\u02be"

    invoke-static {v2, v3}, Lcom/netease/mobsec/grow/t;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    const-string v3, "\u02b2\u02ca\u029e\u0322\u0318\u0356"

    invoke-static {v2, v3}, Lcom/netease/mobsec/grow/t;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    const-string v2, "\u026d\u0383\u02e9\u030d\u0298\u0316"

    invoke-static {v1, v2}, Lcom/netease/mobsec/grow/t;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1}, Lcom/netease/mobsec/grow/t;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v4, v5, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    nop

    :array_0
    .array-data 2
        0x9es
        0x8as
        0x95s
    .end array-data

    nop

    :array_1
    .array-data 2
        0xe8s
        0xc7s
        0xb1s
        0x5ds
    .end array-data

    :array_2
    .array-data 2
        0x9fs
        0xcas
        0xb1s
    .end array-data
.end method
