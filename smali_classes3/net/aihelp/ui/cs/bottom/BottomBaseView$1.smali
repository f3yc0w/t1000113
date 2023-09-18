.class Lnet/aihelp/ui/cs/bottom/BottomBaseView$1;
.super Ljava/lang/Object;
.source "BottomBaseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/bottom/BottomBaseView;->updateSkipStep(Lnet/aihelp/data/model/rpa/RPAStep;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/bottom/BottomBaseView;

.field final synthetic val$rpaStep:Lnet/aihelp/data/model/rpa/RPAStep;

.field final synthetic val$tvSkip:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/bottom/BottomBaseView;Landroid/widget/TextView;Lnet/aihelp/data/model/rpa/RPAStep;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomBaseView;

    iput-object p2, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView$1;->val$tvSkip:Landroid/widget/TextView;

    iput-object p3, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView$1;->val$rpaStep:Lnet/aihelp/data/model/rpa/RPAStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView$1;->val$tvSkip:Landroid/widget/TextView;

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView$1;->val$tvSkip:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView$1;->val$rpaStep:Lnet/aihelp/data/model/rpa/RPAStep;

    invoke-virtual {v1}, Lnet/aihelp/data/model/rpa/RPAStep;->getSkipHint()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 88
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView$1;->val$tvSkip:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView$1;->val$tvSkip:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomBaseView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomBaseView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomBaseView;

    invoke-static {v0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->access$000(Lnet/aihelp/ui/cs/bottom/BottomBaseView;)V

    return-void
.end method
