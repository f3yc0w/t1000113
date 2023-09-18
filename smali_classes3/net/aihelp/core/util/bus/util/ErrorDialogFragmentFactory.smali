.class public abstract Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;
.super Ljava/lang/Object;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory$Honeycomb;,
        Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory$Support;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final config:Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;


# direct methods
.method protected constructor <init>(Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;->config:Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;

    return-void
.end method


# virtual methods
.method protected abstract createErrorFragment(Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method protected getMessageFor(Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p2, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;->config:Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;

    iget-object p1, p1, Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p2, p1}, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->getMessageIdForThrowable(Ljava/lang/Throwable;)I

    move-result p1

    .line 84
    iget-object p2, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;->config:Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;

    iget-object p2, p2, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->resources:Landroid/content/res/Resources;

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getTitleFor(Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p1, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;->config:Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;

    iget-object p1, p1, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->resources:Landroid/content/res/Resources;

    iget-object p2, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;->config:Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;

    iget p2, p2, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->defaultTitleId:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected prepareErrorFragment(Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;ZLandroid/os/Bundle;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;",
            "Z",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;->isSuppressErrorUi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 47
    invoke-virtual {p3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    goto :goto_0

    .line 49
    :cond_1
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v0, "de.greenrobot.eventbus.errordialog.title"

    .line 52
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 53
    invoke-virtual {p0, p1, p3}, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;->getTitleFor(Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "de.greenrobot.eventbus.errordialog.message"

    .line 56
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 57
    invoke-virtual {p0, p1, p3}, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;->getMessageFor(Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "de.greenrobot.eventbus.errordialog.finish_after_dialog"

    .line 60
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 61
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    const-string p2, "de.greenrobot.eventbus.errordialog.event_type_on_close"

    .line 63
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;->config:Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;

    iget-object v0, v0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->defaultEventTypeOnDialogClosed:Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 65
    iget-object v0, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;->config:Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;

    iget-object v0, v0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->defaultEventTypeOnDialogClosed:Ljava/lang/Class;

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_5
    const-string p2, "de.greenrobot.eventbus.errordialog.icon_id"

    .line 67
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;->config:Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;

    iget v0, v0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->defaultDialogIconId:I

    if-eqz v0, :cond_6

    .line 68
    iget-object v0, p0, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;->config:Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;

    iget v0, v0, Lnet/aihelp/core/util/bus/util/ErrorDialogConfig;->defaultDialogIconId:I

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    :cond_6
    invoke-virtual {p0, p1, p3}, Lnet/aihelp/core/util/bus/util/ErrorDialogFragmentFactory;->createErrorFragment(Lnet/aihelp/core/util/bus/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
