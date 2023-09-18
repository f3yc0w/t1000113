.class public Lcom/netease/mobsec/grow/GrowDevice$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobsec/grow/GrowDevice;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mobsec/grow/GrowDevice;


# direct methods
.method public constructor <init>(Lcom/netease/mobsec/grow/GrowDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/grow/GrowDevice$a;->a:Lcom/netease/mobsec/grow/GrowDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/netease/mobsec/grow/GrowDevice$a;->a:Lcom/netease/mobsec/grow/GrowDevice;

    .line 1
    sget-object v1, Lcom/netease/mobsec/grow/GrowDevice;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-boolean v1, Lcom/netease/mobsec/grow/GrowDevice;->f:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/netease/mobsec/grow/GrowDevice;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 4
    :cond_1
    :goto_0
    sget-object v1, Lcom/netease/mobsec/grow/GrowDevice;->d:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x24

    if-eq v2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x4d

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    const-string v4, "\u0359\u035d\u035b\u02e4\u0328\u0260"

    invoke-static {v2, v4}, Lcom/netease/mobsec/grow/h;->m([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    :goto_2
    const-string v2, ""

    if-nez v1, :cond_4

    .line 6
    sput-object v2, Lcom/netease/mobsec/grow/GrowDevice;->d:Ljava/lang/String;

    :cond_4
    sget-object v1, Lcom/netease/mobsec/grow/GrowDevice;->e:Ljava/lang/String;

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-nez v4, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0x10

    if-ge v4, v7, :cond_5

    goto :goto_3

    :cond_5
    new-array v4, v5, [C

    fill-array-data v4, :array_1

    const-string v7, "\u02d7\u02ce\u030e\u02e4\u0376\u026f"

    invoke-static {v4, v7}, Lcom/netease/mobsec/grow/h;->m([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v6

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_7

    .line 8
    sput-object v2, Lcom/netease/mobsec/grow/GrowDevice;->e:Ljava/lang/String;

    :cond_7
    iget-object v0, v0, Lcom/netease/mobsec/grow/GrowDevice;->i:Lcom/netease/mobsec/grow/q;

    sget-object v1, Lcom/netease/mobsec/grow/GrowDevice;->d:Ljava/lang/String;

    sget-object v4, Lcom/netease/mobsec/grow/GrowDevice;->e:Ljava/lang/String;

    .line 9
    iget-object v7, v0, Lcom/netease/mobsec/grow/q;->a:Landroid/content/Context;

    const/4 v8, 0x0

    if-nez v7, :cond_8

    move-object v1, v8

    goto :goto_5

    .line 10
    :cond_8
    invoke-static {v7, v1, v4}, Lcom/netease/mobsec/grow/poly/a;->aec4f0df9b91(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    :goto_5
    const/16 v4, 0xc8

    if-eqz v1, :cond_f

    .line 11
    array-length v7, v1

    if-gtz v7, :cond_9

    goto/16 :goto_9

    .line 12
    :cond_9
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/netease/mobsec/grow/q;->a([B)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v9, v1, [C

    const/16 v10, 0x12

    aput-char v10, v9, v3

    const/16 v10, 0xfc

    aput-char v10, v9, v6

    const/16 v10, 0x86

    const/4 v11, 0x2

    aput-char v10, v9, v11

    const/16 v10, 0x2d

    const/4 v12, 0x3

    aput-char v10, v9, v12

    const-string v10, "\u034b\u0300\u0278\u0354\u0321\u027b"

    invoke-static {v9, v10}, Lcom/netease/mobsec/grow/q;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v4, :cond_a

    .line 13
    new-instance v0, Lcom/netease/mobsec/grow/s;

    invoke-direct {v0, v9, v2}, Lcom/netease/mobsec/grow/s;-><init>(ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_a
    new-array v1, v1, [C

    const/16 v10, 0xf9

    aput-char v10, v1, v3

    const/16 v10, 0x4f

    aput-char v10, v1, v6

    const/16 v10, 0xbe

    aput-char v10, v1, v11

    const/16 v10, 0xb6

    aput-char v10, v1, v12

    const-string v10, "\u0333\u0343\u02a9\u031c\u0331\u0330"

    .line 14
    invoke-static {v1, v10}, Lcom/netease/mobsec/grow/q;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-array v7, v12, [C

    const/16 v10, 0xbf

    aput-char v10, v7, v3

    const/16 v3, 0x39

    aput-char v3, v7, v6

    const/16 v3, 0x66

    aput-char v3, v7, v11

    const-string v3, "\u02e0\u0335\u0272\u0295\u0259\u031b"

    invoke-static {v7, v3}, Lcom/netease/mobsec/grow/q;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v0, 0x3ef

    invoke-static {v0}, Lcom/netease/mobsec/grow/s;->a(I)Lcom/netease/mobsec/grow/s;

    move-result-object v0

    goto :goto_a

    :cond_b
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/netease/mobsec/grow/q;->a:Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v0, v1}, Lcom/netease/mobsec/grow/poly/a;->wwy66f7bc987(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 16
    :cond_d
    :goto_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v9, 0x3ed

    goto :goto_7

    :cond_e
    move-object v2, v8

    .line 17
    :goto_7
    new-instance v0, Lcom/netease/mobsec/grow/s;

    invoke-direct {v0, v9, v2}, Lcom/netease/mobsec/grow/s;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    const/16 v0, 0x3ec

    goto :goto_8

    :catch_2
    const/16 v0, 0x3ea

    .line 18
    :goto_8
    invoke-static {v0}, Lcom/netease/mobsec/grow/s;->a(I)Lcom/netease/mobsec/grow/s;

    move-result-object v0

    goto :goto_a

    :cond_f
    :goto_9
    const/16 v0, 0x3e8

    .line 19
    invoke-static {v0}, Lcom/netease/mobsec/grow/s;->a(I)Lcom/netease/mobsec/grow/s;

    move-result-object v0

    .line 20
    :goto_a
    iget v1, v0, Lcom/netease/mobsec/grow/s;->a:I

    if-ne v1, v4, :cond_10

    .line 21
    iget-object v0, v0, Lcom/netease/mobsec/grow/s;->b:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 23
    sput-object v0, Lcom/netease/mobsec/grow/GrowDevice;->g:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Lcom/netease/mobsec/grow/GrowDevice$a;->a:Lcom/netease/mobsec/grow/GrowDevice;

    .line 25
    iget-object v1, v1, Lcom/netease/mobsec/grow/GrowDevice;->j:Lcom/netease/mobsec/grow/b0;

    .line 26
    iget-object v1, v1, Lcom/netease/mobsec/grow/b0;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/netease/mobsec/grow/b0;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_b

    :cond_10
    new-array v1, v5, [C

    .line 27
    fill-array-data v1, :array_2

    const-string v2, "\u02e4\u032e\u02ef\u032e\u0294\u034c"

    invoke-static {v1, v2}, Lcom/netease/mobsec/grow/GrowDevice;->ae4f51([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x17

    new-array v3, v3, [C

    fill-array-data v3, :array_3

    const-string v4, "\u0263\u02fc\u02a9\u0337\u025a\u02d2"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/GrowDevice;->ae4f51([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v0, v0, Lcom/netease/mobsec/grow/s;->a:I

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_b
    return-void

    :array_0
    .array-data 2
        0x74s
        0x54s
        0x1s
        0xc4s
        0xb5s
        0xa7s
        0x22s
        0xeas
        0xbas
        0xccs
        0x35s
        0x17s
        0xabs
        0x40s
        0x28s
        0xb4s
        0x2s
        0x9ds
        0xe3s
        0xe1s
        0xd6s
        0xbcs
        0x21s
        0x6bs
        0xe3s
        0x96s
        0x2cs
        0x7bs
        0xf6s
        0xd2s
        0xe3s
        0x2cs
        0x1s
        0x4cs
        0xads
        0xb7s
        0x22s
        0x72s
        0x4as
        0x34s
        0xbcs
        0x17s
        0x3bs
        0x40s
        0xa9s
        0x3cs
        0x2s
        0x65s
        0xe3s
        0xe1s
        0x4es
        0x44s
        0xa0s
        0x73s
        0xe3s
        0x26s
        0xb5s
        0x83s
        0xees
        0xcas
        0xe3s
        0xb5s
        0x1s
        0x34s
        0xb4s
        0xb6s
        0x22s
        0xebs
        0xcbs
        0xbds
        0x45s
        0x27s
        0xbas
        0x21s
        0xc1s
        0xbbs
        0xf4s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x90s
        0x6fs
        0x5bs
        0x22s
        0x4cs
        0x6bs
        0x90s
        0x6fs
    .end array-data

    :array_2
    .array-data 2
        0x2bs
        0x3fs
        0x4bs
        0x33s
        0x32s
        0x66s
        0xbes
        0x23s
    .end array-data

    :array_3
    .array-data 2
        0x7bs
        0xe6s
        0x73s
        0x5es
        0xe8s
        0x2s
        0xaas
        0xf8s
        0xb1s
        0xa1s
        0xd4s
        0xc4s
        0xes
        0xc3s
        0x77s
        0x61s
        0xe4s
        0xccs
        0xb9s
        0x5bs
        0x5es
        0x2as
        0x9ds
    .end array-data
.end method
