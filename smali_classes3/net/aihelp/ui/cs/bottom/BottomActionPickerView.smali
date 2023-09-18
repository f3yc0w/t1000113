.class public Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;
.super Lnet/aihelp/ui/cs/bottom/BottomBaseView;
.source "BottomActionPickerView.java"

# interfaces
.implements Lnet/aihelp/ui/widget/AIHelpFlowLayout$OnLabelClickedListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final actionList:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

.field private rlInputContainer:Landroid/widget/RelativeLayout;

.field private final tvSkip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "aihelp_bottom_action_picker"

    .line 55
    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "aihelp_tv_hint"

    .line 57
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "aihelp_select_option"

    .line 58
    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    const-string p1, "aihelp_tv_skip_action_picker"

    .line 60
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->tvSkip:Landroid/widget/TextView;

    .line 61
    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x4

    invoke-static {p2, p3}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, -0x1

    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "aihelp_fl_actions"

    .line 65
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpFlowLayout;

    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->actionList:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

    .line 66
    invoke-virtual {p1, p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->setOnLabelClickedListener(Lnet/aihelp/ui/widget/AIHelpFlowLayout$OnLabelClickedListener;)V

    const-string p1, "aihelp_rl_action_input"

    .line 68
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->rlInputContainer:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 86
    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->onClick(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v3, "aihelp_tv_skip_action_picker"

    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 88
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->tvSkip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->tvSkip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lnet/aihelp/data/model/rpa/RPAMessage;->getUserTextMsg(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/UserMessage;

    move-result-object v3

    const/4 v4, 0x2

    .line 91
    invoke-virtual {v3, v0, v2, v4, v1}, Lnet/aihelp/data/model/rpa/UserMessage;->setRequestParams(Ljava/lang/String;ZILjava/lang/String;)V

    .line 92
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {v0, v3}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    .line 93
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->tvSkip:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "aihelp_btn_send"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 97
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->etInput:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->etInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {}, Lnet/aihelp/ui/helper/StatisticHelper;->whenSendButtonClicked()V

    .line 101
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->etInput:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lnet/aihelp/utils/SoftInputUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 102
    invoke-static {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getUserTextMsg(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/UserMessage;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p1, v2}, Lnet/aihelp/data/model/rpa/UserMessage;->setRequestParams(Ljava/lang/String;I)V

    .line 104
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {p1, v0}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    :cond_1
    return-void
.end method

.method public onLabelClicked(Lnet/aihelp/data/model/rpa/RPAStep$Action;)V
    .locals 4

    .line 75
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAStep$Action;->getId()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAStep$Action;->getContent()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-static {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getUserTextMsg(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/UserMessage;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 79
    invoke-virtual {v1, p1, v2, v3, v0}, Lnet/aihelp/data/model/rpa/UserMessage;->setRequestParams(Ljava/lang/String;ZILjava/lang/String;)V

    .line 80
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {p1, v1}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    :cond_0
    return-void
.end method

.method public setBottomViewEventListener(Landroid/os/Bundle;Lnet/aihelp/data/model/rpa/RPAStep;Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;)V
    .locals 1

    .line 111
    invoke-super {p0, p1, p2, p3}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->setBottomViewEventListener(Landroid/os/Bundle;Lnet/aihelp/data/model/rpa/RPAStep;Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;)V

    .line 116
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->tvSkip:Landroid/widget/TextView;

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAStep;->isEnableSkip()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->tvSkip:Landroid/widget/TextView;

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAStep;->getSkipHint()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;->actionList:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAStep;->getActionList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->update(Ljava/util/List;Z)V

    return-void
.end method
