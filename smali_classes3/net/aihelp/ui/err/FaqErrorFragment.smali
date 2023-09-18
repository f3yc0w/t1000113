.class public Lnet/aihelp/ui/err/FaqErrorFragment;
.super Lnet/aihelp/core/ui/BaseFragment;
.source "FaqErrorFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/err/FaqErrorFragment;
    .locals 1

    .line 17
    new-instance v0, Lnet/aihelp/ui/err/FaqErrorFragment;

    invoke-direct {v0}, Lnet/aihelp/ui/err/FaqErrorFragment;-><init>()V

    .line 18
    invoke-virtual {v0, p0}, Lnet/aihelp/ui/err/FaqErrorFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getBundleAfterDataPrepared(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected getLayout()I
    .locals 1

    const-string v0, "aihelp_layout_list_empty"

    .line 37
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initEventAndData(Landroid/view/View;)V
    .locals 5

    .line 24
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/UpdateTitleEvent;

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "Not Found"

    invoke-direct {v1, v2, v3, v4}, Lnet/aihelp/data/event/UpdateTitleEvent;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    const-string v0, "aihelp_iv_empty"

    .line 25
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "aihelp_tv_empty"

    .line 26
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v1, "aihelp_svg_ic_empty"

    .line 27
    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    const-string v0, "entrance id not found"

    .line 28
    invoke-static {p1, v0}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
