.class public final Lcom/tendcloud/tenddata/TDGAVirtualCurrency;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;,
        Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onChargeRequest(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    .line 18
    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "TDGAVirtualCurrency.onChargeRequest()#SDK not initialized. "

    .line 19
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDGAVirtualCurrency.onChargeRequest()#orderid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " iapid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " currencyAmount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p2

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " currencyType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p4

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " virtualCurrencyAmount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p5

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " paymentType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p7

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 26
    sget-object v1, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 28
    :cond_1
    sget-object v16, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->REQUEST:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    sget-object v17, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    invoke-static/range {v1 .. v10}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;Lcom/tendcloud/tenddata/game/a;)V

    .line 29
    new-instance v10, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;)V

    .line 31
    const-class v1, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onChargeSuccess(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    .line 38
    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "TDGAVirtualCurrency.onChargeSuccess()#SDK not initialized. "

    .line 39
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TDGAVirtualCurrency.onChargeSuccess()#orderid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 45
    const-class v1, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v2, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;

    .line 47
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    const-string v2, ""

    const-wide/16 v3, 0x0

    const-string v5, ""

    const-wide/16 v6, 0x0

    const-string v8, ""

    .line 50
    sget-object v9, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->SUCCESS:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    sget-object v10, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v10}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;Lcom/tendcloud/tenddata/game/a;)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {v2}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->access$000(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->access$100(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->access$200(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)D

    move-result-wide v13

    .line 53
    invoke-static {v2}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->access$300(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)Ljava/lang/String;

    move-result-object v15

    .line 54
    invoke-static {v2}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->access$400(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)D

    move-result-wide v16

    .line 55
    invoke-static {v2}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;->access$500(Lcom/tendcloud/tenddata/TDGAVirtualCurrency$a;)Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;->SUCCESS:Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;

    sget-object v20, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    .line 52
    invoke-static/range {v11 .. v20}, Lcom/tendcloud/tenddata/game/ac;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Lcom/tendcloud/tenddata/TDGAVirtualCurrency$b;Lcom/tendcloud/tenddata/game/a;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 47
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static onReward(DLjava/lang/String;)V
    .locals 2

    .line 63
    invoke-static {}, Lcom/tendcloud/tenddata/game/ac;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "TDGAVirtualCurrency.onReward()#SDK not initialized. "

    .line 64
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAVirtualCurrency.onReward()#currencyAmount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/ac;->a(DLjava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    return-void
.end method
