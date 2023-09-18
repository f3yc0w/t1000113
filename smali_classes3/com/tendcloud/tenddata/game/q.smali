.class Lcom/tendcloud/tenddata/game/q;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/zz;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$order:Lcom/tendcloud/tenddata/game/en;

.field final synthetic val$payType:Ljava/lang/String;

.field final synthetic val$service:Lcom/tendcloud/tenddata/game/a;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/zz;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Lcom/tendcloud/tenddata/game/en;Ljava/lang/String;)V
    .locals 0

    .line 1061
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/q;->this$0:Lcom/tendcloud/tenddata/game/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/q;->val$service:Lcom/tendcloud/tenddata/game/a;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/q;->val$account:Ljava/lang/String;

    iput-object p4, p0, Lcom/tendcloud/tenddata/game/q;->val$order:Lcom/tendcloud/tenddata/game/en;

    iput-object p5, p0, Lcom/tendcloud/tenddata/game/q;->val$payType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "keyOrderDetail"

    .line 1065
    :try_start_0
    new-instance v1, Lcom/tendcloud/tenddata/game/zz$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/zz$a;-><init>()V

    .line 1066
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "apiType"

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "service"

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/q;->val$service:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "domain"

    const-string v4, "iap"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    iget-object v2, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "action"

    const-string v4, "pay"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const-string v3, "accountId"

    .line 1071
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/q;->val$account:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->val$service:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "APP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "currencyType"

    const-string v5, "keyCurrencyType"

    const-string v6, "keyTotalPrice"

    const-string v7, "amount"

    const-string v8, "payType"

    const-string v9, "keyOrderId"

    const-string v10, "orderId"

    if-nez v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->val$service:Lcom/tendcloud/tenddata/game/a;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/a;->name()Ljava/lang/String;

    move-result-object v3

    const-string v11, "FINTECH"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1085
    :cond_0
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->val$payType:Ljava/lang/String;

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-virtual {v3, v9}, Lcom/tendcloud/tenddata/game/en;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-virtual {v3, v6}, Lcom/tendcloud/tenddata/game/en;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-virtual {v3, v5}, Lcom/tendcloud/tenddata/game/en;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1073
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-virtual {v3, v9}, Lcom/tendcloud/tenddata/game/en;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->val$payType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1075
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->val$payType:Ljava/lang/String;

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    :cond_2
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-virtual {v3, v6}, Lcom/tendcloud/tenddata/game/en;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-virtual {v3, v5}, Lcom/tendcloud/tenddata/game/en;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1079
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "CNY"

    .line 1083
    :cond_3
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    :goto_1
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-virtual {v3, v0}, Lcom/tendcloud/tenddata/game/en;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1092
    iget-object v3, p0, Lcom/tendcloud/tenddata/game/q;->val$order:Lcom/tendcloud/tenddata/game/en;

    invoke-virtual {v3, v0}, Lcom/tendcloud/tenddata/game/en;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1093
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "items"

    .line 1094
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    :cond_4
    iget-object v0, v1, Lcom/tendcloud/tenddata/game/zz$a;->paraMap:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    invoke-static {}, Lcom/tendcloud/tenddata/game/zz;->c()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x66

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method
