.class Lnet/aihelp/init/AIHelpSupport$4;
.super Ljava/lang/Object;
.source "AIHelpSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/init/AIHelpSupport;->updateSDKLanguage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$sdkLanguage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lnet/aihelp/init/AIHelpSupport$4;->val$sdkLanguage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 151
    invoke-static {}, Lnet/aihelp/init/AIHelpCore;->getInstance()Lnet/aihelp/init/AIHelpCore;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/init/AIHelpSupport$4;->val$sdkLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/aihelp/init/AIHelpCore;->updateSDKLanguage(Ljava/lang/String;)V

    return-void
.end method
