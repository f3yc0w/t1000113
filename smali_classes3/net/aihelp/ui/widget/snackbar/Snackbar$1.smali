.class Lnet/aihelp/ui/widget/snackbar/Snackbar$1;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lnet/aihelp/ui/widget/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/snackbar/Snackbar;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/snackbar/Snackbar;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar$1;->this$0:Lnet/aihelp/ui/widget/snackbar/Snackbar;

    iput-object p2, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 283
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/Snackbar$1;->this$0:Lnet/aihelp/ui/widget/snackbar/Snackbar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/snackbar/Snackbar;->dispatchDismiss(I)V

    return-void
.end method
