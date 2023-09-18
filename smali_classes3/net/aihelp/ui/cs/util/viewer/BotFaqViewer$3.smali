.class Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$3;
.super Landroid/webkit/WebChromeClient;
.source "BotFaqViewer.java"


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

.field final synthetic val$progressBar:Lnet/aihelp/ui/webkit/AIHelpWebProgress;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$3;->this$0:Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

    iput-object p2, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$3;->val$progressBar:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 82
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$3;->val$progressBar:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setProgress(I)V

    return-void
.end method
