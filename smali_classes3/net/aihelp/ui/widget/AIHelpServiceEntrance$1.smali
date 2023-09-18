.class Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;
.super Ljava/lang/Object;
.source "AIHelpServiceEntrance.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->updateViewClickEvent(Landroid/os/Bundle;Lnet/aihelp/ui/faq/IFaqEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$faqEventListener:Lnet/aihelp/ui/faq/IFaqEventListener;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/AIHelpServiceEntrance;Lnet/aihelp/ui/faq/IFaqEventListener;Landroid/os/Bundle;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->this$0:Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

    iput-object p2, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->val$faqEventListener:Lnet/aihelp/ui/faq/IFaqEventListener;

    iput-object p3, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 95
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->this$0:Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->access$000(Lnet/aihelp/ui/widget/AIHelpServiceEntrance;ZZ)V

    .line 96
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->val$faqEventListener:Lnet/aihelp/ui/faq/IFaqEventListener;

    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpServiceEntrance$1;->val$bundle:Landroid/os/Bundle;

    invoke-interface {p1, v1, v0}, Lnet/aihelp/ui/faq/IFaqEventListener;->onIntentToCustomerService(Landroid/os/Bundle;Z)V

    return-void
.end method
