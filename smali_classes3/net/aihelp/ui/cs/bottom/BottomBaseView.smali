.class public abstract Lnet/aihelp/ui/cs/bottom/BottomBaseView;
.super Landroid/widget/LinearLayout;
.source "BottomBaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

.field protected bundle:Landroid/os/Bundle;

.field protected etInput:Landroid/widget/EditText;

.field protected mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

.field protected mStep:Lnet/aihelp/data/model/rpa/RPAStep;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/cs/bottom/BottomBaseView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->onSkipViewVisibilityChanged()V

    return-void
.end method

.method static synthetic access$100(Lnet/aihelp/ui/cs/bottom/BottomBaseView;Ljava/lang/String;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->updateInputValidator(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lnet/aihelp/ui/cs/bottom/BottomBaseView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->updateSendButtonStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onSkipViewVisibilityChanged()V
    .locals 1

    .line 101
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onIntentOrSkipViewVisibilityChanged()V

    :cond_0
    return-void
.end method

.method private updateInputValidator(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method private updateSendButtonStatus(Ljava/lang/CharSequence;)V
    .locals 3

    .line 143
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "aihelp_svg_ic_send_msg"

    .line 145
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getDrawableId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 144
    invoke-static {v0, v1, v2}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "#C6C9D7"

    .line 147
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 148
    sget-object v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 149
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 150
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setEnabled(Z)V

    .line 151
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageButton;->setEnabled(Z)V

    .line 154
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 156
    :goto_0
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected getSkipTextView()Landroid/widget/TextView;
    .locals 2

    .line 107
    invoke-static {}, Lnet/aihelp/ui/HostActivity;->getHostWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "aihelp_tv_skip"

    .line 111
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 65
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "aihelp_tv_skip"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->getSkipTextView()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lnet/aihelp/data/model/rpa/RPAMessage;->getUserTextMsg(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/UserMessage;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, ""

    .line 70
    invoke-virtual {v1, v0, v2, v3, v4}, Lnet/aihelp/data/model/rpa/UserMessage;->setRequestParams(Ljava/lang/String;ZILjava/lang/String;)V

    .line 71
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {v0, v1}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    const/16 v0, 0x8

    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    invoke-direct {p0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->onSkipViewVisibilityChanged()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 166
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 167
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->etInput:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lnet/aihelp/utils/SpUtil;->getInstance()Lnet/aihelp/utils/SpUtil;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->etInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sp_input_draft"

    invoke-virtual {v0, v2, v1}, Lnet/aihelp/utils/SpUtil;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected prepareInputView()V
    .locals 4

    const-string v0, "aihelp_et_input"

    .line 118
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->etInput:Landroid/widget/EditText;

    const-string v0, "aihelp_btn_send"

    .line 119
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 120
    iget-object v1, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->etInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->etInput:Landroid/widget/EditText;

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    invoke-static {v1, v2, v3}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->etInput:Landroid/widget/EditText;

    sget-object v1, Lnet/aihelp/common/CustomConfig$CustomerService;->csInputHint:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->etInput:Landroid/widget/EditText;

    new-instance v1, Lnet/aihelp/ui/cs/bottom/BottomBaseView$2;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView$2;-><init>(Lnet/aihelp/ui/cs/bottom/BottomBaseView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->etInput:Landroid/widget/EditText;

    invoke-static {}, Lnet/aihelp/utils/SpUtil;->getInstance()Lnet/aihelp/utils/SpUtil;

    move-result-object v1

    const-string v2, "sp_input_draft"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lnet/aihelp/utils/SpUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setBottomViewEventListener(Landroid/os/Bundle;Lnet/aihelp/data/model/rpa/RPAStep;Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->bundle:Landroid/os/Bundle;

    .line 58
    iput-object p2, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->mStep:Lnet/aihelp/data/model/rpa/RPAStep;

    .line 59
    iput-object p3, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    .line 60
    invoke-virtual {p0, p2}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->updateSkipStep(Lnet/aihelp/data/model/rpa/RPAStep;)V

    return-void
.end method

.method public updateSkipStep(Lnet/aihelp/data/model/rpa/RPAStep;)V
    .locals 4

    .line 79
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->getSkipTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAStep;->isEnableSkip()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAStep;->getNextStep()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 82
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/aihelp/utils/Styles;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 83
    new-instance v1, Lnet/aihelp/ui/cs/bottom/BottomBaseView$1;

    invoke-direct {v1, p0, v0, p1}, Lnet/aihelp/ui/cs/bottom/BottomBaseView$1;-><init>(Lnet/aihelp/ui/cs/bottom/BottomBaseView;Landroid/widget/TextView;Lnet/aihelp/data/model/rpa/RPAStep;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 94
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-direct {p0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->onSkipViewVisibilityChanged()V

    :cond_1
    :goto_0
    return-void
.end method
