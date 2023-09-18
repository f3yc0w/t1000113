.class public Lcom/tendcloud/tenddata/game/du;
.super Lcom/tendcloud/tenddata/game/ea;
.source "td"


# static fields
.field static a:Lcom/tendcloud/tenddata/game/du;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/ea;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tendcloud/tenddata/game/du;
    .locals 2

    const-class v0, Lcom/tendcloud/tenddata/game/du;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/du;->a:Lcom/tendcloud/tenddata/game/du;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/tendcloud/tenddata/game/du;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/du;-><init>()V

    sput-object v1, Lcom/tendcloud/tenddata/game/du;->a:Lcom/tendcloud/tenddata/game/du;

    .line 24
    :cond_0
    sget-object v1, Lcom/tendcloud/tenddata/game/du;->a:Lcom/tendcloud/tenddata/game/du;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public setAccount(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "account"

    .line 36
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAntiCheatingstatus(I)V
    .locals 1

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "antiCheating"

    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCurrentPageName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "page"

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDeepLink(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "deeplink"

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/as;->setDeepLink(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 49
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setPushInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "push"

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sessionId"

    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSessionStartTime(J)V
    .locals 0

    .line 54
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "sessionStartTime"

    invoke-virtual {p0, p2, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSubaccount(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "subaccount"

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/tendcloud/tenddata/game/du;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
