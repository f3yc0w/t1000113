.class public Lnet/aihelp/core/ui/dialog/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/ui/dialog/AlertController$AlertParams;
    }
.end annotation


# instance fields
.field private mDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

.field private mViewHelper:Lnet/aihelp/core/ui/dialog/DialogViewHelper;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/ui/dialog/AlertDialog;Landroid/view/Window;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertController;->mDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    .line 21
    iput-object p2, p0, Lnet/aihelp/core/ui/dialog/AlertController;->mWindow:Landroid/view/Window;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/ui/dialog/AlertController;Lnet/aihelp/core/ui/dialog/DialogViewHelper;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/dialog/AlertController;->setViewHelper(Lnet/aihelp/core/ui/dialog/DialogViewHelper;)V

    return-void
.end method

.method private setViewHelper(Lnet/aihelp/core/ui/dialog/DialogViewHelper;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lnet/aihelp/core/ui/dialog/AlertController;->mViewHelper:Lnet/aihelp/core/ui/dialog/DialogViewHelper;

    return-void
.end method


# virtual methods
.method public getDialog()Lnet/aihelp/core/ui/dialog/AlertDialog;
    .locals 1

    .line 25
    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertController;->mDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertController;->mViewHelper:Lnet/aihelp/core/ui/dialog/DialogViewHelper;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/dialog/DialogViewHelper;->getView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .line 29
    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertController;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public setBackground(II)V
    .locals 1

    .line 45
    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertController;->mViewHelper:Lnet/aihelp/core/ui/dialog/DialogViewHelper;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/core/ui/dialog/DialogViewHelper;->setBackground(II)V

    return-void
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertController;->mViewHelper:Lnet/aihelp/core/ui/dialog/DialogViewHelper;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/core/ui/dialog/DialogViewHelper;->setOnClickListener(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setText(ILjava/lang/CharSequence;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lnet/aihelp/core/ui/dialog/AlertController;->mViewHelper:Lnet/aihelp/core/ui/dialog/DialogViewHelper;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/core/ui/dialog/DialogViewHelper;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method
