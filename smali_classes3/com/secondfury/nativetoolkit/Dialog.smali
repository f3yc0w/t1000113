.class public Lcom/secondfury/nativetoolkit/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Native Toolkit"

    const-string v1, "New dialog"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iput-object p1, p0, Lcom/secondfury/nativetoolkit/Dialog;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/secondfury/nativetoolkit/Dialog;)Landroid/app/Activity;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/secondfury/nativetoolkit/Dialog;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public CreateAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 50
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/secondfury/nativetoolkit/Dialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 52
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 53
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 54
    new-instance p1, Lcom/secondfury/nativetoolkit/Dialog$3;

    invoke-direct {p1, p0}, Lcom/secondfury/nativetoolkit/Dialog$3;-><init>(Lcom/secondfury/nativetoolkit/Dialog;)V

    invoke-virtual {v0, p3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public CreateConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 25
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/secondfury/nativetoolkit/Dialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 27
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 28
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 29
    new-instance p1, Lcom/secondfury/nativetoolkit/Dialog$1;

    invoke-direct {p1, p0}, Lcom/secondfury/nativetoolkit/Dialog$1;-><init>(Lcom/secondfury/nativetoolkit/Dialog;)V

    invoke-virtual {v0, p3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    new-instance p1, Lcom/secondfury/nativetoolkit/Dialog$2;

    invoke-direct {p1, p0}, Lcom/secondfury/nativetoolkit/Dialog$2;-><init>(Lcom/secondfury/nativetoolkit/Dialog;)V

    invoke-virtual {v0, p4, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public CreateDatePicker()V
    .locals 0

    return-void
.end method

.method public CreateRate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/secondfury/nativetoolkit/Dialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 71
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 72
    new-instance p1, Lcom/secondfury/nativetoolkit/Dialog$4;

    invoke-direct {p1, p0}, Lcom/secondfury/nativetoolkit/Dialog$4;-><init>(Lcom/secondfury/nativetoolkit/Dialog;)V

    invoke-virtual {v0, p3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    new-instance p1, Lcom/secondfury/nativetoolkit/Dialog$5;

    invoke-direct {p1, p0}, Lcom/secondfury/nativetoolkit/Dialog$5;-><init>(Lcom/secondfury/nativetoolkit/Dialog;)V

    invoke-virtual {v0, p4, p1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    new-instance p1, Lcom/secondfury/nativetoolkit/Dialog$6;

    invoke-direct {p1, p0}, Lcom/secondfury/nativetoolkit/Dialog$6;-><init>(Lcom/secondfury/nativetoolkit/Dialog;)V

    invoke-virtual {v0, p5, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public CreateTimePicker()V
    .locals 0

    return-void
.end method
