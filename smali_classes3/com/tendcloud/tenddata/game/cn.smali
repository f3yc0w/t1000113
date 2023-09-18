.class public Lcom/tendcloud/tenddata/game/cn;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/cn$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/cn;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static p:Lorg/json/JSONObject;


# instance fields
.field private i:Ljava/lang/String;

.field private k:Lcom/tendcloud/tenddata/game/cn$a;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 405
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->a()Lcom/tendcloud/tenddata/game/cn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/bt;->register(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const-string v0, "account"

    .line 415
    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->b:Ljava/lang/String;

    const-string v0, "accountId"

    .line 417
    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->c:Ljava/lang/String;

    const-string v0, "name"

    .line 418
    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->d:Ljava/lang/String;

    const-string v0, "gender"

    .line 419
    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->e:Ljava/lang/String;

    const-string v0, "age"

    .line 420
    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->f:Ljava/lang/String;

    const-string v0, "type"

    .line 421
    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->g:Ljava/lang/String;

    const-string v0, "accountCus"

    .line 422
    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->h:Ljava/lang/String;

    const-string v0, "default"

    .line 425
    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    sget-object v0, Lcom/tendcloud/tenddata/game/cn$a;->UNKNOWN:Lcom/tendcloud/tenddata/game/cn$a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->k:Lcom/tendcloud/tenddata/game/cn$a;

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/cn;
    .locals 2

    .line 390
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->a:Lcom/tendcloud/tenddata/game/cn;

    if-nez v0, :cond_1

    .line 391
    const-class v0, Lcom/tendcloud/tenddata/game/cn;

    monitor-enter v0

    .line 392
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/cn;->a:Lcom/tendcloud/tenddata/game/cn;

    if-nez v1, :cond_0

    .line 393
    new-instance v1, Lcom/tendcloud/tenddata/game/cn;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/cn;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/cn;->a:Lcom/tendcloud/tenddata/game/cn;

    .line 395
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 397
    :cond_1
    :goto_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->a:Lcom/tendcloud/tenddata/game/cn;

    return-object v0
.end method

.method private a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    .line 105
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object v0

    invoke-static {p3}, Lcom/tendcloud/tenddata/game/as;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/tendcloud/tenddata/game/du;->setSessionId(Ljava/lang/String;)V

    .line 106
    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "accountId"

    .line 107
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "name"

    .line 108
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    .line 109
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->index()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gender"

    .line 110
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->index()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "age"

    .line 111
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "level"

    .line 113
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gameServer"

    .line 114
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p2}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "missionId"

    .line 116
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "custom"

    .line 118
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Lcom/tendcloud/tenddata/game/du;->setAccount(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 123
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    .line 77
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/dk;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dk;-><init>()V

    .line 78
    sget-object v1, Lcom/tendcloud/tenddata/game/dk$a;->IMMEDIATELY:Lcom/tendcloud/tenddata/game/dk$a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dk;->b:Lcom/tendcloud/tenddata/game/dk$a;

    .line 79
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/dk;->a:Lcom/tendcloud/tenddata/game/a;

    .line 80
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 90
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    .line 92
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 94
    instance-of p0, p2, Ljava/util/Map;

    if-eqz p0, :cond_1

    .line 95
    check-cast p2, Ljava/util/Map;

    iput-object p2, v0, Lcom/tendcloud/tenddata/game/dl;->d:Ljava/util/Map;

    .line 97
    :cond_1
    iput-object p3, v0, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 98
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 146
    :try_start_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->i:Ljava/lang/String;

    .line 147
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 150
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->l:Ljava/lang/String;

    .line 154
    :cond_0
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 155
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cn$a;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/cn$a;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->k:Lcom/tendcloud/tenddata/game/cn$a;

    .line 157
    :cond_1
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 158
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tendcloud/tenddata/game/cn;->m:I

    .line 160
    :cond_2
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 161
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->n:Ljava/lang/String;

    .line 163
    :cond_3
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 164
    sget-object p1, Lcom/tendcloud/tenddata/game/cn;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 172
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :catchall_1
    :cond_4
    :goto_0
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    const-class v0, Lcom/tendcloud/tenddata/game/cn;

    monitor-enter v0

    .line 235
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/as;->setLastRoleName(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 236
    sput-object v1, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    .line 238
    sput-object p0, Lcom/tendcloud/tenddata/game/cn;->j:Ljava/lang/String;

    .line 239
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/as;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 242
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    .line 243
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cn;->b(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x1

    :try_start_2
    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->dForInternal([Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    sput-object p0, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    .line 249
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->c()V

    .line 250
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->e()Ljava/util/Map;

    move-result-object p0

    .line 251
    sget-object v1, Lcom/tendcloud/tenddata/game/cn;->b:Ljava/lang/String;

    const-string v2, "roleCreate"

    invoke-static {v1, v2, p0, p1}, Lcom/tendcloud/tenddata/game/cn;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V

    .line 252
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Lcom/tendcloud/tenddata/game/du;->setSubaccount(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    :catchall_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 67
    :try_start_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .locals 5

    .line 130
    :try_start_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cn;->d()Ljava/util/Map;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 132
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "apiType"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "domain"

    sget-object v4, Lcom/tendcloud/tenddata/game/cn;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "action"

    const-string v4, "update"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 137
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/du;->setAccount(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 140
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static b(Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    .line 376
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->e()Ljava/util/Map;

    move-result-object v0

    .line 378
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/du;->setSubaccount(Lorg/json/JSONObject;)V

    .line 380
    sget-object v1, Lcom/tendcloud/tenddata/game/cn;->b:Ljava/lang/String;

    const-string v2, "roleUpdate"

    invoke-static {v1, v2, v0, p0}, Lcom/tendcloud/tenddata/game/cn;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 383
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static c()V
    .locals 2

    .line 317
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->setLastRoleName(Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->j:Ljava/lang/String;

    sget-object v1, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/as;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()Ljava/util/Map;
    .locals 3

    .line 322
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 324
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/cn;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cn;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget v1, p0, Lcom/tendcloud/tenddata/game/cn;->m:I

    if-eqz v1, :cond_0

    .line 326
    sget-object v2, Lcom/tendcloud/tenddata/game/cn;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "UNKNOWN"

    .line 328
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cn;->k:Lcom/tendcloud/tenddata/game/cn$a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cn$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    sget-object v1, Lcom/tendcloud/tenddata/game/cn;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cn;->k:Lcom/tendcloud/tenddata/game/cn$a;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cn$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cn;->l:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 332
    sget-object v2, Lcom/tendcloud/tenddata/game/cn;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cn;->n:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 335
    sget-object v2, Lcom/tendcloud/tenddata/game/cn;->g:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_3
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "custom"

    .line 338
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 342
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method private static e()Ljava/util/Map;
    .locals 3

    .line 348
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 350
    sget-object v2, Lcom/tendcloud/tenddata/game/cn;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v1, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "custom"

    .line 352
    sget-object v2, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 356
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private static f()V
    .locals 3

    .line 363
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->e()Ljava/util/Map;

    move-result-object v0

    .line 365
    invoke-static {}, Lcom/tendcloud/tenddata/game/du;->a()Lcom/tendcloud/tenddata/game/du;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/du;->setSubaccount(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    .line 367
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/cn;->b(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 370
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    .line 277
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 281
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 282
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->c()V

    .line 283
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 263
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/cn;->p:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->c()V

    .line 269
    invoke-static {}, Lcom/tendcloud/tenddata/game/cn;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 308
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 309
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cn;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 295
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->o:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cn;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :catchall_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onTDEBEventAccount(Lcom/tendcloud/tenddata/game/zz$a;)V
    .locals 8

    const-string v0, "missionId"

    if-eqz p1, :cond_3

    .line 25
    :try_start_0
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "apiType"

    .line 27
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    iget-object v2, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "service"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/game/a;

    .line 32
    iget-object v3, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 33
    iget-object v4, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v5, "domain"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 34
    iget-object v5, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v6, "action"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 35
    iget-object v6, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v7, "immediate"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v1, :cond_2

    .line 39
    instance-of v7, v1, Lcom/tendcloud/tenddata/TDGAAccount;

    if-eqz v7, :cond_2

    .line 40
    iget-object v7, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 41
    iget-object p1, p1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    check-cast v1, Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-direct {p0, v1, p1, v2}, Lcom/tendcloud/tenddata/game/cn;->a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    goto :goto_0

    .line 44
    :cond_1
    check-cast v1, Lcom/tendcloud/tenddata/TDGAAccount;

    const-string p1, ""

    invoke-direct {p0, v1, p1, v2}, Lcom/tendcloud/tenddata/game/cn;->a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    .line 50
    invoke-static {v4, v5, v3, v2}, Lcom/tendcloud/tenddata/game/cn;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tendcloud/tenddata/game/a;)V

    .line 51
    invoke-direct {p0, v6}, Lcom/tendcloud/tenddata/game/cn;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 52
    invoke-direct {p0, v2}, Lcom/tendcloud/tenddata/game/cn;->a(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 60
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    :cond_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->n:Ljava/lang/String;

    .line 222
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cn;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 226
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAge(I)V
    .locals 1

    .line 207
    :try_start_0
    iget v0, p0, Lcom/tendcloud/tenddata/game/cn;->m:I

    if-eq v0, p1, :cond_0

    .line 208
    iput p1, p0, Lcom/tendcloud/tenddata/game/cn;->m:I

    .line 209
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cn;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 213
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setGender(Lcom/tendcloud/tenddata/game/cn$a;)V
    .locals 1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->k:Lcom/tendcloud/tenddata/game/cn$a;

    if-eq v0, p1, :cond_0

    .line 195
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->k:Lcom/tendcloud/tenddata/game/cn$a;

    .line 196
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cn;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 200
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cn;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cn;->l:Ljava/lang/String;

    .line 183
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cn;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 187
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
