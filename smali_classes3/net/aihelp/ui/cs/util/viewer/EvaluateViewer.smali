.class public Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;
.super Ljava/lang/Object;
.source "EvaluateViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;,
        Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;
    }
.end annotation


# instance fields
.field private etFeedback:Landroid/widget/EditText;

.field private inputFeedback:Ljava/lang/String;

.field private llFeedbackLayout:Landroid/widget/LinearLayout;

.field private rateSupportDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

.field private final selectedOptionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedRateValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 57
    iput v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedRateValue:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedOptionIds:Ljava/util/List;

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->inputFeedback:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Landroid/app/Dialog;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;Z)V
    .locals 0

    .line 50
    invoke-direct/range {p0 .. p5}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->onSolveStatusConfirmed(Landroid/content/Context;Landroid/app/Dialog;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;Z)V

    return-void
.end method

.method static synthetic access$100(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedOptionIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;)I
    .locals 0

    .line 50
    iget p0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedRateValue:I

    return p0
.end method

.method static synthetic access$202(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;I)I
    .locals 0

    .line 50
    iput p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedRateValue:I

    return p1
.end method

.method static synthetic access$300(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->resetFeedbackOptions(Landroid/content/Context;Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$400(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->showThanksAfterEvaluate(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$500(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;)Lnet/aihelp/core/ui/dialog/AlertDialog;
    .locals 0

    .line 50
    iget-object p0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->rateSupportDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    return-object p0
.end method

.method static synthetic access$600(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->onConfirmEvaluate(Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;)V

    return-void
.end method

.method static synthetic access$700(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->updateCheckBoxEnableStatus(Landroid/content/Context;)V

    return-void
.end method

.method private getFeedbackOptionItem(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/view/View;
    .locals 8

    const-string v0, "aihelp_layout_feedback_option"

    .line 321
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "id"

    .line 323
    invoke-static {p2, v1}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg"

    .line 324
    invoke-static {p2, v2}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-static {v0, v2}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 328
    :goto_0
    iget-object v4, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedOptionIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 329
    iget-object v4, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedOptionIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 335
    :cond_1
    :goto_1
    new-instance v1, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$7;

    invoke-direct {v1, p0, p2, p1}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$7;-><init>(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Lorg/json/JSONObject;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 347
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_2

    .line 348
    new-instance p1, Landroid/content/res/ColorStateList;

    const/4 p2, 0x2

    new-array v1, p2, [[I

    new-array v3, v5, [I

    const v4, -0x10100a0

    aput v4, v3, v2

    aput-object v3, v1, v2

    new-array v3, v5, [I

    const v4, 0x10100a0

    aput v4, v3, v2

    aput-object v3, v1, v5

    new-array p2, p2, [I

    sget-object v3, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 350
    invoke-static {v3, v6, v7}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v3

    aput v3, p2, v2

    sget-object v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    .line 351
    invoke-static {v2}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v2

    aput v2, p2, v5

    invoke-direct {p1, v1, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 353
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 356
    :cond_2
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 357
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 358
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static getInstance()Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;
    .locals 1

    .line 62
    new-instance v0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

    invoke-direct {v0}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;-><init>()V

    return-object v0
.end method

.method private onConfirmEvaluate(Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;)V
    .locals 9

    .line 216
    sget-boolean v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForRating:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->etFeedback:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 222
    :goto_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 223
    sget-object v3, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->INSTANCE:Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;

    invoke-virtual {v3}, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->getOpinionArray()Landroid/util/SparseArray;

    move-result-object v3

    iget v4, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedRateValue:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    const/4 v4, 0x0

    .line 224
    :goto_1
    iget-object v5, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedOptionIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 225
    iget-object v5, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedOptionIds:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    .line 226
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 227
    invoke-static {v3, v6}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "id"

    .line 228
    invoke-static {v7, v8}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 229
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 233
    :cond_3
    invoke-static {p1}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 234
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "starIndex"

    .line 235
    iget v4, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedRateValue:I

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "elseMsg"

    .line 236
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "chooseList"

    .line 237
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "userId"

    .line 238
    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    sget-object v2, Lnet/aihelp/common/API;->EVALUATE_TICKET:Ljava/lang/String;

    new-instance v3, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$6;

    invoke-direct {v3, p0, p2}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$6;-><init>(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;)V

    invoke-virtual {v0, v2, p1, v3}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestPostByJson(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;

    if-eqz p2, :cond_4

    .line 248
    invoke-interface {p2}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;->onPostEvaluate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :catch_0
    :cond_4
    invoke-static {}, Lnet/aihelp/utils/SpUtil;->getInstance()Lnet/aihelp/utils/SpUtil;

    move-result-object p1

    sget-object p2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lnet/aihelp/utils/SpUtil;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    invoke-static {}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->resetTicketStatusFlags()V

    return-void
.end method

.method private onSolveStatusConfirmed(Landroid/content/Context;Landroid/app/Dialog;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;Z)V
    .locals 1

    if-eqz p4, :cond_0

    .line 118
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 119
    invoke-interface {p4, p5}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;->onConfirmResolve(Z)V

    return-void

    .line 122
    :cond_0
    invoke-static {p1}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 124
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    if-eqz p3, :cond_3

    .line 126
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "userId"

    .line 127
    sget-object v0, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {p2, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "deviceId"

    .line 128
    invoke-static {p1}, Lnet/aihelp/utils/DeviceUuidFactory;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "resolveType"

    if-eqz p5, :cond_1

    const/4 p5, 0x1

    goto :goto_0

    :cond_1
    const/4 p5, 0x2

    .line 129
    :goto_0
    invoke-virtual {p2, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object p4

    sget-object p5, Lnet/aihelp/common/API;->ASK_FOR_RESOLVE_STATUS:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p4, p5, p2, v0}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestPostByJson(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;

    const/4 p2, 0x0

    .line 131
    sput-boolean p2, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForAskingResolveStatus:Z

    .line 132
    sget-boolean p4, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForRating:Z

    if-eqz p4, :cond_2

    .line 133
    invoke-direct {p0, p1, p3}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->showRateSupport(Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;)V

    goto :goto_1

    .line 135
    :cond_2
    invoke-direct {p0, p1, p3}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->onConfirmEvaluate(Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;)V

    .line 136
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->showThanksAfterEvaluate(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method private prepareFeedbackForLandscape(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 6

    .line 283
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->llFeedbackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p2, :cond_3

    .line 284
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 285
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 286
    invoke-static {p2, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->getFeedbackOptionItem(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    .line 288
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 289
    invoke-static {p2, v4}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->getFeedbackOptionItem(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v3

    .line 292
    :cond_0
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 293
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 294
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v3, :cond_1

    .line 296
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 298
    :cond_1
    iget-object v2, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->llFeedbackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 300
    :cond_2
    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->prepareFeedbackInput(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method private prepareFeedbackForPortrait(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 3

    .line 273
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->llFeedbackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p2, :cond_1

    .line 274
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 275
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 276
    iget-object v1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->llFeedbackLayout:Landroid/widget/LinearLayout;

    invoke-static {p2, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->getFeedbackOptionItem(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->prepareFeedbackInput(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private prepareFeedbackInput(Landroid/content/Context;)V
    .locals 4

    const-string v0, "aihelp_layout_feedback_input"

    .line 305
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->etFeedback:Landroid/widget/EditText;

    const-string v1, "aihelp_rate_additional_feedback_message"

    .line 306
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->inputFeedback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->etFeedback:Landroid/widget/EditText;

    iget-object v1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->inputFeedback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->etFeedback:Landroid/widget/EditText;

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    invoke-static {v1, v2, v3}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 311
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 312
    invoke-static {p1, v1}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 313
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->etFeedback:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->llFeedbackLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->etFeedback:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private resetFeedbackOptions(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 1

    .line 263
    sget-boolean v0, Lnet/aihelp/common/CustomConfig$CustomerService;->isEvaluateBadServiceEnable:Z

    if-eqz v0, :cond_1

    .line 264
    invoke-static {}, Lnet/aihelp/utils/Styles;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->prepareFeedbackForLandscape(Landroid/content/Context;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 267
    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->prepareFeedbackForPortrait(Landroid/content/Context;Lorg/json/JSONArray;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showRateSupport(Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;)V
    .locals 5

    .line 147
    new-instance v0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "aihelp_dia_rate_support"

    .line 148
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setContentView(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x50

    .line 149
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setGravity(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 150
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->fromBottom(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setCancelableOntheOutside(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$3;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$3;-><init>(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;)V

    .line 152
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->fullWidth()Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->create()Lnet/aihelp/core/ui/dialog/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->rateSupportDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    .line 162
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    const-wide v3, 0x3fe3333333333333L    # 0.6

    add-double/2addr v1, v3

    const-wide v3, 0x3fe999999999999aL    # 0.8

    .line 163
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 162
    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    .line 164
    iget-object v1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->rateSupportDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v2, "aihelp_rl_rate_layout"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 165
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 168
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->rateSupportDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_tv_title"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    sget-object v1, Lnet/aihelp/common/CustomConfig$CustomerService;->csInviteEvaluate:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->rateSupportDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_tv_rating_dislike"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "aihelp_rate_dissatisfied"

    .line 173
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->rateSupportDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_tv_rating_like"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "aihelp_rate_satisfied"

    .line 177
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->rateSupportDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_ll_feedback"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->llFeedbackLayout:Landroid/widget/LinearLayout;

    .line 181
    sget-object v0, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->INSTANCE:Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;

    invoke-virtual {v0}, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->getOpinionArray()Landroid/util/SparseArray;

    move-result-object v0

    .line 182
    iget v1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedRateValue:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    invoke-direct {p0, p1, v1}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->resetFeedbackOptions(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 184
    iget-object v1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->rateSupportDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v2, "aihelp_rating_bar"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/aihelp/ui/widget/AIHelpRatingBar;

    if-eqz v1, :cond_0

    .line 186
    new-instance v2, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$4;

    invoke-direct {v2, p0, p1, v0}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$4;-><init>(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Landroid/util/SparseArray;)V

    invoke-virtual {v1, v2}, Lnet/aihelp/ui/widget/AIHelpRatingBar;->setOnStatusChangedListener(Lnet/aihelp/ui/widget/AIHelpRatingBar$OnStatusChangedListener;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->rateSupportDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_btn_confirm"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "aihelp_yes"

    .line 197
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v1, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$5;

    invoke-direct {v1, p0, p1, p2}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$5;-><init>(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->rateSupportDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->show()V

    .line 211
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/aihelp/core/util/bus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private showThanksAfterEvaluate(Landroid/content/Context;Z)V
    .locals 8

    .line 365
    new-instance v0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "aihelp_dia_show_thanks"

    .line 366
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setContentView(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x50

    .line 367
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setGravity(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 368
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->fromBottom(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 369
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setCancelableOntheOutside(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 370
    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setWidthAndHeight(II)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->create()Lnet/aihelp/core/ui/dialog/AlertDialog;

    move-result-object v0

    const-string v2, "aihelp_rl_show_thanks"

    .line 373
    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v2

    .line 374
    sget-object v3, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v4, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    const-wide v6, 0x3fe3333340000000L    # 0.6000000238418579

    add-double/2addr v4, v6

    const-wide v6, 0x3fe99999a0000000L    # 0.800000011920929

    .line 375
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 374
    invoke-static {v3, v4, v5}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v3

    .line 376
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v2, "aihelp_tv_thanks"

    .line 378
    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "aihelp_rate_finished"

    .line 379
    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    const-string v2, "aihelp_tv_invite_rate"

    .line 381
    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "aihelp_rate_app_hint"

    .line 382
    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 383
    invoke-static {v4, v5, v6}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v4

    .line 382
    invoke-static {v2, v3, v4}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;I)V

    const-string v2, "aihelp_go_rate"

    .line 385
    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "aihelp_rate_button"

    .line 386
    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 387
    new-instance v1, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$8;

    invoke-direct {v1, p0, p1, v0}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$8;-><init>(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Lnet/aihelp/core/ui/dialog/AlertDialog;)V

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "aihelp_ll_go_rate"

    .line 395
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 396
    sget-boolean v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isAppRatable:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 398
    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->show()V

    return-void
.end method

.method private updateCheckBoxEnableStatus(Landroid/content/Context;)V
    .locals 8

    .line 402
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->llFeedbackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    .line 403
    invoke-static {}, Lnet/aihelp/utils/Styles;->isLandscape()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_6

    .line 405
    iget-object v3, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->llFeedbackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 406
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2

    .line 407
    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    .line 408
    :goto_1
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 409
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 410
    instance-of v6, v5, Landroid/widget/CheckBox;

    if-eqz v6, :cond_1

    .line 411
    check-cast v5, Landroid/widget/CheckBox;

    .line 412
    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 413
    iget-object v6, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedOptionIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sget v7, Lnet/aihelp/common/CustomConfig$CustomerService;->csEvaluateMaxCount:I

    if-ge v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_6

    .line 421
    iget-object v3, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->llFeedbackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 422
    instance-of v4, v3, Landroid/widget/CheckBox;

    if-eqz v4, :cond_5

    .line 423
    check-cast v3, Landroid/widget/CheckBox;

    .line 424
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_5

    .line 425
    iget-object v4, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedOptionIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sget v5, Lnet/aihelp/common/CustomConfig$CustomerService;->csEvaluateMaxCount:I

    if-ge v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method


# virtual methods
.method public askAboutIssueResolvedStatus(Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;)V
    .locals 10

    .line 78
    new-instance v0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "aihelp_dia_issue_solve_status"

    .line 79
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setContentView(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x50

    .line 80
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setGravity(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->fromBottom(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 82
    :goto_0
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setCancelableOntheOutside(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    .line 83
    invoke-virtual {v0, v2, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setWidthAndHeight(II)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->create()Lnet/aihelp/core/ui/dialog/AlertDialog;

    move-result-object v0

    const-string v1, "aihelp_rl_issue_solve"

    .line 86
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 87
    sget-object v3, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v4, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    const-wide v6, 0x3fe3333333333333L    # 0.6

    add-double/2addr v4, v6

    const-wide v6, 0x3fe999999999999aL    # 0.8

    .line 88
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 87
    invoke-static {v3, v4, v5}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v3

    .line 89
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const-string v1, "aihelp_tv_title"

    .line 91
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "aihelp_resolution_request"

    .line 92
    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    const-string v1, "aihelp_btn_unsolved"

    .line 94
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "aihelp_resolution_no"

    .line 95
    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 96
    new-instance v9, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$1;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$1;-><init>(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Lnet/aihelp/core/ui/dialog/AlertDialog;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "aihelp_btn_solved"

    .line 103
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "aihelp_resolution_yes"

    .line 104
    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 105
    new-instance v2, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$2;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$2;-><init>(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Lnet/aihelp/core/ui/dialog/AlertDialog;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->show()V

    return-void
.end method

.method public onEventComing(Lnet/aihelp/core/util/bus/event/EventCenter;)V
    .locals 2
    .annotation runtime Lnet/aihelp/core/util/bus/Subscribe;
        threadMode = .enum Lnet/aihelp/core/util/bus/ThreadMode;->MAIN:Lnet/aihelp/core/util/bus/ThreadMode;
    .end annotation

    .line 435
    instance-of p1, p1, Lnet/aihelp/data/event/OrientationChangeEvent;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->etFeedback:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 436
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->inputFeedback:Ljava/lang/String;

    .line 437
    sget-object p1, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->INSTANCE:Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;

    invoke-virtual {p1}, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->getOpinionArray()Landroid/util/SparseArray;

    move-result-object p1

    .line 438
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->etFeedback:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->selectedRateValue:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    invoke-direct {p0, v0, p1}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->resetFeedbackOptions(Landroid/content/Context;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;)V
    .locals 1

    .line 69
    sget-boolean v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForAskingResolveStatus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, p2, v0}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->askAboutIssueResolvedStatus(Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->showRateSupport(Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;)V

    :goto_0
    return-void
.end method
