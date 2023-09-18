.class Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$1;
.super Ljava/lang/Object;
.source "BotFaqViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$1;->this$0:Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 44
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/aihelp/core/util/bus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$1;->this$0:Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/bus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
