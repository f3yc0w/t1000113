.class public Lcom/netease/mobsec/grow/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const-string v1, "\u02e3\u0261\u02e0\u02cf\u02bd\u0327"

    invoke-static {v0, v1}, Lcom/netease/mobsec/grow/p;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mobsec/grow/p;->a:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x79s
        0x88s
        0x8fs
        0x33s
    .end array-data
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 29

    move-object/from16 v1, p0

    const-class v2, Lcom/netease/mobsec/grow/p;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    monitor-exit v2

    return-object v4

    :cond_0
    const/16 v0, 0x92

    const/16 v3, 0x1d

    const/16 v9, 0xa

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v4, 0x11

    const/16 v16, 0xe

    const/16 v17, 0x9

    const/16 v18, 0x8

    const/4 v5, 0x0

    const/16 v20, 0xf

    const/4 v6, 0x1

    .line 1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-array v8, v4, [C

    const/16 v24, 0xe5

    aput-char v24, v8, v5

    const/16 v24, 0xb9

    aput-char v24, v8, v6

    const/16 v24, 0x5f

    aput-char v24, v8, v15

    const/16 v24, 0xf3

    aput-char v24, v8, v14

    const/16 v24, 0x4c

    aput-char v24, v8, v13

    const/16 v24, 0x3f

    aput-char v24, v8, v12

    aput-char v3, v8, v11

    const/16 v24, 0x88

    aput-char v24, v8, v10

    const/16 v24, 0xe8

    aput-char v24, v8, v18

    aput-char v0, v8, v17

    const/16 v24, 0x6d

    aput-char v24, v8, v9

    const/16 v24, 0xfd

    const/16 v23, 0xb

    aput-char v24, v8, v23

    const/16 v24, 0x42

    const/16 v22, 0xc

    aput-char v24, v8, v22

    const/16 v24, 0x52

    const/16 v21, 0xd

    aput-char v24, v8, v21

    const/16 v24, 0xbf

    aput-char v24, v8, v16

    const/16 v24, 0xab

    aput-char v24, v8, v20

    const/16 v24, 0xda

    const/16 v19, 0x10

    aput-char v24, v8, v19

    const-string v0, "\u0377\u02dd\u034d\u02ca\u02bf\u027a"

    invoke-static {v8, v0}, Lcom/netease/mobsec/grow/p;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    const-wide/16 v25, 0x1

    cmp-long v0, v7, v25

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lt v0, v6, :cond_2

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    monitor-exit v2

    const/4 v7, 0x0

    return-object v7

    :cond_3
    const/4 v7, 0x0

    .line 2
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v8, Landroid/content/ComponentName;

    new-array v7, v4, [C

    const/16 v25, 0xaf

    aput-char v25, v7, v5

    const/16 v25, 0x27

    aput-char v25, v7, v6

    const/16 v25, 0xea

    aput-char v25, v7, v15

    const/16 v25, 0x76

    aput-char v25, v7, v14

    const/16 v25, 0xfa

    aput-char v25, v7, v13

    const/16 v25, 0x32

    aput-char v25, v7, v12

    const/16 v25, 0x70

    aput-char v25, v7, v11

    const/16 v25, 0xf7

    aput-char v25, v7, v10

    const/16 v25, 0x6d

    aput-char v25, v7, v18

    aput-char v16, v7, v17

    const/16 v25, 0xc2

    aput-char v25, v7, v9

    const/16 v25, 0xd8

    const/16 v23, 0xb

    aput-char v25, v7, v23

    const/16 v25, 0x71

    const/16 v22, 0xc

    aput-char v25, v7, v22

    const/16 v25, 0xdd

    const/16 v21, 0xd

    aput-char v25, v7, v21

    const/16 v25, 0x3b

    aput-char v25, v7, v16

    const/16 v25, 0x2f

    aput-char v25, v7, v20

    const/16 v25, 0x8d

    const/16 v19, 0x10

    aput-char v25, v7, v19

    const-string v3, "\u0301\u0331\u0331\u02f6\u0335\u02c3"

    invoke-static {v7, v3}, Lcom/netease/mobsec/grow/p;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x21

    new-array v7, v7, [C

    const/16 v26, 0xdc

    aput-char v26, v7, v5

    const/16 v26, 0x88

    aput-char v26, v7, v6

    const/16 v26, 0xbc

    aput-char v26, v7, v15

    const/16 v26, 0xe4

    aput-char v26, v7, v14

    const/16 v26, 0xfe

    aput-char v26, v7, v13

    aput-char v6, v7, v12

    const/16 v26, 0x85

    aput-char v26, v7, v11

    const/16 v26, 0x99

    aput-char v26, v7, v10

    const/16 v26, 0x42

    aput-char v26, v7, v18

    const/16 v26, 0xa5

    aput-char v26, v7, v17

    const/16 v26, 0xbe

    aput-char v26, v7, v9

    const/16 v26, 0x12

    const/16 v23, 0xb

    aput-char v26, v7, v23

    const/16 v27, 0x4a

    const/16 v22, 0xc

    aput-char v27, v7, v22

    const/16 v27, 0xc3

    const/16 v21, 0xd

    aput-char v27, v7, v21

    const/16 v27, 0x62

    aput-char v27, v7, v16

    const/16 v27, 0xbc

    aput-char v27, v7, v20

    const/16 v27, 0x91

    const/16 v19, 0x10

    aput-char v27, v7, v19

    const/16 v27, 0x52

    aput-char v27, v7, v4

    const/16 v27, 0x97

    aput-char v27, v7, v26

    const/16 v27, 0x13

    const/16 v28, 0x5b

    aput-char v28, v7, v27

    const/16 v27, 0x14

    const/16 v28, 0xc3

    aput-char v28, v7, v27

    const/16 v27, 0x15

    const/16 v28, 0xa4

    aput-char v28, v7, v27

    const/16 v27, 0x16

    const/16 v28, 0x77

    aput-char v28, v7, v27

    const/16 v27, 0x17

    const/16 v28, 0x23

    aput-char v28, v7, v27

    const/16 v27, 0x18

    const/16 v28, 0xdc

    aput-char v28, v7, v27

    const/16 v27, 0x19

    const/16 v28, 0x43

    aput-char v28, v7, v27

    const/16 v27, 0x1a

    aput-char v18, v7, v27

    const/16 v27, 0x1b

    const/16 v28, 0x3e

    aput-char v28, v7, v27

    const/16 v27, 0x1c

    const/16 v28, 0x3e

    aput-char v28, v7, v27

    const/16 v27, 0x2b

    const/16 v25, 0x1d

    aput-char v27, v7, v25

    const/16 v27, 0x1e

    const/16 v28, 0x6b

    aput-char v28, v7, v27

    const/16 v27, 0x1f

    const/16 v28, 0xfb

    aput-char v28, v7, v27

    const/16 v27, 0x20

    const/16 v28, 0x43

    aput-char v28, v7, v27

    const-string v4, "\u02a8\u0346\u0266\u0362\u0315\u0289"

    invoke-static {v7, v4}, Lcom/netease/mobsec/grow/p;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v3, 0x28

    new-array v3, v3, [C

    const/16 v4, 0x72

    aput-char v4, v3, v5

    const/16 v4, 0xaa

    aput-char v4, v3, v6

    const/16 v4, 0x39

    aput-char v4, v3, v15

    const/16 v4, 0xae

    aput-char v4, v3, v14

    const/16 v4, 0xfe

    aput-char v4, v3, v13

    const/16 v4, 0xd1

    aput-char v4, v3, v12

    const/16 v4, 0x4a

    aput-char v4, v3, v11

    const/16 v4, 0x92

    aput-char v4, v3, v10

    const/16 v4, 0xf9

    aput-char v4, v3, v18

    aput-char v20, v3, v17

    const/16 v4, 0xde

    aput-char v4, v3, v9

    const/16 v4, 0xf1

    const/16 v5, 0xb

    aput-char v4, v3, v5

    const/16 v4, 0xd4

    const/16 v5, 0xc

    aput-char v4, v3, v5

    const/16 v4, 0x5b

    const/16 v5, 0xd

    aput-char v4, v3, v5

    aput-char v17, v3, v16

    const/16 v4, 0x8d

    aput-char v4, v3, v20

    const/16 v4, 0x6f

    const/16 v5, 0x10

    aput-char v4, v3, v5

    const/16 v4, 0xc9

    const/16 v5, 0x11

    aput-char v4, v3, v5

    const/16 v4, 0xf3

    aput-char v4, v3, v26

    const/16 v4, 0x13

    const/16 v5, 0x90

    aput-char v5, v3, v4

    const/16 v4, 0x14

    const/16 v5, 0x57

    aput-char v5, v3, v4

    const/16 v4, 0x15

    aput-char v20, v3, v4

    const/16 v4, 0x16

    const/16 v5, 0xb6

    aput-char v5, v3, v4

    const/16 v4, 0x17

    const/16 v5, 0x72

    aput-char v5, v3, v4

    const/16 v4, 0x18

    const/16 v5, 0x3a

    aput-char v5, v3, v4

    const/16 v4, 0x19

    const/16 v5, 0xed

    aput-char v5, v3, v4

    const/16 v4, 0x1a

    const/16 v5, 0x4c

    aput-char v5, v3, v4

    const/16 v4, 0x1b

    const/16 v5, 0xd9

    aput-char v5, v3, v4

    const/16 v4, 0x1c

    const/16 v5, 0x9a

    aput-char v5, v3, v4

    const/16 v4, 0x57

    const/16 v5, 0x1d

    aput-char v4, v3, v5

    const/16 v4, 0x1e

    aput-char v20, v3, v4

    const/16 v4, 0x1f

    const/16 v5, 0xf6

    aput-char v5, v3, v4

    const/16 v4, 0x20

    aput-char v26, v3, v4

    const/16 v4, 0x21

    const/16 v5, 0xf2

    aput-char v5, v3, v4

    const/16 v4, 0x22

    const/16 v5, 0xc5

    aput-char v5, v3, v4

    const/16 v4, 0x23

    const/16 v5, 0xc4

    aput-char v5, v3, v4

    const/16 v4, 0x24

    const/16 v5, 0xd6

    aput-char v5, v3, v4

    const/16 v4, 0x25

    const/16 v5, 0xdc

    aput-char v5, v3, v4

    const/16 v4, 0x26

    const/16 v5, 0x92

    aput-char v5, v3, v4

    const/16 v4, 0x27

    const/16 v5, 0x28

    aput-char v5, v3, v4

    const-string v4, "\u02e9\u0319\u02da\u02f3\u0312\u031d"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/p;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Lcom/netease/mobsec/grow/o;

    invoke-direct {v3}, Lcom/netease/mobsec/grow/o;-><init>()V

    invoke-virtual {v1, v0, v3, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_6

    :try_start_3
    invoke-virtual {v3}, Lcom/netease/mobsec/grow/o;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 3
    sget v4, Lcom/netease/mobsec/grow/e$a;->a:I

    if-nez v0, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    const-string v4, "com.heytap.openid.IOpenID"

    invoke-interface {v0, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    if-eqz v4, :cond_5

    instance-of v5, v4, Lcom/netease/mobsec/grow/e;

    if-eqz v5, :cond_5

    check-cast v4, Lcom/netease/mobsec/grow/e;

    goto :goto_2

    :cond_5
    new-instance v4, Lcom/netease/mobsec/grow/e$a$a;

    invoke-direct {v4, v0}, Lcom/netease/mobsec/grow/e$a$a;-><init>(Landroid/os/IBinder;)V

    .line 4
    :goto_2
    invoke-static {v4, v1}, Lcom/netease/mobsec/grow/p;->a(Lcom/netease/mobsec/grow/e;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    :try_start_6
    throw v0

    :catch_2
    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_3
    :cond_6
    const/4 v4, 0x0

    :catch_4
    :goto_3
    monitor-exit v2

    return-object v4

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 6
    array-length p1, p0

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget-object p0, p0, p1

    .line 7
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    :try_start_1
    sget-object v1, Lcom/netease/mobsec/grow/p;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p0

    :goto_1
    if-ge p1, v2, :cond_0

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-object v0
.end method

.method public static a(Lcom/netease/mobsec/grow/e;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/mobsec/grow/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0xdc

    aput-char v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xbf

    aput-char v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xba

    aput-char v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x6d

    aput-char v4, v2, v3

    const-string v3, "\u0284\u0356\u0293\u02d4\u0336\u030d"

    invoke-static {v2, v3}, Lcom/netease/mobsec/grow/p;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, p1, v2}, Lcom/netease/mobsec/grow/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    return-object p0
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

    add-int/lit16 v2, v2, 0xc5

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3b

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
