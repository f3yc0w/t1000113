.class Lnet/aihelp/init/AIHelpSupport$12;
.super Ljava/lang/Object;
.source "AIHelpSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/init/AIHelpSupport;->setOnSpecificUrlClickedCallback(Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lnet/aihelp/init/AIHelpSupport$12;->val$callback:Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 288
    invoke-static {}, Lnet/aihelp/init/AIHelpCore;->getInstance()Lnet/aihelp/init/AIHelpCore;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/init/AIHelpSupport$12;->val$callback:Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;

    invoke-virtual {v0, v1}, Lnet/aihelp/init/AIHelpCore;->setOnSpecificUrlClickedCallback(Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;)V

    return-void
.end method
