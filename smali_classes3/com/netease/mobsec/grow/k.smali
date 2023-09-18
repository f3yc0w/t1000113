.class public final Lcom/netease/mobsec/grow/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mobsec/grow/k;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 20

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/16 v0, 0x44

    :try_start_0
    new-array v0, v0, [C

    const/16 v3, 0xe9

    const/4 v4, 0x0

    aput-char v3, v0, v4

    const/16 v5, 0x13

    const/4 v6, 0x1

    aput-char v5, v0, v6

    const/16 v7, 0xd4

    const/4 v8, 0x2

    aput-char v7, v0, v8

    const/4 v7, 0x3

    const/16 v9, 0x27

    aput-char v9, v0, v7

    const/4 v7, 0x4

    const/16 v10, 0x7b

    aput-char v10, v0, v7

    const/4 v7, 0x5

    const/16 v10, 0x54

    aput-char v10, v0, v7

    const/16 v7, 0x5f

    const/4 v10, 0x6

    aput-char v7, v0, v10

    const/4 v7, 0x7

    const/16 v11, 0xa

    aput-char v11, v0, v7

    const/16 v7, 0x8

    const/16 v12, 0x9c

    aput-char v12, v0, v7

    const/16 v7, 0x9

    const/16 v12, 0x7e

    aput-char v12, v0, v7

    const/16 v7, 0x5c

    aput-char v7, v0, v11

    const/16 v7, 0xb

    const/16 v13, 0xec

    aput-char v13, v0, v7

    const/16 v7, 0xc

    const/16 v13, 0x87

    aput-char v13, v0, v7

    const/16 v7, 0x93

    const/16 v14, 0xd

    aput-char v7, v0, v14

    const/16 v7, 0xe

    const/16 v15, 0x4a

    aput-char v15, v0, v7

    const/16 v7, 0xf

    const/16 v16, 0x3d

    aput-char v16, v0, v7

    const/16 v7, 0x10

    const/16 v17, 0xcd

    aput-char v17, v0, v7

    const/16 v7, 0x11

    const/16 v17, 0x2f

    aput-char v17, v0, v7

    const/16 v7, 0x12

    aput-char v13, v0, v7

    aput-char v11, v0, v5

    const/16 v5, 0xcc

    const/16 v7, 0x14

    aput-char v5, v0, v7

    const/16 v5, 0x15

    const/16 v11, 0xc5

    aput-char v11, v0, v5

    const/16 v5, 0x16

    const/16 v11, 0x1c

    aput-char v11, v0, v5

    const/16 v5, 0x17

    aput-char v14, v0, v5

    const/16 v5, 0x18

    const/16 v13, 0x48

    aput-char v13, v0, v5

    const/16 v5, 0x19

    const/16 v13, 0x78

    aput-char v13, v0, v5

    const/16 v5, 0x8c

    const/16 v13, 0x1a

    aput-char v5, v0, v13

    const/16 v5, 0x1b

    const/16 v14, 0xfe

    aput-char v14, v0, v5

    const/16 v5, 0xdc

    aput-char v5, v0, v11

    const/16 v5, 0x1d

    const/16 v11, 0x6f

    aput-char v11, v0, v5

    const/16 v5, 0x7f

    const/16 v14, 0x1e

    aput-char v5, v0, v14

    const/16 v5, 0x49

    const/16 v18, 0x1f

    aput-char v5, v0, v18

    const/16 v5, 0x20

    const/16 v19, 0xda

    aput-char v19, v0, v5

    const/16 v5, 0x21

    aput-char v14, v0, v5

    const/16 v5, 0x22

    const/16 v14, 0x45

    aput-char v14, v0, v5

    const/16 v5, 0x23

    const/16 v14, 0x8f

    aput-char v14, v0, v5

    const/16 v5, 0x24

    aput-char v10, v0, v5

    const/16 v5, 0x6a

    const/16 v10, 0x25

    aput-char v5, v0, v10

    const/16 v5, 0x26

    const/16 v14, 0xca

    aput-char v14, v0, v5

    aput-char v18, v0, v9

    const/16 v5, 0x28

    const/16 v9, 0x2b

    aput-char v9, v0, v5

    const/16 v5, 0x29

    aput-char v11, v0, v5

    const/16 v5, 0x2a

    const/16 v9, 0xff

    aput-char v9, v0, v5

    const/16 v5, 0x2b

    aput-char v15, v0, v5

    const/16 v5, 0x2c

    const/16 v9, 0xad

    aput-char v9, v0, v5

    const/16 v5, 0x2d

    const/16 v9, 0xe4

    aput-char v9, v0, v5

    const/16 v5, 0x2e

    const/16 v9, 0xdd

    aput-char v9, v0, v5

    aput-char v3, v0, v17

    const/16 v3, 0x30

    const/16 v5, 0x65

    aput-char v5, v0, v3

    const/16 v3, 0x31

    const/16 v5, 0x73

    aput-char v5, v0, v3

    const/16 v3, 0x32

    const/16 v5, 0x3b

    aput-char v5, v0, v3

    const/16 v3, 0x33

    aput-char v12, v0, v3

    const/16 v3, 0x34

    aput-char v13, v0, v3

    const/16 v3, 0x35

    const/16 v5, 0xb4

    aput-char v5, v0, v3

    const/16 v3, 0x36

    const/16 v5, 0x58

    aput-char v5, v0, v3

    const/16 v3, 0x37

    const/16 v5, 0x88

    aput-char v5, v0, v3

    const/16 v3, 0x38

    const/16 v5, 0xba

    aput-char v5, v0, v3

    const/16 v3, 0x39

    const/16 v5, 0xde

    aput-char v5, v0, v3

    const/16 v3, 0x3a

    const/16 v5, 0x8b

    aput-char v5, v0, v3

    const/16 v3, 0x3b

    const/16 v5, 0xf9

    aput-char v5, v0, v3

    const/16 v3, 0x3c

    const/16 v5, 0xb9

    aput-char v5, v0, v3

    const/16 v3, 0x74

    aput-char v3, v0, v16

    const/16 v3, 0x3e

    aput-char v10, v0, v3

    const/16 v3, 0x3f

    const/16 v5, 0x5d

    aput-char v5, v0, v3

    const/16 v3, 0x40

    const/16 v5, 0x6d

    aput-char v5, v0, v3

    const/16 v3, 0x41

    aput-char v7, v0, v3

    const/16 v3, 0x42

    const/16 v5, 0xe8

    aput-char v5, v0, v3

    const/16 v3, 0x43

    aput-char v14, v0, v3

    const-string v3, "\u0341\u02d4\u02a4\u0272\u0328\u02ea"

    invoke-static {v0, v3}, Lcom/netease/mobsec/grow/h;->l([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v3, p0

    :try_start_1
    iget-object v0, v3, Lcom/netease/mobsec/grow/k;->a:Landroid/os/IBinder;

    invoke-interface {v0, v8, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v3, p0

    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsec/grow/k;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 18

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/16 v0, 0x44

    :try_start_0
    new-array v3, v0, [C

    const/16 v4, 0xe8

    const/4 v5, 0x0

    aput-char v4, v3, v5

    const/16 v4, 0xa7

    const/4 v6, 0x1

    aput-char v4, v3, v6

    const/4 v4, 0x2

    const/16 v7, 0x55

    aput-char v7, v3, v4

    const/4 v4, 0x3

    const/16 v7, 0xc1

    aput-char v7, v3, v4

    const/16 v4, 0x3e

    const/4 v7, 0x4

    aput-char v4, v3, v7

    const/4 v8, 0x5

    aput-char v0, v3, v8

    const/4 v0, 0x6

    const/16 v8, 0x58

    aput-char v8, v3, v0

    const/16 v0, 0x96

    const/4 v8, 0x7

    aput-char v0, v3, v8

    const/16 v0, 0x1d

    const/16 v9, 0x8

    aput-char v0, v3, v9

    const/16 v10, 0x9

    const/16 v11, 0xf8

    aput-char v11, v3, v10

    const/16 v10, 0xa

    const/16 v11, 0x1f

    aput-char v11, v3, v10

    const/16 v10, 0xb

    const/16 v12, 0xfc

    aput-char v12, v3, v10

    const/16 v10, 0xc

    const/16 v13, 0x78

    aput-char v13, v3, v10

    const/16 v10, 0xf6

    const/16 v14, 0xd

    aput-char v10, v3, v14

    const/16 v10, 0xe

    const/16 v15, 0xc5

    aput-char v15, v3, v10

    const/16 v10, 0xa9

    const/16 v15, 0xf

    aput-char v10, v3, v15

    const/16 v16, 0x10

    aput-char v15, v3, v16

    const/16 v15, 0x11

    aput-char v11, v3, v15

    const/16 v15, 0x12

    const/16 v16, 0x90

    aput-char v16, v3, v15

    const/16 v15, 0x13

    const/16 v16, 0x66

    aput-char v16, v3, v15

    const/16 v15, 0x14

    const/16 v16, 0x4d

    aput-char v16, v3, v15

    const/16 v15, 0x15

    const/16 v16, 0x49

    aput-char v16, v3, v15

    const/16 v15, 0x16

    const/16 v17, 0xde

    aput-char v17, v3, v15

    const/16 v15, 0x17

    aput-char v12, v3, v15

    const/16 v12, 0x18

    const/16 v15, 0x47

    aput-char v15, v3, v12

    const/16 v12, 0xec

    const/16 v17, 0x19

    aput-char v12, v3, v17

    const/16 v12, 0x1a

    aput-char v14, v3, v12

    const/16 v12, 0x1b

    aput-char v13, v3, v12

    const/16 v12, 0x1c

    const/16 v14, 0x1e

    aput-char v14, v3, v12

    const/16 v12, 0x7f

    aput-char v12, v3, v0

    aput-char v13, v3, v14

    const/16 v0, 0xf4

    aput-char v0, v3, v11

    const/16 v0, 0x20

    const/16 v13, 0x5a

    aput-char v13, v3, v0

    const/16 v0, 0x21

    const/16 v13, 0xb8

    aput-char v13, v3, v0

    const/16 v0, 0x22

    aput-char v8, v3, v0

    const/16 v0, 0x23

    aput-char v12, v3, v0

    const/16 v0, 0x24

    aput-char v8, v3, v0

    const/16 v0, 0x25

    const/16 v13, 0x3f

    aput-char v13, v3, v0

    const/16 v0, 0x26

    const/16 v14, 0x4a

    aput-char v14, v3, v0

    const/16 v0, 0x27

    aput-char v10, v3, v0

    const/16 v0, 0x28

    const/16 v10, 0xd1

    aput-char v10, v3, v0

    const/16 v0, 0x29

    aput-char v12, v3, v0

    const/16 v0, 0x2a

    const/16 v10, 0xfe

    aput-char v10, v3, v0

    const/16 v0, 0x2b

    aput-char v15, v3, v0

    const/16 v10, 0x2c

    aput-char v0, v3, v10

    const/16 v0, 0x2d

    aput-char v16, v3, v0

    const/16 v0, 0x2e

    aput-char v11, v3, v0

    const/16 v0, 0x2f

    const/16 v10, 0xf9

    aput-char v10, v3, v0

    const/16 v0, 0x64

    const/16 v10, 0x30

    aput-char v0, v3, v10

    const/16 v0, 0x31

    aput-char v8, v3, v0

    const/16 v0, 0x32

    const/16 v8, 0xb5

    aput-char v8, v3, v0

    const/16 v0, 0x33

    aput-char v17, v3, v0

    const/16 v0, 0x34

    const/16 v8, 0x71

    aput-char v8, v3, v0

    const/16 v0, 0x35

    const/16 v8, 0xa4

    aput-char v8, v3, v0

    const/16 v0, 0x36

    const/16 v8, 0x59

    aput-char v8, v3, v0

    const/16 v0, 0x37

    const/16 v8, 0xd4

    aput-char v8, v3, v0

    const/16 v0, 0x38

    const/16 v8, 0x3a

    aput-char v8, v3, v0

    const/16 v0, 0x39

    const/16 v8, 0x59

    aput-char v8, v3, v0

    const/16 v0, 0x3a

    const/16 v8, 0xc7

    aput-char v8, v3, v0

    const/16 v0, 0x3b

    aput-char v9, v3, v0

    const/16 v0, 0x3c

    const/16 v8, 0xc6

    aput-char v8, v3, v0

    const/16 v0, 0x3d

    const/16 v8, 0xd0

    aput-char v8, v3, v0

    const/16 v0, 0xab

    aput-char v0, v3, v4

    const/16 v0, 0xc8

    aput-char v0, v3, v13

    const/16 v0, 0x40

    aput-char v10, v3, v0

    const/16 v0, 0x41

    aput-char v7, v3, v0

    const/16 v0, 0x42

    const/16 v4, 0xe9

    aput-char v4, v3, v0

    const/16 v0, 0x43

    const/16 v4, 0xe7

    aput-char v4, v3, v0

    const-string v0, "\u0349\u033f\u02b0\u02ce\u0312\u026a"

    invoke-static {v3, v0}, Lcom/netease/mobsec/grow/h;->l([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v3, p0

    :try_start_1
    iget-object v0, v3, Lcom/netease/mobsec/grow/k;->a:Landroid/os/IBinder;

    invoke-interface {v0, v6, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v3, p0

    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
