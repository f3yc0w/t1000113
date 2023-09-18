.class public Lcom/netease/mobsec/grow/GrowDevice;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobsec/grow/GrowDevice$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/util/concurrent/ExecutorService;

.field public static final c:Ljava/util/concurrent/CountDownLatch;

.field public static volatile d:Ljava/lang/String;

.field public static volatile e:Ljava/lang/String;

.field public static final f:Z

.field public static volatile g:Ljava/lang/String;


# instance fields
.field public volatile h:Z

.field public i:Lcom/netease/mobsec/grow/q;

.field public j:Lcom/netease/mobsec/grow/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const-string v1, "\u033f\u02fa\u02c5\u033c\u02ce\u0383"

    invoke-static {v0, v1}, Lcom/netease/mobsec/grow/GrowDevice;->ae4f51([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mobsec/grow/GrowDevice;->a:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/netease/mobsec/grow/GrowDevice;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/netease/mobsec/grow/GrowDevice;->c:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    sput-object v0, Lcom/netease/mobsec/grow/GrowDevice;->d:Ljava/lang/String;

    sput-object v0, Lcom/netease/mobsec/grow/GrowDevice;->e:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/netease/mobsec/grow/GrowDevice;->f:Z

    sput-object v0, Lcom/netease/mobsec/grow/GrowDevice;->g:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x4s
        0xcds
        0xffs
        0x1s
        0xdcs
        0x2fs
        0x61s
        0xb9s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mobsec/grow/GrowDevice;->h:Z

    return-void
.end method

.method public static ae4f51([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit16 v2, v2, -0xf9

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

.method public static get()Lcom/netease/mobsec/grow/GrowDevice;
    .locals 1

    sget-object v0, Lcom/netease/mobsec/grow/GrowDevice$b;->a:Lcom/netease/mobsec/grow/GrowDevice;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized getToken()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mobsec/grow/GrowDevice;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/mobsec/grow/GrowDevice;->j:Lcom/netease/mobsec/grow/b0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    sget-object v0, Lcom/netease/mobsec/grow/GrowDevice;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/netease/mobsec/grow/GrowDevice;->g:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/netease/mobsec/grow/GrowDevice;->j:Lcom/netease/mobsec/grow/b0;

    .line 1
    iget-object v0, v0, Lcom/netease/mobsec/grow/b0;->c:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/netease/mobsec/grow/b0;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sput-object v0, Lcom/netease/mobsec/grow/GrowDevice;->g:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/mobsec/grow/GrowDevice;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_a

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/16 v2, 0x47

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0x9

    const/16 v11, 0x12

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/16 v14, 0x8

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0xa

    const/4 v3, 0x1

    const/16 v21, 0x5

    const/4 v4, 0x0

    .line 1
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-array v6, v11, [C

    const/16 v24, 0xa3

    aput-char v24, v6, v4

    aput-char v2, v6, v3

    const/16 v24, 0x5b

    aput-char v24, v6, v17

    const/16 v24, 0xe1

    aput-char v24, v6, v16

    const/16 v24, 0x95

    aput-char v24, v6, v15

    const/16 v24, 0xe3

    aput-char v24, v6, v21

    aput-char v18, v6, v13

    const/16 v24, 0xd6

    aput-char v24, v6, v12

    const/16 v24, 0xfb

    aput-char v24, v6, v14

    const/16 v24, 0xc0

    aput-char v24, v6, v10

    aput-char v18, v6, v18

    const/16 v24, 0x61

    aput-char v24, v6, v9

    const/16 v24, 0x2b

    aput-char v24, v6, v8

    const/16 v24, 0xb6

    aput-char v24, v6, v7

    const/16 v24, 0xeb

    const/16 v23, 0xe

    aput-char v24, v6, v23

    const/16 v24, 0xa0

    const/16 v22, 0xf

    aput-char v24, v6, v22

    const/16 v24, 0xf3

    const/16 v20, 0x10

    aput-char v24, v6, v20

    const/16 v24, 0x1b

    const/16 v19, 0x11

    aput-char v24, v6, v19

    const-string v11, "\u0360\u02fc\u027f\u034e\u02bd\u035e"

    invoke-static {v6, v11}, Lcom/netease/mobsec/grow/h;->b([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_1

    const/16 v5, 0x1a

    :try_start_1
    new-array v5, v5, [C

    const/16 v6, 0x1b

    aput-char v6, v5, v4

    const/16 v6, 0x76

    aput-char v6, v5, v3

    const/16 v6, 0x81

    aput-char v6, v5, v17

    const/16 v6, 0x28

    aput-char v6, v5, v16

    const/16 v6, 0xee

    aput-char v6, v5, v15

    const/16 v6, 0xa0

    aput-char v6, v5, v21

    const/16 v6, 0x65

    aput-char v6, v5, v13

    const/16 v6, 0x7e

    aput-char v6, v5, v12

    const/16 v6, 0xfe

    aput-char v6, v5, v14

    const/16 v6, 0xe9

    aput-char v6, v5, v10

    const/16 v6, 0x60

    aput-char v6, v5, v18

    const/16 v11, 0xc9

    aput-char v11, v5, v9

    const/16 v11, 0xee

    aput-char v11, v5, v8

    const/16 v11, 0xe6

    aput-char v11, v5, v7

    const/16 v11, 0xe

    aput-char v2, v5, v11

    const/16 v2, 0xba

    const/16 v11, 0xf

    aput-char v2, v5, v11

    const/16 v2, 0xe1

    const/16 v11, 0x10

    aput-char v2, v5, v11

    const/16 v2, 0x11

    aput-char v6, v5, v2

    const/16 v2, 0x3b

    const/16 v11, 0x12

    aput-char v2, v5, v11

    const/16 v2, 0x13

    const/16 v11, 0xd5

    aput-char v11, v5, v2

    const/16 v2, 0x14

    const/16 v11, 0x2b

    aput-char v11, v5, v2

    const/16 v2, 0x15

    const/16 v11, 0xa2

    aput-char v11, v5, v2

    const/16 v2, 0x16

    aput-char v6, v5, v2

    const/16 v2, 0x17

    const/16 v6, 0xe0

    aput-char v6, v5, v2

    const/16 v2, 0x18

    const/16 v6, 0xfa

    aput-char v6, v5, v2

    const/16 v2, 0x19

    const/16 v6, 0xd6

    aput-char v6, v5, v2

    const-string v2, "\u037a\u0278\u035a\u0311\u0355\u034e"

    .line 2
    invoke-static {v5, v2}, Lcom/netease/mobsec/grow/h;->b([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v5, 0x12

    new-array v5, v5, [C

    const/16 v6, 0xc5

    aput-char v6, v5, v4

    const/16 v6, 0x7b

    aput-char v6, v5, v3

    const/16 v6, 0xb1

    aput-char v6, v5, v17

    const/16 v6, 0xb8

    aput-char v6, v5, v16

    const/16 v6, 0x40

    aput-char v6, v5, v15

    const/16 v6, 0x6c

    aput-char v6, v5, v21

    const/16 v6, 0xa2

    aput-char v6, v5, v13

    aput-char v21, v5, v12

    const/16 v6, 0x91

    aput-char v6, v5, v14

    const/16 v6, 0xf2

    aput-char v6, v5, v10

    aput-char v4, v5, v18

    const/16 v6, 0x37

    aput-char v6, v5, v9

    const/16 v6, 0xc3

    aput-char v6, v5, v8

    const/16 v6, 0xc0

    aput-char v6, v5, v7

    const/16 v6, 0x14

    const/16 v7, 0xe

    aput-char v6, v5, v7

    const/16 v6, 0x2a

    const/16 v7, 0xf

    aput-char v6, v5, v7

    const/16 v6, 0xfe

    const/16 v7, 0x10

    aput-char v6, v5, v7

    const/16 v6, 0x57

    const/16 v7, 0x11

    aput-char v6, v5, v7

    const-string v6, "\u0323\u025b\u02cd\u0295\u0341\u0368"

    invoke-static {v5, v6}, Lcom/netease/mobsec/grow/h;->b([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v5, 0x0

    :cond_1
    :goto_1
    if-nez v5, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_9

    .line 4
    invoke-static {}, Lcom/netease/mobsec/grow/h;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-boolean v2, v1, Lcom/netease/mobsec/grow/GrowDevice;->h:Z

    if-eqz v2, :cond_4

    return-void

    :cond_4
    :try_start_2
    new-array v2, v14, [C

    const/16 v5, 0x59

    aput-char v5, v2, v4

    const/16 v5, 0xb2

    aput-char v5, v2, v3

    const/16 v3, 0x43

    aput-char v3, v2, v17

    const/16 v3, 0x31

    aput-char v3, v2, v16

    const/16 v3, 0x6b

    aput-char v3, v2, v15

    aput-char v21, v2, v21

    const/16 v3, 0xce

    aput-char v3, v2, v13

    const/16 v3, 0xcb

    aput-char v3, v2, v12

    const-string v3, "\u037b\u0275\u0304\u02ad\u0348\u0318"

    invoke-static {v2, v3}, Lcom/netease/mobsec/grow/GrowDevice;->ae4f51([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/netease/mobsec/grow/y;

    .line 6
    new-instance v5, Lcom/netease/mobsec/grow/a0;

    invoke-direct {v5}, Lcom/netease/mobsec/grow/a0;-><init>()V

    new-instance v6, Lcom/netease/mobsec/grow/t;

    invoke-direct {v6}, Lcom/netease/mobsec/grow/t;-><init>()V

    invoke-direct {v3, v5, v6}, Lcom/netease/mobsec/grow/y;-><init>(Lcom/netease/mobsec/grow/w;Lcom/netease/mobsec/grow/v;)V

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v3, v0, v2, v5, v5}, Lcom/netease/mobsec/grow/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mobsec/grow/x;)V

    .line 8
    sget-boolean v2, Lcom/netease/mobsec/grow/GrowDevice;->f:Z

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/netease/mobsec/grow/f;

    invoke-direct {v3, v1, v0}, Lcom/netease/mobsec/grow/f;-><init>(Lcom/netease/mobsec/grow/GrowDevice;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/netease/mobsec/grow/g;

    invoke-direct {v3, v1, v0}, Lcom/netease/mobsec/grow/g;-><init>(Lcom/netease/mobsec/grow/GrowDevice;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 9
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {v0, v2, v3, v4}, Lcom/netease/mobsec/grow/poly/a;->e6615a3e4d79(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 10
    :goto_4
    iput-boolean v4, v1, Lcom/netease/mobsec/grow/GrowDevice;->h:Z

    .line 11
    sget-object v2, Lcom/netease/mobsec/grow/b0;->b:Lcom/netease/mobsec/grow/b0;

    if-nez v2, :cond_8

    const-class v2, Lcom/netease/mobsec/grow/b0;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    sget-object v3, Lcom/netease/mobsec/grow/b0;->b:Lcom/netease/mobsec/grow/b0;

    if-nez v3, :cond_7

    new-instance v3, Lcom/netease/mobsec/grow/b0;

    invoke-direct {v3, v0}, Lcom/netease/mobsec/grow/b0;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/netease/mobsec/grow/b0;->b:Lcom/netease/mobsec/grow/b0;

    :cond_7
    monitor-exit v2

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_8
    :goto_5
    sget-object v2, Lcom/netease/mobsec/grow/b0;->b:Lcom/netease/mobsec/grow/b0;

    .line 12
    iput-object v2, v1, Lcom/netease/mobsec/grow/GrowDevice;->j:Lcom/netease/mobsec/grow/b0;

    new-instance v2, Lcom/netease/mobsec/grow/q;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/netease/mobsec/grow/q;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/netease/mobsec/grow/GrowDevice;->i:Lcom/netease/mobsec/grow/q;

    sget-object v0, Lcom/netease/mobsec/grow/GrowDevice;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/netease/mobsec/grow/GrowDevice$a;

    invoke-direct {v2, v1}, Lcom/netease/mobsec/grow/GrowDevice$a;-><init>(Lcom/netease/mobsec/grow/GrowDevice;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    sget-object v2, Lcom/netease/mobsec/grow/GrowDevice;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x20

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    const-string v5, "\u0327\u031a\u0371\u029d\u0379\u0271"

    invoke-static {v4, v5}, Lcom/netease/mobsec/grow/GrowDevice;->ae4f51([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_6
    return-void

    :cond_a
    :goto_7
    sget-object v0, Lcom/netease/mobsec/grow/GrowDevice;->a:Ljava/lang/String;

    const/16 v2, 0x23

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    const-string v3, "\u02e5\u0280\u0369\u037b\u0325\u035c"

    invoke-static {v2, v3}, Lcom/netease/mobsec/grow/GrowDevice;->ae4f51([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 2
        0x3s
        0x9bs
        0x54s
        0xa3s
        0xds
        0x6s
        0x42s
        0xbds
        0x96s
        0x54s
        0xf8s
        0x38s
        0x96s
        0xfes
        0x48s
        0x8cs
        0x1s
        0xd8s
        0xb6s
        0x3cs
        0x36s
        0x7ds
        0x49s
        0xaas
        0x3es
        0xc5s
        0x8fs
        0xees
        0xb7s
        0x69s
        0x86s
        0xe4s
    .end array-data

    :array_1
    .array-data 2
        0x4bs
        0x70s
        0x5bs
        0xd6s
        0xa2s
        0xb3s
        0xfbs
        0x8es
        0x99s
        0xf9s
        0x76s
        0xd4s
        0x7es
        0x34s
        0x4fs
        0xabs
        0x36s
        0x3cs
        0x3fs
        0xfs
        0x29s
        0x41s
        0x46s
        0x87s
        0xe7s
        0x74s
        0x2es
        0x79s
        0xces
        0xa6s
        0x76s
        0x4fs
        0xd8s
        0xb8s
        0x76s
    .end array-data
.end method
