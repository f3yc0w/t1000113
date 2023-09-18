.class final Lnet/opencoding/console/Email$1;
.super Ljava/lang/Object;
.source "Email.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/opencoding/console/Email;->finishEmail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 74
    invoke-static {}, Lnet/opencoding/console/Email;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lnet/opencoding/console/Email;->access$100()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lnet/opencoding/console/Email;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 77
    :cond_0
    invoke-static {}, Lnet/opencoding/console/NativeMethods;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    invoke-static {}, Lnet/opencoding/console/Email;->access$100()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Send email"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
