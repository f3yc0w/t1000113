.class public Lnet/aihelp/ui/helper/LogoutMqttHelper;
.super Ljava/lang/Object;
.source "LogoutMqttHelper.java"


# static fields
.field public static final LOGOUT_TYPE_ACTION_DISPLAY:Ljava/lang/String; = "6"

.field public static final LOGOUT_TYPE_BOT_STUPID:Ljava/lang/String; = "3"

.field private static final LOGOUT_TYPE_DEFAULT:Ljava/lang/String; = "0"

.field public static final LOGOUT_TYPE_FAQ_DISPLAY:Ljava/lang/String; = "5"

.field public static final LOGOUT_TYPE_FAQ_HELPFUL:Ljava/lang/String; = "1"

.field public static final LOGOUT_TYPE_FAQ_UNHELPFUL:Ljava/lang/String; = "2"

.field public static final LOGOUT_TYPE_FORM_DISPLAY:Ljava/lang/String; = "4"

.field public static final LOGOUT_TYPE_FORM_GOTO_PAGE:Ljava/lang/String; = "7"

.field public static final LOGOUT_TYPE_FORM_SUBMIT:Ljava/lang/String; = "8"

.field private static logoutType:Ljava/lang/String;

.field private static final sortedTypes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lnet/aihelp/ui/helper/LogoutMqttHelper;->sortedTypes:Ljava/util/LinkedList;

    const-string v0, "0"

    .line 43
    sput-object v0, Lnet/aihelp/ui/helper/LogoutMqttHelper;->logoutType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogoutType()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lnet/aihelp/ui/helper/LogoutMqttHelper;->logoutType:Ljava/lang/String;

    return-object v0
.end method

.method private static getPriorityTypes()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    sget-object v0, Lnet/aihelp/ui/helper/LogoutMqttHelper;->sortedTypes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "6"

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "4"

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "5"

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "1"

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "8"

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "2"

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "3"

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "7"

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static getTagsFromMessageList(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 6

    .line 77
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 79
    invoke-static {p0, v2}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "tags"

    .line 80
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    invoke-static {v3, v4}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 82
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 83
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static resetTypeWhenLogout()V
    .locals 1

    const-string v0, "0"

    .line 73
    sput-object v0, Lnet/aihelp/ui/helper/LogoutMqttHelper;->logoutType:Ljava/lang/String;

    return-void
.end method

.method public static updateType(Ljava/lang/String;)V
    .locals 2

    .line 61
    invoke-static {}, Lnet/aihelp/ui/helper/LogoutMqttHelper;->getPriorityTypes()Ljava/util/LinkedList;

    move-result-object v0

    .line 62
    sget-object v1, Lnet/aihelp/ui/helper/LogoutMqttHelper;->logoutType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 63
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-le v0, v1, :cond_0

    .line 64
    sput-object p0, Lnet/aihelp/ui/helper/LogoutMqttHelper;->logoutType:Ljava/lang/String;

    :cond_0
    return-void
.end method
