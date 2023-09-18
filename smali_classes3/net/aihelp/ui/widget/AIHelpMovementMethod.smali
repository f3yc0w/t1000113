.class public Lnet/aihelp/ui/widget/AIHelpMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "AIHelpMovementMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 0

    .line 18
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result p1

    invoke-static {p2, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 0

    and-int/lit16 p3, p3, 0x82

    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-nez p1, :cond_1

    .line 26
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result p1

    invoke-static {p2, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result p1

    invoke-static {p2, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    :goto_0
    return-void
.end method
