.class public Lcom/netease/mobsec/vt/ViewTracker;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_NOT_MAIN_THREAD:I = -0x2

.field public static final ERROR_NULL_VIEW:I = -0x1

.field public static final ERROR_REPEAT_VIEW:I = -0x3

.field public static final ERROR_VIEW_FULL:I = -0x4

.field public static final SUCCESS:I = 0xc8

.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/netease/mobsec/vt/ViewTracker;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a7c042([CLjava/lang/String;)Ljava/lang/String;
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

    add-int/lit8 v2, v2, 0x4e

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit16 v2, v2, -0xb2

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

.method public static declared-synchronized getData()Ljava/lang/String;
    .locals 11

    const-class v0, Lcom/netease/mobsec/vt/ViewTracker;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    :try_start_1
    sget-object v1, Lcom/netease/mobsec/vt/ViewTracker;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v4, :cond_2

    monitor-exit v0

    return-object v2

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/netease/mobsec/vt/f;->a()Lcom/netease/mobsec/vt/f;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/netease/mobsec/vt/f;->a:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v1, :cond_3

    goto :goto_1

    :catch_0
    :cond_3
    move-object v5, v2

    :goto_1
    if-eqz v5, :cond_6

    :try_start_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :catch_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/mobsec/vt/c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const/4 v8, 0x2

    new-array v8, v8, [C

    const/16 v9, 0x6d

    aput-char v9, v8, v3

    const/16 v9, 0x27

    aput-char v9, v8, v4

    const-string v9, "\u037e\u0294\u0334\u02bb\u02de\u0305"

    invoke-static {v8, v9}, Lcom/netease/mobsec/vt/ViewTracker;->a7c042([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v6, Lcom/netease/mobsec/vt/c;->d:J

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-array v8, v4, [C

    const/16 v9, 0xad

    aput-char v9, v8, v3

    const-string v9, "\u037a\u033e\u025a\u0368\u034f\u032d"

    invoke-static {v8, v9}, Lcom/netease/mobsec/vt/ViewTracker;->a7c042([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Lcom/netease/mobsec/vt/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-array v8, v4, [C

    const/16 v9, 0xdf

    aput-char v9, v8, v3

    const-string v9, "\u02fc\u0338\u0315\u0290\u0316\u0323"

    invoke-static {v8, v9}, Lcom/netease/mobsec/vt/ViewTracker;->a7c042([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget v9, v6, Lcom/netease/mobsec/vt/c;->b:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-array v8, v4, [C

    const/16 v9, 0x77

    aput-char v9, v8, v3

    const-string v9, "\u033e\u0315\u0267\u0337\u02b7\u02ef"

    invoke-static {v8, v9}, Lcom/netease/mobsec/vt/ViewTracker;->a7c042([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v6, v6, Lcom/netease/mobsec/vt/c;->c:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_4
    :try_start_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-gtz v3, :cond_5

    monitor-exit v0

    return-object v2

    :cond_5
    :try_start_7
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_6
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized track(Landroid/view/View;Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p0

    const-class v1, Lcom/netease/mobsec/vt/ViewTracker;

    monitor-enter v1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/16 v6, 0x14

    const/4 v7, 0x0

    if-lt v2, v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v7

    goto/16 :goto_4

    :cond_3
    sget-boolean v2, Lcom/netease/mobsec/vt/b;->b:Z

    if-nez v2, :cond_7

    sget-object v2, Lcom/netease/mobsec/vt/b;->a:Ljava/lang/reflect/Field;

    if-nez v2, :cond_6

    const-class v2, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x16

    :try_start_1
    new-array v8, v3, [C

    const/16 v9, 0x23

    aput-char v9, v8, v4

    const/4 v9, 0x6

    aput-char v9, v8, v5

    const/4 v10, 0x2

    const/16 v11, 0x8e

    aput-char v11, v8, v10

    const/16 v10, 0x78

    const/4 v11, 0x3

    aput-char v10, v8, v11

    const/4 v10, 0x4

    const/16 v12, 0xed

    aput-char v12, v8, v10

    const/16 v10, 0x3c

    const/4 v12, 0x5

    aput-char v10, v8, v12

    const/16 v10, 0x63

    aput-char v10, v8, v9

    const/16 v9, 0xf8

    const/4 v10, 0x7

    aput-char v9, v8, v10

    const/16 v9, 0x8

    const/16 v13, 0x96

    aput-char v13, v8, v9

    const/16 v9, 0x93

    const/16 v13, 0x9

    aput-char v9, v8, v13

    const/16 v9, 0xa

    const/16 v14, 0xba

    aput-char v14, v8, v9

    const/16 v9, 0xb

    aput-char v12, v8, v9

    const/16 v9, 0xc

    const/16 v14, 0x42

    aput-char v14, v8, v9

    const/16 v9, 0xd

    aput-char v11, v8, v9

    const/16 v9, 0xe

    const/16 v11, 0xca

    aput-char v11, v8, v9

    const/16 v9, 0xf

    aput-char v13, v8, v9

    const/16 v9, 0x10

    const/16 v11, 0xda

    aput-char v11, v8, v9

    const/16 v9, 0x11

    const/16 v11, 0x87

    aput-char v11, v8, v9

    const/16 v9, 0x12

    const/16 v11, 0x9d

    aput-char v11, v8, v9

    const/16 v9, 0x13

    const/16 v11, 0xfb

    aput-char v11, v8, v9

    const/16 v9, 0xa8

    aput-char v9, v8, v6

    const/16 v9, 0x15

    const/16 v11, 0xe8

    aput-char v11, v8, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v9, "\u0313\u02e4\u0279\u036a\u0350\u02c4"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v3, :cond_5

    :try_start_3
    aget-char v13, v8, v11

    const/16 v14, 0xff

    if-le v13, v14, :cond_4

    rem-int/lit8 v15, v11, 0x6

    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    and-int/2addr v14, v15

    xor-int/2addr v13, v14

    const v14, 0xffff

    and-int/2addr v13, v14

    int-to-char v13, v13

    aput-char v13, v8, v11

    goto :goto_3

    :cond_4
    shr-int/lit8 v15, v13, 0x1

    shl-int/lit8 v13, v13, 0x7

    or-int/2addr v13, v15

    and-int/2addr v13, v14

    add-int/2addr v13, v11

    and-int/2addr v13, v14

    xor-int/2addr v13, v11

    and-int/2addr v13, v14

    add-int/lit16 v13, v13, 0xc7

    and-int/2addr v13, v14

    shr-int/lit8 v15, v13, 0x1

    and-int/2addr v15, v14

    shl-int/2addr v13, v10

    and-int/2addr v13, v14

    xor-int/2addr v13, v15

    and-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x39

    and-int/2addr v13, v14

    shr-int/lit8 v15, v13, 0x3

    and-int/2addr v15, v14

    shl-int/2addr v13, v12

    and-int/2addr v13, v14

    or-int/2addr v13, v15

    and-int/2addr v13, v14

    rem-int/lit8 v15, v11, 0x6

    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    xor-int/2addr v13, v15

    and-int/2addr v13, v14

    and-int/2addr v13, v14

    int-to-char v13, v13

    aput-char v13, v8, v11

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/netease/mobsec/vt/b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_6
    sget-object v2, Lcom/netease/mobsec/vt/b;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    instance-of v3, v2, Landroid/view/View$AccessibilityDelegate;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_7

    :try_start_5
    check-cast v2, Landroid/view/View$AccessibilityDelegate;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v7, v2

    goto :goto_4

    :catchall_0
    :try_start_6
    sput-boolean v5, Lcom/netease/mobsec/vt/b;->b:Z

    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    const/4 v4, 0x1

    :cond_8
    if-eqz v4, :cond_9

    const/4 v0, -0x3

    goto/16 :goto_0

    :cond_9
    sget-object v2, Lcom/netease/mobsec/vt/ViewTracker;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-le v3, v6, :cond_a

    const/4 v0, -0x4

    goto/16 :goto_0

    :cond_a
    new-instance v3, Lcom/netease/mobsec/vt/a;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Lcom/netease/mobsec/vt/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/16 v0, 0xc8

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
