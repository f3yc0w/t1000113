.class Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$2;
.super Ljava/lang/Object;
.source "BotFaqViewer.java"

# interfaces
.implements Lnet/aihelp/ui/webkit/AIHelpWebViewClient$ShouldOverrideUrlLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->show(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

.field final synthetic val$ivBack:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;Landroid/widget/ImageView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$2;->this$0:Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

    iput-object p2, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$2;->val$ivBack:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUrlClick(Z)V
    .locals 1

    .line 73
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$2;->val$ivBack:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
