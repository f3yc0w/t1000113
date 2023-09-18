.class Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$2;
.super Ljava/lang/Object;
.source "SelfServiceViewer.java"

# interfaces
.implements Lnet/aihelp/ui/adapter/BillingListAdapter$OnOrderCheckedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->getService(Landroid/content/Context;Lnet/aihelp/data/model/rpa/bot/SelfService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$2;->this$0:Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderChecked()V
    .locals 2

    .line 91
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$2;->this$0:Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

    invoke-static {v0}, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->access$000(Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$2;->this$0:Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

    invoke-static {v0}, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->access$000(Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
