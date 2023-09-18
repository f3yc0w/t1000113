.class public Lcom/tendcloud/tenddata/game/dx;
.super Lcom/tendcloud/tenddata/game/ea;
.source "td"


# static fields
.field private static a:Ljava/util/HashMap;

.field private static c:Ljava/util/HashMap;

.field private static volatile f:Lcom/tendcloud/tenddata/game/dx;


# instance fields
.field private final d:[Ljava/lang/String;

.field private final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/dx;->a:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/dx;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 155
    sput-object v0, Lcom/tendcloud/tenddata/game/dx;->f:Lcom/tendcloud/tenddata/game/dx;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 27
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ea;-><init>()V

    const-string v0, "PUSH"

    const-string v1, "EAuth"

    .line 23
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dx;->d:[Ljava/lang/String;

    const-string v0, "APP"

    const-string v1, "TRACKING"

    const-string v2, "GAME"

    const-string v3, "BG"

    const-string v4, "FINTECH"

    .line 24
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/dx;->e:[Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/tendcloud/tenddata/game/aq;->a()Lcom/tendcloud/tenddata/game/aq;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/aq;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "displayName"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lcom/tendcloud/tenddata/game/aq;->a()Lcom/tendcloud/tenddata/game/aq;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/aq;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "globalId"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "versionName"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "versionCode"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/tendcloud/tenddata/game/aq;->a()Lcom/tendcloud/tenddata/game/aq;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/aq;->d(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "installTime"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lcom/tendcloud/tenddata/game/aq;->a()Lcom/tendcloud/tenddata/game/aq;

    move-result-object v0

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/aq;->e(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "updateTime"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/dx;
    .locals 2

    .line 158
    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->f:Lcom/tendcloud/tenddata/game/dx;

    if-nez v0, :cond_1

    .line 159
    const-class v0, Lcom/tendcloud/tenddata/game/dp;

    monitor-enter v0

    .line 160
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/dx;->f:Lcom/tendcloud/tenddata/game/dx;

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Lcom/tendcloud/tenddata/game/dx;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dx;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/dx;->f:Lcom/tendcloud/tenddata/game/dx;

    .line 163
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 166
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->f:Lcom/tendcloud/tenddata/game/dx;

    return-object v0
.end method

.method private a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/dx;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 94
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "appKey"

    .line 95
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "service"

    .line 96
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    :try_start_1
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0, v1, p1}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 103
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/dx;->e:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/tendcloud/tenddata/game/ab;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    .line 107
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V

    goto :goto_0

    .line 112
    :cond_2
    sget-object p1, Lcom/tendcloud/tenddata/game/dx;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dx;->b()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, p1

    :catchall_1
    :cond_3
    :goto_0
    return-object v0
.end method

.method private b()Ljava/util/ArrayList;
    .locals 3

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/dx;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 49
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/a;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->c:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "channel"

    .line 148
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSubmitAppId(Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 64
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    sget-object v1, Lcom/tendcloud/tenddata/game/dx;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/dx;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    const-string p1, "appKey"

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public setSubmitChannelId(Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 124
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 125
    sget-object v0, Lcom/tendcloud/tenddata/game/dx;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 126
    sget-object p1, Lcom/tendcloud/tenddata/game/dx;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/dx;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const-string v0, "channel"

    .line 133
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const-string p1, "Default"

    .line 142
    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/dx;->setAppChannel(Ljava/lang/String;)V

    :catchall_0
    :goto_0
    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "uniqueId"

    .line 152
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/dx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
