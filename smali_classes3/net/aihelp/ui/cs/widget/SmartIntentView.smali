.class public Lnet/aihelp/ui/cs/widget/SmartIntentView;
.super Lnet/aihelp/ui/cs/bottom/BottomBaseView;
.source "SmartIntentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/aihelp/ui/adapter/SmartIntentAdapter$OnIntentSelectedListener;


# instance fields
.field private bottomViewEventListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

.field private final currentProcess:Lnet/aihelp/data/model/config/ProcessEntity;

.field private final subIntentAdapter:Lnet/aihelp/ui/adapter/SmartIntentAdapter;

.field private final svIntent:Landroid/widget/HorizontalScrollView;

.field private final tvIntent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    sget-object p2, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->INSTANCE:Lnet/aihelp/data/localize/config/ProcessEntranceHelper;

    invoke-virtual {p2}, Lnet/aihelp/data/localize/config/ProcessEntranceHelper;->getCurrentProcess()Lnet/aihelp/data/model/config/ProcessEntity;

    move-result-object p2

    iput-object p2, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->currentProcess:Lnet/aihelp/data/model/config/ProcessEntity;

    const-string p3, "aihelp_smart_intent_view"

    .line 65
    invoke-static {p3}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result p3

    invoke-static {p1, p3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "aihelp_intent_scroll"

    .line 67
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->svIntent:Landroid/widget/HorizontalScrollView;

    .line 68
    sget-object p3, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    const-wide v2, 0x3fe3333333333333L    # 0.6

    add-double/2addr v0, v2

    const-wide v2, 0x3fe999999999999aL    # 0.8

    .line 69
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 68
    invoke-static {p3, v0, v1}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p3

    .line 70
    invoke-virtual {p1, p3}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    const-string p1, "aihelp_tv_intent"

    .line 72
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->tvIntent:Landroid/widget/TextView;

    .line 73
    sget-object p3, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/16 v0, 0x8

    invoke-static {p3, v0}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lnet/aihelp/utils/Styles;->getScreenWidth(Landroid/content/Context;)I

    move-result p3

    int-to-float p3, p3

    const v1, 0x3f19999a    # 0.6f

    mul-float p3, p3, v1

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p2}, Lnet/aihelp/data/model/config/ProcessEntity;->getSmartIntentName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;Z)V

    :cond_0
    const/4 p2, -0x1

    .line 80
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance p1, Lnet/aihelp/ui/adapter/SmartIntentAdapter;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lnet/aihelp/ui/adapter/SmartIntentAdapter;-><init>(Landroid/content/Context;Lnet/aihelp/ui/adapter/SmartIntentAdapter$OnIntentSelectedListener;)V

    iput-object p1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->subIntentAdapter:Lnet/aihelp/ui/adapter/SmartIntentAdapter;

    .line 85
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 214
    invoke-super {p0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->onAttachedToWindow()V

    .line 215
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/aihelp/core/util/bus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_tv_intent"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->showRootIntents()V

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_iv_root_close"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_iv_sub_close"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 168
    :cond_1
    iget-object v0, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->tvIntent:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->currentProcess:Lnet/aihelp/data/model/config/ProcessEntity;

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lnet/aihelp/data/model/config/ProcessEntity;->isEnableInteraction()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->svIntent:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->subIntentAdapter:Lnet/aihelp/ui/adapter/SmartIntentAdapter;

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/SmartIntentAdapter;->clear()V

    .line 171
    iget-object v0, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->svIntent:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 174
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_iv_sub_back"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "aihelp_tv_sub_title"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 175
    :cond_4
    iget-object p1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->subIntentAdapter:Lnet/aihelp/ui/adapter/SmartIntentAdapter;

    invoke-virtual {p1}, Lnet/aihelp/ui/adapter/SmartIntentAdapter;->clear()V

    .line 176
    iget-object p1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->svIntent:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v2, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_5
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 220
    invoke-super {p0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->onDetachedFromWindow()V

    .line 221
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/aihelp/core/util/bus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventComing(Lnet/aihelp/core/util/bus/event/EventCenter;)V
    .locals 2
    .annotation runtime Lnet/aihelp/core/util/bus/Subscribe;
        threadMode = .enum Lnet/aihelp/core/util/bus/ThreadMode;->MAIN:Lnet/aihelp/core/util/bus/ThreadMode;
    .end annotation

    .line 226
    instance-of p1, p1, Lnet/aihelp/data/event/OrientationChangeEvent;

    if-eqz p1, :cond_1

    .line 227
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->updateViewVisibility()V

    .line 228
    iget-object p1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->tvIntent:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 229
    iget-object p1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->tvIntent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/Styles;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 231
    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->svIntent:Landroid/widget/HorizontalScrollView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 232
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->showRootIntents()V

    :cond_1
    return-void
.end method

.method public onIntentSelected(Lnet/aihelp/data/model/config/IntentEntity;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->showSubIntents(Lnet/aihelp/data/model/config/IntentEntity;)V

    .line 184
    iget-object p1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->svIntent:Landroid/widget/HorizontalScrollView;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void

    .line 188
    :cond_0
    iget-object p2, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->bottomViewEventListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz p2, :cond_1

    .line 189
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->svIntent:Landroid/widget/HorizontalScrollView;

    invoke-static {p2, v1}, Lnet/aihelp/utils/SoftInputUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 190
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/IntentEntity;->getIntentName()Ljava/lang/String;

    move-result-object p2

    .line 191
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/IntentEntity;->getIntentId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-static {p2}, Lnet/aihelp/data/model/rpa/RPAMessage;->getUserTextMsg(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/UserMessage;

    move-result-object v1

    const/4 v2, 0x5

    .line 193
    invoke-virtual {v1, p2, v0, v2, p1}, Lnet/aihelp/data/model/rpa/UserMessage;->setRequestParams(Ljava/lang/String;ZILjava/lang/String;)V

    .line 194
    iget-object p1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->bottomViewEventListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {p1, v1}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    .line 195
    iget-object p1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->svIntent:Landroid/widget/HorizontalScrollView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onViewVisibilityChanged()V
    .locals 1

    .line 206
    iget-object v0, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->bottomViewEventListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onIntentOrSkipViewVisibilityChanged()V

    :cond_0
    return-void
.end method

.method public setBottomViewEventListener(Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->bottomViewEventListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 201
    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->setVisibility(I)V

    .line 202
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->onViewVisibilityChanged()V

    return-void
.end method

.method public showRootIntents()V
    .locals 4

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->currentProcess:Lnet/aihelp/data/model/config/ProcessEntity;

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1}, Lnet/aihelp/data/model/config/ProcessEntity;->getSmartIntentList()Ljava/util/List;

    move-result-object v0

    .line 116
    :cond_0
    invoke-static {v0}, Lnet/aihelp/utils/ListUtil;->isListEmpty(Ljava/util/List;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->setVisibility(I)V

    .line 119
    iget-object v3, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->subIntentAdapter:Lnet/aihelp/ui/adapter/SmartIntentAdapter;

    invoke-virtual {v3}, Lnet/aihelp/ui/adapter/SmartIntentAdapter;->clear()V

    .line 120
    iget-object v3, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->tvIntent:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->svIntent:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->svIntent:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    const-string v1, "aihelp_tv_root_title"

    .line 124
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 125
    sget-object v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v2}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "aihelp_rv_root_intent"

    .line 127
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 129
    new-instance v2, Lnet/aihelp/ui/adapter/SmartIntentAdapter;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lnet/aihelp/ui/adapter/SmartIntentAdapter;-><init>(Landroid/content/Context;Lnet/aihelp/ui/adapter/SmartIntentAdapter$OnIntentSelectedListener;)V

    .line 130
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 131
    invoke-virtual {v2, v0}, Lnet/aihelp/ui/adapter/SmartIntentAdapter;->update(Ljava/util/List;)V

    const-string v0, "aihelp_iv_root_close"

    .line 133
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "aihelp_svg_ic_close_dialog"

    .line 134
    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0, v2}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public showSubIntents(Lnet/aihelp/data/model/config/IntentEntity;)V
    .locals 3

    const-string v0, "aihelp_iv_sub_back"

    .line 142
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "aihelp_svg_ic_back"

    .line 143
    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "aihelp_tv_sub_title"

    .line 146
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/IntentEntity;->getIntentName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 148
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "aihelp_rv_sub_intent"

    .line 150
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 151
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 152
    iget-object v1, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->subIntentAdapter:Lnet/aihelp/ui/adapter/SmartIntentAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 153
    iget-object v0, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->subIntentAdapter:Lnet/aihelp/ui/adapter/SmartIntentAdapter;

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/IntentEntity;->getIntentList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/SmartIntentAdapter;->update(Ljava/util/List;)V

    const-string p1, "aihelp_iv_sub_close"

    .line 155
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string v0, "aihelp_svg_ic_close_dialog"

    .line 156
    invoke-static {p1, v0}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateViewVisibility()V
    .locals 3

    .line 89
    invoke-static {}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketServingByAgent()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_5

    invoke-static {}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketServingByRPA()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    sget-boolean v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketActive:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketServingByAnswerBot()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 95
    iget-object v0, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->currentProcess:Lnet/aihelp/data/model/config/ProcessEntity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/ProcessEntity;->isEnableInteraction()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->currentProcess:Lnet/aihelp/data/model/config/ProcessEntity;

    .line 96
    invoke-virtual {v0}, Lnet/aihelp/data/model/config/ProcessEntity;->getSmartIntentList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/ListUtil;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->setVisibility(I)V

    .line 98
    iget-object v2, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->tvIntent:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :cond_1
    iget-object v0, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->svIntent:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->tvIntent:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_3
    iget-object v0, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->svIntent:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_1

    .line 106
    :cond_4
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->showRootIntents()V

    goto :goto_1

    .line 90
    :cond_5
    :goto_0
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->tvIntent:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :cond_6
    iget-object v0, p0, Lnet/aihelp/ui/cs/widget/SmartIntentView;->svIntent:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method
