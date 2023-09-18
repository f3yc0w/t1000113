.class public final enum Lnet/aihelp/data/localize/config/ProcessEntranceHelper;
.super Ljava/lang/Enum;
.source "ProcessEntranceHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/data/localize/config/ProcessEntranceHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/data/localize/config/ProcessEntranceHelper;

.field public static final enum INSTANCE:Lnet/aihelp/data/localize/config/ProcessEntranceHelper;


# instance fields
.field private currentProcess:Lnet/aihelp/data/model/config/ProcessEntity;

.field private final processMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/aihelp/data/model/config/ProcessEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->INSTANCE:Lnet/aihelp/data/localize/config/ProcessEntranceHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/aihelp/data/localize/config/ProcessEntranceHelper;

    aput-object v0, v1, v2

    .line 28
    sput-object v1, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->$VALUES:[Lnet/aihelp/data/localize/config/ProcessEntranceHelper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->processMap:Ljava/util/Map;

    return-void
.end method

.method private getBindingIntent(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/config/IntentEntity;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 95
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 96
    invoke-static {p1, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 97
    new-instance v3, Lnet/aihelp/data/model/config/IntentEntity;

    invoke-direct {v3}, Lnet/aihelp/data/model/config/IntentEntity;-><init>()V

    const-string v4, "IntentsId"

    .line 98
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/aihelp/data/model/config/IntentEntity;->setIntentId(I)V

    const-string v4, "Name"

    .line 99
    invoke-static {v2, v4}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/aihelp/data/model/config/IntentEntity;->setIntentName(Ljava/lang/String;)V

    const-string v4, "IntentsList"

    .line 100
    invoke-static {v2, v4}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->getBindingIntent(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lnet/aihelp/data/model/config/IntentEntity;->setIntentList(Ljava/util/List;)V

    .line 101
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getBindingIntent(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/config/IntentEntity;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "intentsList"

    .line 78
    invoke-static {p1, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 80
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 81
    invoke-static {p1, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 82
    new-instance v3, Lnet/aihelp/data/model/config/IntentEntity;

    invoke-direct {v3}, Lnet/aihelp/data/model/config/IntentEntity;-><init>()V

    const-string v4, "intentsId"

    .line 83
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/aihelp/data/model/config/IntentEntity;->setIntentId(I)V

    const-string v4, "name"

    .line 84
    invoke-static {v2, v4}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/aihelp/data/model/config/IntentEntity;->setIntentName(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, v2}, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->getBindingIntent(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lnet/aihelp/data/model/config/IntentEntity;->setIntentList(Ljava/util/List;)V

    .line 86
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/data/localize/config/ProcessEntranceHelper;
    .locals 1

    .line 28
    const-class v0, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/data/localize/config/ProcessEntranceHelper;
    .locals 1

    .line 28
    sget-object v0, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->$VALUES:[Lnet/aihelp/data/localize/config/ProcessEntranceHelper;

    invoke-virtual {v0}, [Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/data/localize/config/ProcessEntranceHelper;

    return-object v0
.end method


# virtual methods
.method public getCurrentProcess()Lnet/aihelp/data/model/config/ProcessEntity;
    .locals 1

    .line 70
    iget-object v0, p0, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->currentProcess:Lnet/aihelp/data/model/config/ProcessEntity;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lnet/aihelp/data/model/config/ProcessEntity;

    invoke-direct {v0}, Lnet/aihelp/data/model/config/ProcessEntity;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getProcess(Ljava/lang/String;)Lnet/aihelp/data/model/config/ProcessEntity;
    .locals 2

    .line 108
    iget-object v0, p0, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->processMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/model/config/ProcessEntity;

    if-nez v0, :cond_4

    .line 110
    new-instance v0, Lnet/aihelp/data/model/config/ProcessEntity;

    invoke-direct {v0}, Lnet/aihelp/data/model/config/ProcessEntity;-><init>()V

    const-string v1, "test001"

    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 112
    invoke-virtual {v0, p1}, Lnet/aihelp/data/model/config/ProcessEntity;->setIntent(I)V

    goto :goto_0

    :cond_0
    const-string v1, "test002"

    .line 113
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x2

    .line 114
    invoke-virtual {v0, p1}, Lnet/aihelp/data/model/config/ProcessEntity;->setIntent(I)V

    goto :goto_0

    :cond_1
    const-string v1, "test003"

    .line 115
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x3

    .line 116
    invoke-virtual {v0, p1}, Lnet/aihelp/data/model/config/ProcessEntity;->setIntent(I)V

    goto :goto_0

    :cond_2
    const-string v1, "test004"

    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    .line 118
    invoke-virtual {v0, p1}, Lnet/aihelp/data/model/config/ProcessEntity;->setIntent(I)V

    goto :goto_0

    :cond_3
    const-string p1, "No related process was found, please check your process id."

    .line 120
    invoke-static {p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    .line 128
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lnet/aihelp/data/model/config/ProcessEntity;->getTags()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lnet/aihelp/common/UserProfile;->ENTRANCE_TAGS:Ljava/lang/String;

    .line 129
    invoke-virtual {v0}, Lnet/aihelp/data/model/config/ProcessEntity;->getVisitId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/ui/helper/StatisticHelper;->whenProcessEntranceSet(Ljava/lang/String;)V

    .line 130
    iput-object v0, p0, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->currentProcess:Lnet/aihelp/data/model/config/ProcessEntity;

    return-object v0
.end method

.method public prepareDataSource()V
    .locals 7

    const-string v0, "faqId"

    const/16 v1, 0x3f2

    .line 42
    :try_start_0
    invoke-static {v1}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getFileLocation(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/aihelp/utils/FileUtil;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 45
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 46
    invoke-static {v2, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "processId"

    .line 47
    invoke-static {v3, v4}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    new-instance v5, Lnet/aihelp/data/model/config/ProcessEntity;

    invoke-direct {v5}, Lnet/aihelp/data/model/config/ProcessEntity;-><init>()V

    const-string v6, "homeSettings"

    .line 49
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/aihelp/data/model/config/ProcessEntity;->setIntent(I)V

    .line 50
    invoke-static {v3, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/aihelp/data/model/config/ProcessEntity;->setFaqId(Ljava/lang/String;)V

    .line 51
    invoke-static {v3, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/aihelp/data/model/config/ProcessEntity;->setSectionId(Ljava/lang/String;)V

    const-string v6, "id"

    .line 52
    invoke-static {v3, v6}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/aihelp/data/model/config/ProcessEntity;->setVisitId(Ljava/lang/String;)V

    const-string v6, "tags"

    .line 53
    invoke-static {v3, v6}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/aihelp/data/model/config/ProcessEntity;->setTags(Lorg/json/JSONArray;)V

    const-string v6, "location"

    .line 54
    invoke-static {v3, v6}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/aihelp/data/model/config/ProcessEntity;->setFaqEntrances(Lorg/json/JSONArray;)V

    const-string v6, "intentsMenu"

    .line 56
    invoke-static {v3, v6}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "alwaysShow"

    .line 57
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lnet/aihelp/data/model/config/ProcessEntity;->setEnableInteraction(Z)V

    const-string v6, "menuText"

    .line 58
    invoke-static {v3, v6}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/aihelp/data/model/config/ProcessEntity;->setSmartIntentName(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, v3}, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->getBindingIntent(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v3}, Lnet/aihelp/data/model/config/ProcessEntity;->setSmartIntentList(Ljava/util/List;)V

    .line 61
    iget-object v3, p0, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->processMap:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 36
    iget-object v0, p0, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->processMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
