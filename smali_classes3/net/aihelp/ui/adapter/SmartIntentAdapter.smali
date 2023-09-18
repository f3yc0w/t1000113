.class public Lnet/aihelp/ui/adapter/SmartIntentAdapter;
.super Lnet/aihelp/core/ui/adapter/CommonAdapter;
.source "SmartIntentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/adapter/SmartIntentAdapter$OnIntentSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/ui/adapter/CommonAdapter<",
        "Lnet/aihelp/data/model/config/IntentEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lnet/aihelp/ui/adapter/SmartIntentAdapter$OnIntentSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/aihelp/ui/adapter/SmartIntentAdapter$OnIntentSelectedListener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/adapter/CommonAdapter;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lnet/aihelp/ui/adapter/SmartIntentAdapter;->mListener:Lnet/aihelp/ui/adapter/SmartIntentAdapter$OnIntentSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/adapter/SmartIntentAdapter;)Lnet/aihelp/ui/adapter/SmartIntentAdapter$OnIntentSelectedListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lnet/aihelp/ui/adapter/SmartIntentAdapter;->mListener:Lnet/aihelp/ui/adapter/SmartIntentAdapter$OnIntentSelectedListener;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    check-cast p2, Lnet/aihelp/data/model/config/IntentEntity;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/SmartIntentAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/config/IntentEntity;I)V

    return-void
.end method

.method protected convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/config/IntentEntity;I)V
    .locals 1

    const-string p3, "aihelp_tv_title"

    .line 30
    invoke-static {p3}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 31
    invoke-virtual {p2}, Lnet/aihelp/data/model/config/IntentEntity;->getIntentName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Lnet/aihelp/data/model/config/IntentEntity;->getIntentList()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lnet/aihelp/utils/ListUtil;->isListEmpty(Ljava/util/List;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    const-string v0, "aihelp_iv_next"

    .line 34
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    .line 36
    invoke-virtual {p1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lnet/aihelp/ui/adapter/SmartIntentAdapter$1;

    invoke-direct {v0, p0, p2, p3}, Lnet/aihelp/ui/adapter/SmartIntentAdapter$1;-><init>(Lnet/aihelp/ui/adapter/SmartIntentAdapter;Lnet/aihelp/data/model/config/IntentEntity;Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected itemLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_smart_intent"

    .line 25
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
