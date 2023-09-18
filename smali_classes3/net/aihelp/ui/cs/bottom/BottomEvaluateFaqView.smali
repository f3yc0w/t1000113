.class public Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;
.super Lnet/aihelp/ui/cs/bottom/BottomBaseView;
.source "BottomEvaluateFaqView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "aihelp_bottom_evaluate_faq_view"

    .line 34
    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "aihelp_btn_un_helpful"

    .line 36
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 37
    new-instance p2, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView$1;

    invoke-direct {p2, p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView$1;-><init>(Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;Landroid/widget/Button;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "aihelp_btn_helpful"

    .line 49
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 50
    new-instance p2, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView$2;

    invoke-direct {p2, p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView$2;-><init>(Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;Landroid/widget/Button;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;->appendContentId(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private appendContentId(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    :try_start_0
    const-string v0, "contentId"

    .line 66
    iget-object v1, p0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;->bundle:Landroid/os/Bundle;

    const-string v2, "bottom_faq_content_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p1
.end method
