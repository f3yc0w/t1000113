.class Lnet/aihelp/init/AIHelpSupport$1;
.super Ljava/lang/Object;
.source "AIHelpSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/init/AIHelpSupport;->setOnAIHelpInitializedCallback(Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lnet/aihelp/init/AIHelpSupport$1;->val$listener:Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 84
    invoke-static {}, Lnet/aihelp/init/AIHelpCore;->getInstance()Lnet/aihelp/init/AIHelpCore;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/init/AIHelpSupport$1;->val$listener:Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;

    invoke-virtual {v0, v1}, Lnet/aihelp/init/AIHelpCore;->setOnAIHelpInitializedCallback(Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;)V

    return-void
.end method
