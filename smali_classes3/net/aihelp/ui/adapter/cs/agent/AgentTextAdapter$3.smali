.class Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3;
.super Ljava/lang/Object;
.source "AgentTextAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->prepareTranslate(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

.field final synthetic val$holder:Lnet/aihelp/core/ui/adapter/ViewHolder;

.field final synthetic val$originContent:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/TextView;

.field final synthetic val$translatedContent:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/widget/TextView;Lnet/aihelp/core/ui/adapter/ViewHolder;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3;->val$originContent:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3;->val$translatedContent:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3;->val$textView:Landroid/widget/TextView;

    iput-object p5, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3;->val$holder:Lnet/aihelp/core/ui/adapter/ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 133
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "deviceId"

    .line 134
    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

    invoke-static {v1}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->access$500(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/aihelp/utils/DeviceUuidFactory;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "playerId"

    .line 135
    sget-object v1, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "content"

    .line 136
    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3;->val$originContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    sget-object v1, Lnet/aihelp/common/API;->TRANSLATE_MESSAGE:Ljava/lang/String;

    new-instance v2, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3$1;

    invoke-direct {v2, p0}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3$1;-><init>(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3;)V

    invoke-virtual {v0, v1, p1, v2}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestPostByJson(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;

    .line 145
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3;->val$holder:Lnet/aihelp/core/ui/adapter/ViewHolder;

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

    const-string v1, "aihelp_iv_translate"

    invoke-static {v0, v1}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->access$600(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
