.class public Lcom/netease/mobsec/grow/n;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field public static final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Lcom/netease/mobsec/grow/n;->a:Z

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/netease/mobsec/grow/n;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 28

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/16 v3, 0x1a

    if-eq v0, v2, :cond_1d

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    new-array v5, v4, [C

    fill-array-data v5, :array_0

    const-string v6, "\u02ea\u02a3\u0349\u034d\u036e\u0309"

    invoke-static {v5, v6}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v7, 0x18

    const/4 v8, 0x2

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/16 v11, 0x8

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x5

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/netease/mobsec/grow/n;->a:Z

    if-eqz v5, :cond_3

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x1d

    new-array v5, v2, [C

    const/16 v16, 0x6d

    aput-char v16, v5, v14

    const/16 v17, 0x26

    aput-char v17, v5, v13

    const/16 v17, 0xb0

    aput-char v17, v5, v8

    const/16 v17, 0xda

    aput-char v17, v5, v12

    const/16 v17, 0x7d

    aput-char v17, v5, v4

    const/16 v17, 0x71

    aput-char v17, v5, v15

    const/16 v17, 0x1b

    aput-char v17, v5, v10

    const/16 v18, 0x95

    aput-char v18, v5, v9

    const/16 v18, 0x38

    aput-char v18, v5, v11

    const/16 v18, 0x9

    aput-char v13, v5, v18

    const/16 v19, 0x4b

    const/16 v20, 0xa

    aput-char v19, v5, v20

    const/16 v19, 0xa3

    const/16 v21, 0xb

    aput-char v19, v5, v21

    const/16 v19, 0xc

    const/16 v22, 0xc5

    aput-char v22, v5, v19

    const/16 v19, 0xd

    const/16 v22, 0x99

    aput-char v22, v5, v19

    const/16 v19, 0x97

    const/16 v22, 0xe

    aput-char v19, v5, v22

    const/16 v19, 0x62

    const/16 v23, 0xf

    aput-char v19, v5, v23

    const/16 v19, 0x10

    const/16 v24, 0x6b

    aput-char v24, v5, v19

    const/16 v19, 0x11

    aput-char v20, v5, v19

    const/16 v19, 0x12

    const/16 v24, 0xe4

    aput-char v24, v5, v19

    const/16 v19, 0x13

    const/16 v24, 0xa7

    aput-char v24, v5, v19

    const/16 v19, 0x14

    const/16 v24, 0x71

    aput-char v24, v5, v19

    const/16 v19, 0x15

    const/16 v24, 0xca

    aput-char v24, v5, v19

    const/16 v19, 0x16

    const/16 v24, 0xda

    aput-char v24, v5, v19

    const/16 v19, 0x53

    const/16 v24, 0x17

    aput-char v19, v5, v24

    const/16 v19, 0x4b

    aput-char v19, v5, v7

    const/16 v19, 0x2c

    const/16 v25, 0x19

    aput-char v19, v5, v25

    aput-char v16, v5, v3

    const/16 v19, 0x7d

    aput-char v19, v5, v17

    const/16 v19, 0x1c

    const/16 v26, 0xd8

    aput-char v26, v5, v19

    const-string v6, "\u0306\u0314\u02e2\u036f\u0307\u02f6"

    invoke-static {v5, v6}, Lcom/netease/mobsec/grow/h;->e([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v5, 0x1e

    new-array v5, v5, [C

    const/16 v6, 0x45

    aput-char v6, v5, v14

    const/16 v6, 0xdd

    aput-char v6, v5, v13

    const/16 v6, 0x58

    aput-char v6, v5, v8

    const/16 v6, 0xac

    aput-char v6, v5, v12

    aput-char v15, v5, v4

    const/16 v6, 0xe5

    aput-char v6, v5, v15

    aput-char v12, v5, v10

    const/16 v6, 0x47

    aput-char v6, v5, v9

    const/16 v6, 0x90

    aput-char v6, v5, v11

    const/16 v6, 0x3c

    aput-char v6, v5, v18

    const/16 v6, 0xbc

    aput-char v6, v5, v20

    const/16 v6, 0x1e

    aput-char v6, v5, v21

    const/16 v6, 0xc

    const/16 v26, 0xdd

    aput-char v26, v5, v6

    const/16 v6, 0xd

    aput-char v16, v5, v6

    const/16 v6, 0xe8

    aput-char v6, v5, v22

    const/16 v6, 0x47

    aput-char v6, v5, v23

    const/16 v6, 0x10

    aput-char v4, v5, v6

    const/16 v6, 0x11

    const/16 v26, 0x1f

    aput-char v26, v5, v6

    const/16 v6, 0x12

    const/16 v26, 0x9d

    aput-char v26, v5, v6

    const/16 v6, 0x13

    const/16 v26, 0xad

    aput-char v26, v5, v6

    const/16 v6, 0x14

    const/16 v26, 0xca

    aput-char v26, v5, v6

    const/16 v6, 0x15

    aput-char v18, v5, v6

    const/16 v6, 0x16

    const/16 v26, 0x66

    aput-char v26, v5, v6

    const/16 v6, 0x82

    aput-char v6, v5, v24

    const/16 v6, 0xde

    aput-char v6, v5, v7

    const/16 v6, 0x33

    aput-char v6, v5, v25

    const/16 v6, 0x7a

    aput-char v6, v5, v3

    aput-char v25, v5, v17

    const/16 v6, 0x1c

    aput-char v14, v5, v6

    aput-char v20, v5, v2

    const-string v6, "\u0347\u0287\u02a1\u0381\u0343\u025a"

    invoke-static {v5, v6}, Lcom/netease/mobsec/grow/h;->e([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Landroid/content/ComponentName;

    new-array v6, v2, [C

    const/16 v26, 0x90

    aput-char v26, v6, v14

    const/16 v26, 0x2d

    aput-char v26, v6, v13

    const/16 v26, 0x73

    aput-char v26, v6, v8

    const/16 v26, 0xe0

    aput-char v26, v6, v12

    const/16 v26, 0x4f

    aput-char v26, v6, v4

    aput-char v22, v6, v15

    const/16 v26, 0xb7

    aput-char v26, v6, v10

    const/16 v26, 0x96

    aput-char v26, v6, v9

    const/16 v26, 0x7b

    aput-char v26, v6, v11

    aput-char v12, v6, v18

    const/16 v26, 0xa1

    aput-char v26, v6, v20

    const/16 v26, 0xad

    aput-char v26, v6, v21

    const/16 v26, 0xc

    aput-char v18, v6, v26

    const/16 v26, 0xd

    const/16 v27, 0xa2

    aput-char v27, v6, v26

    const/16 v26, 0x4c

    aput-char v26, v6, v22

    const/16 v26, 0x98

    aput-char v26, v6, v23

    const/16 v26, 0x10

    const/16 v27, 0x41

    aput-char v27, v6, v26

    const/16 v26, 0x11

    const/16 v27, 0x35

    aput-char v27, v6, v26

    const/16 v26, 0x12

    const/16 v27, 0xd1

    aput-char v27, v6, v26

    const/16 v26, 0x13

    const/16 v27, 0xa4

    aput-char v27, v6, v26

    const/16 v26, 0x14

    const/16 v27, 0x32

    aput-char v27, v6, v26

    const/16 v26, 0x15

    const/16 v27, 0x98

    aput-char v27, v6, v26

    const/16 v26, 0x16

    const/16 v27, 0x66

    aput-char v27, v6, v26

    const/16 v26, 0xcd

    aput-char v26, v6, v24

    const/16 v26, 0x6e

    aput-char v26, v6, v7

    const/16 v26, 0x27

    aput-char v26, v6, v25

    const/16 v26, 0x46

    aput-char v26, v6, v3

    const/16 v26, 0x87

    aput-char v26, v6, v17

    const/16 v26, 0x1c

    const/16 v27, 0xc4

    aput-char v27, v6, v26

    const-string v2, "\u02ed\u030c\u02d8\u033f\u0274\u02c9"

    invoke-static {v6, v2}, Lcom/netease/mobsec/grow/h;->e([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x35

    new-array v6, v6, [C

    const/16 v27, 0x39

    aput-char v27, v6, v14

    const/16 v27, 0xc3

    aput-char v27, v6, v13

    const/16 v27, 0x5a

    aput-char v27, v6, v8

    const/16 v8, 0x37

    aput-char v8, v6, v12

    const/16 v8, 0xa1

    aput-char v8, v6, v4

    const/16 v4, 0xc3

    aput-char v4, v6, v15

    const/16 v4, 0x6f

    aput-char v4, v6, v10

    const/16 v4, 0x39

    aput-char v4, v6, v9

    const/16 v4, 0x92

    aput-char v4, v6, v11

    const/16 v4, 0xb4

    aput-char v4, v6, v18

    const/16 v4, 0x37

    aput-char v4, v6, v20

    aput-char v11, v6, v21

    const/16 v4, 0xc

    const/16 v8, 0x70

    aput-char v8, v6, v4

    const/16 v4, 0xd

    const/16 v8, 0x3d

    aput-char v8, v6, v4

    const/16 v4, 0x25

    aput-char v4, v6, v22

    const/16 v4, 0x4c

    aput-char v4, v6, v23

    const/16 v4, 0x10

    const/16 v8, 0x3f

    aput-char v8, v6, v4

    const/16 v4, 0x11

    const/16 v8, 0x69

    aput-char v8, v6, v4

    const/16 v4, 0x12

    const/16 v8, 0x39

    aput-char v8, v6, v4

    const/16 v4, 0x13

    const/16 v8, 0xfb

    aput-char v8, v6, v4

    const/16 v4, 0x14

    const/16 v8, 0x4b

    aput-char v8, v6, v4

    const/16 v4, 0x15

    const/16 v8, 0xee

    aput-char v8, v6, v4

    const/16 v4, 0x16

    const/16 v8, 0xa6

    aput-char v8, v6, v4

    const/16 v4, 0xf9

    aput-char v4, v6, v24

    const/16 v4, 0xf6

    aput-char v4, v6, v7

    const/16 v4, 0x88

    aput-char v4, v6, v25

    aput-char v23, v6, v3

    const/16 v3, 0x43

    aput-char v3, v6, v17

    const/16 v3, 0x1c

    aput-char v15, v6, v3

    const/16 v3, 0x21

    const/16 v4, 0x1d

    aput-char v3, v6, v4

    const/16 v3, 0x1e

    const/16 v4, 0xca

    aput-char v4, v6, v3

    const/16 v3, 0x1f

    const/16 v4, 0xf8

    aput-char v4, v6, v3

    const/16 v3, 0x20

    const/16 v4, 0x7c

    aput-char v4, v6, v3

    const/16 v3, 0x21

    const/16 v4, 0xf5

    aput-char v4, v6, v3

    const/16 v3, 0x22

    aput-char v14, v6, v3

    const/16 v3, 0x23

    const/16 v4, 0x88

    aput-char v4, v6, v3

    const/16 v3, 0x24

    const/16 v4, 0xe9

    aput-char v4, v6, v3

    const/16 v3, 0x25

    aput-char v12, v6, v3

    const/16 v3, 0x26

    const/16 v4, 0xaa

    aput-char v4, v6, v3

    const/16 v3, 0x27

    aput-char v16, v6, v3

    const/16 v3, 0x28

    const/16 v4, 0xa1

    aput-char v4, v6, v3

    const/16 v3, 0x29

    const/16 v4, 0x63

    aput-char v4, v6, v3

    const/16 v3, 0x2a

    const/16 v4, 0x4f

    aput-char v4, v6, v3

    const/16 v3, 0x2b

    const/16 v4, 0x27

    aput-char v4, v6, v3

    const/16 v3, 0x2c

    const/16 v4, 0x37

    aput-char v4, v6, v3

    const/16 v3, 0x2d

    const/16 v4, 0x5b

    aput-char v4, v6, v3

    const/16 v3, 0x2e

    const/16 v4, 0xe2

    aput-char v4, v6, v3

    const/16 v3, 0x2f

    const/16 v4, 0x78

    aput-char v4, v6, v3

    const/16 v3, 0x30

    aput-char v24, v6, v3

    const/16 v3, 0x31

    const/16 v4, 0x22

    aput-char v4, v6, v3

    const/16 v3, 0x32

    const/16 v4, 0x5b

    aput-char v4, v6, v3

    const/16 v3, 0x33

    const/16 v4, 0x8e

    aput-char v4, v6, v3

    const/16 v3, 0x34

    const/16 v4, 0xe0

    aput-char v4, v6, v3

    const-string v3, "\u02a0\u0337\u0291\u02dd\u0366\u032b"

    invoke-static {v6, v3}, Lcom/netease/mobsec/grow/h;->e([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Lcom/netease/mobsec/grow/o;

    invoke-direct {v2}, Lcom/netease/mobsec/grow/o;-><init>()V

    invoke-virtual {v1, v0, v2, v13}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lcom/netease/mobsec/grow/o;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 2
    sget v3, Lcom/netease/mobsec/grow/b$a;->a:I

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const-string v3, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    invoke-interface {v0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/netease/mobsec/grow/b;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/netease/mobsec/grow/b;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/netease/mobsec/grow/b$a$a;

    invoke-direct {v3, v0}, Lcom/netease/mobsec/grow/b$a$a;-><init>(Landroid/os/IBinder;)V

    .line 3
    :goto_0
    invoke-interface {v3}, Lcom/netease/mobsec/grow/b;->b()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :try_start_4
    throw v0

    :catch_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    const/4 v6, 0x0

    :catch_3
    :goto_1
    return-object v6

    .line 4
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    new-array v13, v10, [C

    fill-array-data v13, :array_1

    const-string v14, "\u0296\u0287\u026b\u02df\u0272\u02ba"

    invoke-static {v13, v14}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    new-array v13, v15, [C

    fill-array-data v13, :array_2

    const-string v14, "\u02a6\u0346\u0351\u033a\u0358\u02ec"

    invoke-static {v13, v14}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-array v3, v8, [C

    fill-array-data v3, :array_3

    const-string v8, "\u02b6\u0265\u027f\u0329\u0342\u027d"

    invoke-static {v3, v8}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_8

    .line 5
    sget-object v0, Lcom/netease/mobsec/grow/m;->a:Ljava/lang/String;

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_6

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/netease/mobsec/grow/m;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/netease/mobsec/grow/m;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 7
    sget-object v3, Lcom/netease/mobsec/grow/m;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/netease/mobsec/grow/l;

    invoke-direct {v4, v1}, Lcom/netease/mobsec/grow/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 8
    new-instance v3, Lcom/netease/mobsec/grow/m$a;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v3, v0, v2}, Lcom/netease/mobsec/grow/m$a;-><init>(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/m;->a(Landroid/content/Context;)Lcom/netease/mobsec/grow/m$a;

    move-result-object v3

    :goto_4
    if-nez v3, :cond_7

    const/4 v6, 0x0

    goto :goto_5

    .line 9
    :cond_7
    iget-object v6, v3, Lcom/netease/mobsec/grow/m$a;->a:Ljava/lang/String;

    :goto_5
    return-object v6

    .line 10
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [C

    fill-array-data v7, :array_4

    const-string v8, "\u02b2\u034e\u0378\u02cc\u0337\u0259"

    invoke-static {v7, v8}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    new-array v7, v11, [C

    fill-array-data v7, :array_5

    const-string v8, "\u0334\u02de\u02d5\u031b\u0338\u034e"

    invoke-static {v7, v8}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    new-array v3, v12, [C

    fill-array-data v3, :array_6

    const-string v7, "\u0289\u036b\u025d\u0290\u02a2\u0379"

    invoke-static {v3, v7}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v3, 0x1

    :goto_7
    if-eqz v3, :cond_b

    .line 11
    sget-boolean v3, Lcom/netease/mobsec/grow/n;->a:Z

    if-eqz v3, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    new-array v3, v15, [C

    fill-array-data v3, :array_7

    const-string v6, "\u033b\u02b3\u02f9\u029e\u02c6\u0335"

    invoke-static {v3, v6}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-boolean v3, Lcom/netease/mobsec/grow/n;->a:Z

    if-eqz v3, :cond_c

    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    new-array v3, v15, [C

    fill-array-data v3, :array_8

    const-string v6, "\u033d\u0263\u029a\u028f\u0372\u035e"

    invoke-static {v3, v6}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-boolean v3, Lcom/netease/mobsec/grow/n;->a:Z

    if-eqz v3, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-static {}, Lcom/netease/mobsec/grow/n;->b()Z

    move-result v3

    if-eqz v3, :cond_e

    sget-boolean v3, Lcom/netease/mobsec/grow/n;->a:Z

    if-eqz v3, :cond_e

    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    new-array v3, v9, [C

    fill-array-data v3, :array_9

    const-string v6, "\u035c\u02c4\u033d\u02fb\u02b2\u033d"

    invoke-static {v3, v6}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-boolean v3, Lcom/netease/mobsec/grow/n;->a:Z

    if-eqz v3, :cond_f

    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    new-array v3, v4, [C

    fill-array-data v3, :array_a

    const-string v4, "\u02c3\u0335\u02d1\u028a\u0383\u031e"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-boolean v3, Lcom/netease/mobsec/grow/n;->b:Z

    if-eqz v3, :cond_10

    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-static {}, Lcom/netease/mobsec/grow/n;->d()Z

    move-result v3

    if-eqz v3, :cond_11

    sget-boolean v3, Lcom/netease/mobsec/grow/n;->b:Z

    if-eqz v3, :cond_11

    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    new-array v3, v12, [C

    fill-array-data v3, :array_b

    const-string v4, "\u036a\u029a\u0272\u0298\u02a6\u030f"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-boolean v3, Lcom/netease/mobsec/grow/n;->a:Z

    if-eqz v3, :cond_14

    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_12

    goto :goto_8

    :cond_12
    return-object v0

    :cond_13
    :goto_8
    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    new-array v3, v11, [C

    fill-array-data v3, :array_c

    const-string v4, "\u0353\u0296\u029e\u0311\u028a\u02e0"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {}, Lcom/netease/mobsec/grow/n;->a()Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_15
    sget-boolean v3, Lcom/netease/mobsec/grow/n;->a:Z

    if-eqz v3, :cond_16

    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    invoke-static {}, Lcom/netease/mobsec/grow/n;->c()Z

    move-result v3

    if-eqz v3, :cond_17

    sget-boolean v3, Lcom/netease/mobsec/grow/n;->a:Z

    if-eqz v3, :cond_17

    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/h;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :cond_17
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-array v4, v15, [C

    fill-array-data v4, :array_d

    const-string v5, "\u032d\u0346\u0293\u0342\u02c4\u0361"

    invoke-static {v4, v5}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    new-array v0, v15, [C

    fill-array-data v0, :array_e

    const-string v4, "\u0319\u030e\u028c\u0382\u0382\u0258"

    invoke-static {v0, v4}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_9

    :cond_18
    const/4 v13, 0x0

    goto :goto_a

    :cond_19
    :goto_9
    const/4 v13, 0x1

    :goto_a
    if-eqz v13, :cond_1a

    .line 13
    sget-boolean v0, Lcom/netease/mobsec/grow/n;->a:Z

    if-eqz v0, :cond_1a

    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    new-array v0, v9, [C

    fill-array-data v0, :array_f

    const-string v3, "\u0360\u034c\u0367\u027e\u0279\u0370"

    invoke-static {v0, v3}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-boolean v0, Lcom/netease/mobsec/grow/n;->a:Z

    if-eqz v0, :cond_1b

    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    new-array v0, v15, [C

    fill-array-data v0, :array_10

    const-string v3, "\u0353\u02ca\u0308\u0383\u02c1\u031c"

    invoke-static {v0, v3}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-boolean v0, Lcom/netease/mobsec/grow/n;->a:Z

    if-eqz v0, :cond_1c

    invoke-static/range {p0 .. p0}, Lcom/netease/mobsec/grow/h;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    const/4 v1, 0x0

    return-object v1

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v3, [C

    fill-array-data v1, :array_11

    const-string v2, "\u033d\u0290\u0272\u02ce\u0368\u0334"

    invoke-static {v1, v2}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 2
        0xf9s
        0x9es
        0xffs
        0x3cs
    .end array-data

    :array_1
    .array-data 2
        0x5cs
        0xdas
        0xc9s
        0x8ds
        0x5bs
        0xfes
    .end array-data

    :array_2
    .array-data 2
        0x62s
        0xa5s
        0x5cs
        0x2fs
        0xc5s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x53f8s
        0x4e5fs
    .end array-data

    :array_4
    .array-data 2
        0x60s
        0xe5s
        0x4bs
        0xecs
        0xb0s
        0x43s
    .end array-data

    :array_5
    .array-data 2
        0xb3s
        0xb2s
        0xacs
        0x3s
        0x13s
        0xa4s
        0x51s
        0x6cs
    .end array-data

    :array_6
    .array-data 2
        0xfes
        0x48s
        0x3fs
    .end array-data

    nop

    :array_7
    .array-data 2
        0x53s
        0x5fs
        0x9as
        0x15s
        0xf6s
    .end array-data

    nop

    :array_8
    .array-data 2
        0xf2s
        0x47s
        0x97s
        0x55s
        0xdas
    .end array-data

    nop

    :array_9
    .array-data 2
        0x66s
        0x35s
        0x92s
        0x99s
        0x81s
        0xees
        0xdfs
    .end array-data

    nop

    :array_a
    .array-data 2
        0x37s
        0xes
        0x6ds
        0x35s
    .end array-data

    :array_b
    .array-data 2
        0x8as
        0x5as
        0x6bs
    .end array-data

    nop

    :array_c
    .array-data 2
        0x27s
        0xfas
        0x14s
        0xe4s
        0x6ds
        0x29s
        0xffs
        0x25s
    .end array-data

    :array_d
    .array-data 2
        0x91s
        0xe4s
        0xb6s
        0x7cs
        0x76s
    .end array-data

    nop

    :array_e
    .array-data 2
        0xes
        0xeds
        0x56s
        0x94s
        0xads
    .end array-data

    nop

    :array_f
    .array-data 2
        0xe8s
        0xe4s
        0x89s
        0xc6s
        0x99s
        0x96s
        0xf8s
    .end array-data

    nop

    :array_10
    .array-data 2
        0xe4s
        0x93s
        0xa4s
        0xb3s
        0x15s
    .end array-data

    nop

    :array_11
    .array-data 2
        0x4cs
        0xbes
        0xffs
        0x5es
        0x45s
        0xdbs
        0x95s
        0x86s
        0x84s
        0xd7s
        0x3ds
        0xfas
        0xfes
        0x60s
        0xb6s
        0xc8s
        0x65s
        0xeds
        0xa6s
        0x96s
        0x45s
        0x49s
        0xbfs
        0x52s
        0xes
        0xdes
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

    add-int/lit16 v2, v2, 0xea

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x16

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
    .locals 16

    const/16 v0, 0x15

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    const-string v2, "\u032c\u025c\u0267\u0267\u028a\u030b"

    invoke-static {v1, v2}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x1b

    :try_start_0
    new-array v2, v2, [C

    const/16 v6, 0x9e

    aput-char v6, v2, v5

    const/16 v6, 0xc2

    aput-char v6, v2, v4

    const/16 v6, 0x4a

    const/4 v7, 0x2

    aput-char v6, v2, v7

    const/16 v6, 0x8c

    const/4 v8, 0x3

    aput-char v6, v2, v8

    const/4 v9, 0x4

    aput-char v3, v2, v9

    const/16 v10, 0xe7

    const/4 v11, 0x5

    aput-char v10, v2, v11

    const/16 v10, 0x27

    const/4 v12, 0x6

    aput-char v10, v2, v12

    const/16 v13, 0xb2

    const/4 v14, 0x7

    aput-char v13, v2, v14

    const/16 v13, 0x29

    aput-char v13, v2, v3

    const/16 v13, 0x9

    const/16 v15, 0x94

    aput-char v15, v2, v13

    const/16 v13, 0xa

    const/16 v15, 0x42

    aput-char v15, v2, v13

    const/16 v13, 0xb

    aput-char v6, v2, v13

    const/16 v6, 0xc

    const/16 v13, 0x6d

    aput-char v13, v2, v6

    const/16 v6, 0xd

    const/16 v13, 0x62

    aput-char v13, v2, v6

    const/16 v6, 0xe

    const/16 v13, 0x38

    aput-char v13, v2, v6

    const/16 v6, 0xf

    const/16 v13, 0x4b

    aput-char v13, v2, v6

    const/16 v6, 0x10

    const/16 v13, 0x5a

    aput-char v13, v2, v6

    const/16 v6, 0x11

    const/16 v13, 0xd4

    aput-char v13, v2, v6

    const/16 v6, 0x12

    const/16 v13, 0xb4

    aput-char v13, v2, v6

    const/16 v6, 0x13

    const/16 v15, 0x9a

    aput-char v15, v2, v6

    const/16 v6, 0x14

    const/16 v15, 0xbb

    aput-char v15, v2, v6

    const/16 v6, 0x33

    aput-char v6, v2, v0

    const/16 v0, 0x16

    const/16 v6, 0x6a

    aput-char v6, v2, v0

    const/16 v0, 0x17

    const/16 v6, 0x49

    aput-char v6, v2, v0

    const/16 v0, 0x18

    const/16 v6, 0x7f

    aput-char v6, v2, v0

    const/16 v0, 0x19

    const/16 v6, 0x63

    aput-char v6, v2, v0

    const/16 v0, 0x1a

    const/16 v6, 0x6b

    aput-char v6, v2, v0

    const-string v0, "\u02b1\u037c\u034a\u02f2\u02c3\u02d2"

    invoke-static {v2, v0}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v8, [C

    const/16 v6, 0xf0

    aput-char v6, v2, v5

    const/16 v6, 0x20

    aput-char v6, v2, v4

    aput-char v5, v2, v7

    const-string v6, "\u0304\u0289\u029f\u0347\u02de\u0362"

    invoke-static {v2, v6}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v6, v7, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v6, v5

    const-class v15, Ljava/lang/String;

    aput-object v15, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v5

    new-array v1, v14, [C

    aput-char v3, v1, v5

    aput-char v10, v1, v4

    const/16 v10, 0x30

    aput-char v10, v1, v7

    aput-char v13, v1, v8

    const/16 v7, 0x37

    aput-char v7, v1, v9

    const/16 v7, 0xa6

    aput-char v7, v1, v11

    const/16 v7, 0x5b

    aput-char v7, v1, v12

    const-string v7, "\u0259\u025b\u0316\u02af\u02fa\u02c6"

    invoke-static {v1, v7}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 v0, 0x0

    .line 15
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v3, [C

    fill-array-data v1, :array_1

    const-string v2, "\u02c6\u0327\u02b0\u02c0\u0370\u02c7"

    invoke-static {v1, v2}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    return v4

    nop

    :array_0
    .array-data 2
        0x4cs
        0xe6s
        0xa5s
        0x1ds
        0x80s
        0xd0s
        0x74s
        0x77s
        0xads
        0xa4s
        0xa3s
        0x2es
        0x9ds
        0x96s
        0xbcs
        0x95s
        0x21s
        0xd1s
        0x46s
        0x67s
        0xa5s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x94s
        0x2fs
        0x43s
        0x2ds
        0x1as
        0xd4s
        0xads
        0xfs
    .end array-data
.end method

.method public static b()Z
    .locals 5

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    const-string v3, "\u02c1\u031f\u035d\u0330\u0310\u0258"

    invoke-static {v2, v3}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x7

    new-array v3, v2, [C

    fill-array-data v3, :array_1

    const-string v4, "\u02e1\u0258\u02a6\u02c4\u030b\u032d"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x6

    new-array v3, v3, [C

    fill-array-data v3, :array_2

    const-string v4, "\u029f\u036c\u0278\u0285\u02d7\u02c9"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v2, [C

    fill-array-data v0, :array_3

    const-string v2, "\u02ae\u02b9\u0373\u025a\u0319\u02d7"

    invoke-static {v0, v2}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :array_0
    .array-data 2
        0x56s
        0x6as
        0x1cs
        0x70s
    .end array-data

    :array_1
    .array-data 2
        0x5as
        0x43s
        0x1s
        0xbs
        0x5ds
        0x8fs
        0xcas
    .end array-data

    nop

    :array_2
    .array-data 2
        0x3es
        0xa9s
        0xabs
        0xb5s
        0xd7s
        0x14s
    .end array-data

    :array_3
    .array-data 2
        0xc0s
        0x7fs
        0x4bs
        0xbds
        0x1fs
        0xd4s
        0x40s
    .end array-data
.end method

.method public static c()Z
    .locals 5

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    new-array v3, v2, [C

    fill-array-data v3, :array_0

    const-string v4, "\u0383\u028c\u02dc\u0355\u0310\u0352"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v2, [C

    fill-array-data v1, :array_1

    const-string v2, "\u0314\u0267\u025c\u0355\u0364\u02b7"

    invoke-static {v1, v2}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    nop

    :array_0
    .array-data 2
        0x9es
        0xbcs
        0x2cs
        0x5ds
        0xfcs
        0xe3s
        0x86s
        0x22s
        0xb6s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x8es
        0xc8s
        0x7es
        0x9cs
        0x19s
        0x60s
        0xb7s
        0x99s
        0xe6s
    .end array-data
.end method

.method public static d()Z
    .locals 5

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    const-string v3, "\u02b6\u0374\u02e7\u0350\u0284\u035a"

    invoke-static {v2, v3}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    const-string v3, "\u02f5\u025f\u02c0\u02b6\u02f6\u02a2"

    invoke-static {v2, v3}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x5

    new-array v3, v2, [C

    fill-array-data v3, :array_2

    const-string v4, "\u037d\u033e\u037d\u034a\u034b\u029c"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v2, [C

    fill-array-data v0, :array_3

    const-string v2, "\u02d9\u02bc\u02ca\u02bc\u035c\u030b"

    invoke-static {v0, v2}, Lcom/netease/mobsec/grow/n;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    nop

    :array_0
    .array-data 2
        0x62s
        0x26s
        0x59s
        0x5cs
        0xads
        0xe2s
    .end array-data

    :array_1
    .array-data 2
        0x7bs
        0xe2s
        0xacs
        0x3fs
        0x28s
        0xbes
        0x28s
        0x3cs
        0xb6s
        0x40s
    .end array-data

    :array_2
    .array-data 2
        0x6as
        0xefs
        0xabs
        0x5ds
        0xc4s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x17s
        0xbfs
        0xecs
        0xa1s
        0xa5s
    .end array-data
.end method
