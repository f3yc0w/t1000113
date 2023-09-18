.class public Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;
.super Lnet/aihelp/ui/cs/bottom/BottomBaseView;
.source "BottomEvaluateServiceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 21
    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;-><init>(Landroid/content/Context;)V

    const-string v0, "aihelp_bottom_evaluate_service_view"

    .line 23
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "aihelp_tv_invite_rate"

    .line 26
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 27
    sget-object v0, Lnet/aihelp/common/CustomConfig$CustomerService;->csInviteEvaluate:Ljava/lang/String;

    invoke-static {p1, v0}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    const-string v0, "aihelp_btn_go_rate"

    .line 29
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    const-string v1, "aihelp_rate_button"

    .line 30
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 31
    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/aihelp/utils/SoftInputUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "aihelp_btn_go_rate"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 41
    invoke-static {}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->getInstance()Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

    move-result-object p1

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView$1;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView$1;-><init>(Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;)V

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->show(Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;)V

    :cond_0
    return-void
.end method
