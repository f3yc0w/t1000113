.class Lnet/aihelp/init/AIHelpSupport$3;
.super Ljava/lang/Object;
.source "AIHelpSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/init/AIHelpSupport;->updateUserInfo(Lnet/aihelp/config/UserConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$config:Lnet/aihelp/config/UserConfig;


# direct methods
.method constructor <init>(Lnet/aihelp/config/UserConfig;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lnet/aihelp/init/AIHelpSupport$3;->val$config:Lnet/aihelp/config/UserConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 118
    invoke-static {}, Lnet/aihelp/init/AIHelpCore;->getInstance()Lnet/aihelp/init/AIHelpCore;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/init/AIHelpSupport$3;->val$config:Lnet/aihelp/config/UserConfig;

    invoke-virtual {v0, v1}, Lnet/aihelp/init/AIHelpCore;->updateUserInfo(Lnet/aihelp/config/UserConfig;)V

    return-void
.end method
