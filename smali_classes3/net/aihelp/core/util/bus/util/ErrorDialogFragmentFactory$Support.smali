.class public Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory$Support;
.super Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Support"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory<",
        "Landroidx/fragment/app/Fragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;-><init>(Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;)V

    return-void
.end method


# virtual methods
.method protected createErrorFragment(Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 94
    new-instance p1, Lnet/aihelp/core/util/bus/util/ErrorDialogFragments$Support;

    invoke-direct {p1}, Lnet/aihelp/core/util/bus/util/ErrorDialogFragments$Support;-><init>()V

    .line 95
    invoke-virtual {p1, p2}, Lnet/aihelp/core/util/bus/util/ErrorDialogFragments$Support;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method

.method protected bridge synthetic createErrorFragment(Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory$Support;->createErrorFragment(Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
