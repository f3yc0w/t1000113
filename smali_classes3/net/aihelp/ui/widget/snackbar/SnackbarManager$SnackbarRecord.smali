.class Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/widget/snackbar/SnackbarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnackbarRecord"
.end annotation


# instance fields
.field final callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field duration:I

.field paused:Z


# direct methods
.method constructor <init>(ILnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    .line 180
    iput p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    return-void
.end method


# virtual methods
.method isSnackbar(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
