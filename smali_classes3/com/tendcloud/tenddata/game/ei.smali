.class public Lcom/tendcloud/tenddata/game/ei;
.super Lcom/tendcloud/tenddata/game/ea;
.source "td"


# instance fields
.field private a:Lcom/tendcloud/tenddata/game/ci;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tendcloud/tenddata/game/ek;)V
    .locals 11

    .line 23
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ea;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/ei;->c:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/tendcloud/tenddata/game/ej;->$SwitchMap$com$talkingdata$sdk$saf$datamodel$network$TDNetworkType:[I

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/ek;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, ":"

    const-string v1, "proxy"

    const/4 v2, 0x0

    const-string v3, "available"

    const/4 v4, 0x1

    const-string v5, "current"

    const-string v6, "connected"

    const-string v7, "type"

    const-string v8, "scannable"

    if-eq p1, v4, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    .line 103
    :cond_0
    :try_start_0
    sget-object p1, Lcom/tendcloud/tenddata/game/ek;->c:Lcom/tendcloud/tenddata/game/ek;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/ek;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 85
    :cond_1
    sget-object p1, Lcom/tendcloud/tenddata/game/ek;->b:Lcom/tendcloud/tenddata/game/ek;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/ek;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->f(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->i(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/tendcloud/tenddata/game/bb;->a(Landroid/content/Context;Z)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    :cond_2
    invoke-static {}, Lcom/tendcloud/tenddata/game/bb;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_3
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->v(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, v8, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 27
    :cond_4
    sget-object p1, Lcom/tendcloud/tenddata/game/ek;->a:Lcom/tendcloud/tenddata/game/ek;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/ek;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->e(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->h(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 30
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object p1

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/em;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v3

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/em;->b:Lorg/json/JSONObject;

    const-string v4, "WiFi"

    invoke-virtual {p1, v4, v2, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 33
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bb;->y(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 35
    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    invoke-virtual {v2, v4, p1}, Lcom/tendcloud/tenddata/game/em;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 38
    :cond_5
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/ei;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v5, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 40
    :cond_6
    :goto_0
    sget-object p1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bb;->z(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ei;->a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/ci;

    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/ei;->a:Lcom/tendcloud/tenddata/game/ci;

    if-nez v3, :cond_7

    .line 43
    invoke-virtual {p0, v8, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iput-object v2, p0, Lcom/tendcloud/tenddata/game/ei;->a:Lcom/tendcloud/tenddata/game/ci;

    goto :goto_1

    .line 46
    :cond_7
    new-instance v3, Lcom/tendcloud/tenddata/game/cj;

    invoke-direct {v3}, Lcom/tendcloud/tenddata/game/cj;-><init>()V

    iget-object v5, p0, Lcom/tendcloud/tenddata/game/ei;->a:Lcom/tendcloud/tenddata/game/ci;

    invoke-virtual {v3, v5, v2}, Lcom/tendcloud/tenddata/game/cj;->a(Lcom/tendcloud/tenddata/game/ci;Lcom/tendcloud/tenddata/game/ci;)D

    move-result-wide v5

    const-wide v9, 0x3fe999999999999aL    # 0.8

    cmpl-double v3, v5, v9

    if-lez v3, :cond_8

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, v8, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 50
    :cond_8
    invoke-virtual {p0, v8, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    iput-object v2, p0, Lcom/tendcloud/tenddata/game/ei;->a:Lcom/tendcloud/tenddata/game/ci;

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ei;->c:Ljava/lang/String;

    .line 55
    :goto_1
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object p1

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/em;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v3

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/em;->b:Lorg/json/JSONObject;

    invoke-virtual {p1, v4, v2, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v2, "configured"

    if-eqz p1, :cond_9

    .line 57
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->x(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 59
    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    invoke-virtual {v2, v4, p1}, Lcom/tendcloud/tenddata/game/em;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_2

    .line 62
    :cond_9
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/ei;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 65
    :cond_a
    :goto_2
    invoke-static {}, Lcom/tendcloud/tenddata/game/cq;->a()Lcom/tendcloud/tenddata/game/cq;

    move-result-object p1

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    iget-object v2, v2, Lcom/tendcloud/tenddata/game/em;->a:Lorg/json/JSONObject;

    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v3

    iget-object v3, v3, Lcom/tendcloud/tenddata/game/em;->b:Lorg/json/JSONObject;

    const-string v4, "IP"

    invoke-virtual {p1, v4, v2, v3}, Lcom/tendcloud/tenddata/game/cq;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v2, "ip"

    if-eqz p1, :cond_b

    .line 67
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/bb;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 69
    invoke-static {}, Lcom/tendcloud/tenddata/game/em;->a()Lcom/tendcloud/tenddata/game/em;

    move-result-object v2

    invoke-virtual {v2, v4, p1}, Lcom/tendcloud/tenddata/game/em;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_3

    .line 72
    :cond_b
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/ei;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v2, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3

    .line 75
    :cond_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    :cond_d
    :goto_3
    invoke-static {}, Lcom/tendcloud/tenddata/game/bb;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    :cond_e
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/ei;->c:Ljava/lang/String;

    const-string v0, "scannableFingerId"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/ei;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :catchall_0
    :goto_4
    return-void
.end method

.method private static a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/ci;
    .locals 10

    if-eqz p0, :cond_1

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 119
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 122
    new-instance v9, Lcom/tendcloud/tenddata/game/ce;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "level"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/tendcloud/tenddata/game/ce;-><init>(Ljava/lang/String;Ljava/lang/String;BBB)V

    .line 123
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 125
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ar;->eForInternal(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    new-instance p0, Lcom/tendcloud/tenddata/game/ci;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ci;-><init>()V

    .line 129
    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/ci;->setBsslist(Ljava/util/List;)V

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method
