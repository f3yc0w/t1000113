.class Lnet/aihelp/init/AIHelpSupport$13;
.super Ljava/lang/Object;
.source "AIHelpSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/init/AIHelpSupport;->additionalSupportFor(Lnet/aihelp/config/enums/PublishCountryOrRegion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$countryOrRegion:Lnet/aihelp/config/enums/PublishCountryOrRegion;


# direct methods
.method constructor <init>(Lnet/aihelp/config/enums/PublishCountryOrRegion;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lnet/aihelp/init/AIHelpSupport$13;->val$countryOrRegion:Lnet/aihelp/config/enums/PublishCountryOrRegion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 302
    invoke-static {}, Lnet/aihelp/init/AIHelpCore;->getInstance()Lnet/aihelp/init/AIHelpCore;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/init/AIHelpSupport$13;->val$countryOrRegion:Lnet/aihelp/config/enums/PublishCountryOrRegion;

    invoke-virtual {v0, v1}, Lnet/aihelp/init/AIHelpCore;->additionalSupportFor(Lnet/aihelp/config/enums/PublishCountryOrRegion;)V

    return-void
.end method
