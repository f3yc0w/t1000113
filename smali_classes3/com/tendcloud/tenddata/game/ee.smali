.class public Lcom/tendcloud/tenddata/game/ee;
.super Lcom/tendcloud/tenddata/game/ea;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ea;-><init>()V

    .line 16
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/au;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/au;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/au;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "serialNo"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 8

    const-string v0, "imei"

    .line 21
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object v1

    const-string v2, "AdID"

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v3, "adId"

    if-eqz v1, :cond_0

    .line 23
    sget-object v4, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tendcloud/tenddata/game/au;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 25
    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/tendcloud/tenddata/game/em;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ee;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v3, v1}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 30
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object v1

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/em;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v3

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/em;->b:Lorg/json/JSONObject;

    const-string v4, "IMEI"

    invoke-virtual {v1, v4, v2, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "imeis"

    if-eqz v1, :cond_4

    .line 33
    :try_start_0
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->A(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    .line 34
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    if-eqz v3, :cond_3

    .line 35
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v6, 0x0

    .line 36
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 37
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 38
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 40
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    .line 41
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 42
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 45
    :cond_3
    invoke-virtual {p0, v2, v5}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 51
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 52
    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/tendcloud/tenddata/game/em;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_2

    .line 55
    :cond_4
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ee;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v0}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 57
    :cond_5
    :goto_2
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object v0

    const-string v1, "MacAddress"

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "wifiMacs"

    if-eqz v0, :cond_6

    .line 59
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 60
    sget-object v4, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/tendcloud/tenddata/game/au;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    invoke-virtual {p0, v2, v3}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 63
    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/tendcloud/tenddata/game/em;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_3

    .line 66
    :cond_6
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ee;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v0}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 68
    :cond_7
    :goto_3
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object v0

    const-string v1, "AndroidId"

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "androidId"

    if-eqz v0, :cond_8

    .line 70
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/au;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {p0, v2, v3}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 73
    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/tendcloud/tenddata/game/em;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_4

    .line 76
    :cond_8
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ee;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v0}, Lcom/tendcloud/tenddata/game/ee;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_9
    :goto_4
    return-void
.end method
