.class Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator$1;
.super Ljava/lang/Object;
.source "BallPulseIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->createAnimation()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;I)V
    .locals 0

    .line 68
    iput-object p1, p0, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator$1;->this$0:Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;

    iput p2, p0, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator$1;->this$0:Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;

    invoke-static {v0}, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->access$000(Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;)[F

    move-result-object v0

    iget v1, p0, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator$1;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    .line 72
    iget-object p1, p0, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator$1;->this$0:Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->postInvalidate()V

    return-void
.end method
