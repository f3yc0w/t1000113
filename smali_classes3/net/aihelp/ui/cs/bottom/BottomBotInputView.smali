.class public Lnet/aihelp/ui/cs/bottom/BottomBotInputView;
.super Lnet/aihelp/ui/cs/bottom/BottomBaseView;
.source "BottomBotInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private inputType:I

.field private final tvHint:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;-><init>(Landroid/content/Context;)V

    const-string v0, "aihelp_bottom_input_for_bot"

    .line 41
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "aihelp_tv_hint"

    .line 42
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->tvHint:Landroid/widget/TextView;

    .line 43
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->prepareInputView()V

    return-void
.end method

.method private updateInputValidator(Ljava/lang/String;Z)V
    .locals 1

    .line 78
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->tvHint:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object p2, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->tvHint:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->onClick(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->etInput:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "aihelp_btn_send"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 50
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->etInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 51
    iget v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->inputType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "^([A-Za-z0-9_\\-\\.])+\\@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4})$"

    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "aihelp_enter_mail_address"

    .line 60
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->updateInputValidator(Ljava/lang/String;Z)V

    return-void

    :cond_1
    const-string v0, "[0-9]*"

    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "aihelp_enter_number"

    .line 54
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->updateInputValidator(Ljava/lang/String;Z)V

    return-void

    .line 66
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->etInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {}, Lnet/aihelp/ui/helper/StatisticHelper;->whenSendButtonClicked()V

    .line 69
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->etInput:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lnet/aihelp/utils/SoftInputUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 70
    invoke-static {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getUserTextMsg(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/UserMessage;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p1, v2}, Lnet/aihelp/data/model/rpa/UserMessage;->setRequestParams(Ljava/lang/String;I)V

    .line 72
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {p1, v0}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    :cond_3
    return-void
.end method

.method public setBottomViewEventListener(Landroid/os/Bundle;Lnet/aihelp/data/model/rpa/RPAStep;Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2, p3}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->setBottomViewEventListener(Landroid/os/Bundle;Lnet/aihelp/data/model/rpa/RPAStep;Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;)V

    .line 85
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->etInput:Landroid/widget/EditText;

    if-eqz p1, :cond_3

    .line 86
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAStep;->getNextStep()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iput p2, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->inputType:I

    .line 97
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->etInput:Landroid/widget/EditText;

    const-string p2, "aihelp_enter_number"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x20

    .line 92
    iput p1, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->inputType:I

    .line 93
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->etInput:Landroid/widget/EditText;

    const-string p2, "aihelp_enter_mail_address"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_2
    iput p2, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->inputType:I

    .line 89
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;->etInput:Landroid/widget/EditText;

    const-string p2, "aihelp_enter_content"

    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method
