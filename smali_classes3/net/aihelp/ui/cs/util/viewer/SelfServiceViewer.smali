.class public final enum Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;
.super Ljava/lang/Enum;
.source "SelfServiceViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$OnSelfServiceConfirmListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

.field public static final enum INSTANCE:Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;


# instance fields
.field private mAdapter:Lnet/aihelp/ui/adapter/BillingListAdapter;

.field private mBillList:Landroid/widget/ListView;

.field private mEmptyLayout:Landroid/widget/RelativeLayout;

.field private mIvClose:Landroid/widget/ImageView;

.field private mTvSend:Landroid/widget/TextView;

.field private onSelfServiceConfirmListener:Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$OnSelfServiceConfirmListener;

.field private selfServiceDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->INSTANCE:Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

    aput-object v0, v1, v2

    .line 37
    sput-object v1, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->$VALUES:[Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mTvSend:Landroid/widget/TextView;

    return-object p0
.end method

.method private showEmpty()V
    .locals 2

    .line 116
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mTvSend:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mIvClose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mEmptyLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mEmptyLayout:Landroid/widget/RelativeLayout;

    const-string v1, "aihelp_tv_error_desc"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "aihelp_data_not_found_msg"

    .line 120
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;
    .locals 1

    .line 37
    const-class v0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;
    .locals 1

    .line 37
    sget-object v0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->$VALUES:[Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

    invoke-virtual {v0}, [Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

    return-object v0
.end method


# virtual methods
.method public getRequestParams(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 3

    const-string v0, ""

    .line 165
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "input"

    .line 166
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "skip"

    const/4 v2, 0x0

    .line 167
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "inputFormat"

    .line 168
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "inputData"

    .line 169
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "eventId"

    .line 170
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "-"

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 173
    :catch_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method public getService(Landroid/content/Context;Lnet/aihelp/data/model/rpa/bot/SelfService;)V
    .locals 3

    .line 53
    new-instance v0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "aihelp_dia_selecting_bill"

    .line 54
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setContentView(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x50

    .line 55
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setGravity(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->fromBottom(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setCancelableOntheOutside(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$1;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$1;-><init>(Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;)V

    .line 58
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x1f4

    .line 64
    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setWidthAndHeight(II)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setHeightByDevice()Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->create()Lnet/aihelp/core/ui/dialog/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->selfServiceDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_ll_bill_dialog"

    .line 68
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 69
    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    invoke-static {v1}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 72
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->selfServiceDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_tv_send"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mTvSend:Landroid/widget/TextView;

    const-string v1, "aihelp_send"

    .line 73
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    .line 74
    invoke-static {v2}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 73
    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 75
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mTvSend:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->selfServiceDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_iv_close"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mIvClose:Landroid/widget/ImageView;

    const-string v1, "aihelp_svg_ic_close_dialog"

    .line 79
    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mIvClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->selfServiceDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_rl_empty"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mEmptyLayout:Landroid/widget/RelativeLayout;

    .line 86
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->selfServiceDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_lv_bill"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mBillList:Landroid/widget/ListView;

    .line 87
    new-instance v0, Lnet/aihelp/ui/adapter/BillingListAdapter;

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/bot/SelfService;->isEnableSend()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lnet/aihelp/ui/adapter/BillingListAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mAdapter:Lnet/aihelp/ui/adapter/BillingListAdapter;

    .line 88
    new-instance p1, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$2;

    invoke-direct {p1, p0}, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$2;-><init>(Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;)V

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/BillingListAdapter;->setOnOrderCheckedListener(Lnet/aihelp/ui/adapter/BillingListAdapter$OnOrderCheckedListener;)V

    .line 95
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mBillList:Landroid/widget/ListView;

    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mAdapter:Lnet/aihelp/ui/adapter/BillingListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->selfServiceDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->show()V

    .line 98
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mTvSend:Landroid/widget/TextView;

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/bot/SelfService;->isEnableSend()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mIvClose:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/bot/SelfService;->isEnableSend()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/bot/SelfService;->getSelfServiceData()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 104
    iget-object p2, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mAdapter:Lnet/aihelp/ui/adapter/BillingListAdapter;

    invoke-virtual {p2, p1}, Lnet/aihelp/ui/adapter/BillingListAdapter;->update(Lorg/json/JSONArray;)V

    goto :goto_1

    .line 106
    :cond_2
    invoke-direct {p0}, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->showEmpty()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :goto_1
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/aihelp/core/util/bus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_tv_send"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lnet/aihelp/utils/FastClickValidator;->validate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->mAdapter:Lnet/aihelp/ui/adapter/BillingListAdapter;

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/BillingListAdapter;->getCheckedBill()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lnet/aihelp/data/model/rpa/RPAMessage;->getUserTextMsg(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/UserMessage;

    move-result-object v1

    const/4 v2, 0x1

    .line 141
    invoke-virtual {v1, v0, v2}, Lnet/aihelp/data/model/rpa/UserMessage;->setRequestParams(Ljava/lang/String;I)V

    .line 143
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->onSelfServiceConfirmListener:Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$OnSelfServiceConfirmListener;

    if-eqz v0, :cond_1

    .line 144
    invoke-interface {v0, v1}, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$OnSelfServiceConfirmListener;->onSelected(Lnet/aihelp/data/model/rpa/RPAMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    :cond_1
    :goto_1
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->selfServiceDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->selfServiceDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    .line 156
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "aihelp_iv_close"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-static {}, Lnet/aihelp/utils/FastClickValidator;->validate()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 157
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->selfServiceDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 158
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->selfServiceDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    :cond_3
    return-void
.end method

.method public onEventComing(Lnet/aihelp/data/event/OrientationChangeEvent;)V
    .locals 0
    .annotation runtime Lnet/aihelp/core/util/bus/Subscribe;
        threadMode = .enum Lnet/aihelp/core/util/bus/ThreadMode;->MAIN:Lnet/aihelp/core/util/bus/ThreadMode;
    .end annotation

    .line 189
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->selfServiceDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->selfServiceDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setOnSelfServiceConfirmListener(Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$OnSelfServiceConfirmListener;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->onSelfServiceConfirmListener:Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$OnSelfServiceConfirmListener;

    return-void
.end method
