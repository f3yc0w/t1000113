.class public Lcom/tendcloud/tenddata/game/ed;
.super Lcom/tendcloud/tenddata/game/ea;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 12
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ea;-><init>()V

    .line 13
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manufacture"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ed;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "brand"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ed;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ed;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 18
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->m()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 19
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 20
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "cpuInfo"

    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ed;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 25
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->r()[I

    move-result-object v1

    const/4 v3, 0x0

    .line 26
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 27
    aget v4, v1, v3

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "memoryInfo"

    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ed;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 32
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->q()[I

    move-result-object v1

    .line 33
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 34
    aget v3, v1, v2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const-string v1, "sdCardInfo"

    .line 36
    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ed;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ed;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/aw;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 39
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ed;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/aw;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 40
    invoke-static {}, Lcom/tendcloud/tenddata/game/ed;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "totalDiskSpace"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ed;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aw;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "support"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ed;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->n()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "cpu"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ed;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aw;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "nfcHce"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ed;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static b()I
    .locals 4

    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/aw;->s()[I

    move-result-object v1

    .line 52
    aget v2, v1, v0

    const/4 v3, 0x2

    aget v0, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v0

    return v2

    :catchall_0
    return v0
.end method


# virtual methods
.method public c()V
    .locals 2

    :try_start_0
    const-string v0, "support"

    .line 64
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/aw;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ed;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setSlots(I)V
    .locals 1

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "slots"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/ed;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
