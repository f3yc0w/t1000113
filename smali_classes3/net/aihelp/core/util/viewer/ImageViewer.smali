.class public Lnet/aihelp/core/util/viewer/ImageViewer;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private context:Landroid/content/Context;

.field private rootLayout:Lnet/aihelp/core/util/viewer/ViewerLayout;

.field private shown:Z

.field private transDialog:Landroid/app/Dialog;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->context:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/ImageViewer;->createLayout()V

    .line 23
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/ImageViewer;->createDialog()V

    return-void
.end method

.method private createDialog()V
    .locals 3

    .line 40
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->context:Landroid/content/Context;

    const v2, 0x1030011

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->rootLayout:Lnet/aihelp/core/util/viewer/ViewerLayout;

    .line 42
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->transDialog:Landroid/app/Dialog;

    .line 44
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 45
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->transDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private createLayout()V
    .locals 2

    .line 35
    new-instance v0, Lnet/aihelp/core/util/viewer/ViewerLayout;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/aihelp/core/util/viewer/ViewerLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->rootLayout:Lnet/aihelp/core/util/viewer/ViewerLayout;

    .line 36
    invoke-virtual {v0, p0}, Lnet/aihelp/core/util/viewer/ViewerLayout;->setOnChildViewClickedListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lnet/aihelp/core/util/viewer/ImageViewer;
    .locals 1

    .line 31
    new-instance v0, Lnet/aihelp/core/util/viewer/ImageViewer;

    invoke-direct {v0, p0}, Lnet/aihelp/core/util/viewer/ImageViewer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 85
    iget-boolean v0, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->shown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->shown:Z

    .line 88
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->transDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->shown:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/ImageViewer;->dismiss()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 99
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 100
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/ImageViewer;->dismiss()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->rootLayout:Lnet/aihelp/core/util/viewer/ViewerLayout;

    invoke-virtual {p1}, Lnet/aihelp/core/util/viewer/ViewerLayout;->show()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->shown:Z

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->transDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->shown:Z

    return-void
.end method

.method public updateImageResource(Ljava/lang/String;)Lnet/aihelp/core/util/viewer/ImageViewer;
    .locals 1

    .line 49
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->rootLayout:Lnet/aihelp/core/util/viewer/ViewerLayout;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/viewer/ViewerLayout;->updateImageResource(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public updateVideoResource(Ljava/lang/String;Ljava/lang/String;)Lnet/aihelp/core/util/viewer/ImageViewer;
    .locals 1

    .line 56
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->rootLayout:Lnet/aihelp/core/util/viewer/ViewerLayout;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/viewer/ViewerLayout;->updateImageResource(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/ImageViewer;->rootLayout:Lnet/aihelp/core/util/viewer/ViewerLayout;

    invoke-virtual {p1, p2}, Lnet/aihelp/core/util/viewer/ViewerLayout;->updateVideoResource(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
