.class final Lnet/opencoding/console/NativeMethods$1;
.super Ljava/lang/Object;
.source "NativeMethods.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/opencoding/console/NativeMethods;->copyToClipboard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lnet/opencoding/console/NativeMethods$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 22
    invoke-static {}, Lnet/opencoding/console/NativeMethods;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "clipboard"

    .line 23
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 24
    iget-object v1, p0, Lnet/opencoding/console/NativeMethods$1;->val$text:Ljava/lang/String;

    const-string v2, "Console Text"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
