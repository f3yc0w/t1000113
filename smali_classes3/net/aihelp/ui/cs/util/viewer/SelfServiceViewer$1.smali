.class Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$1;
.super Ljava/lang/Object;
.source "SelfServiceViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 58
    iput-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$1;->this$0:Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 61
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$1;->this$0:Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/bus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method
