.class Lcom/secondfury/nativetoolkit/Dialog$4;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secondfury/nativetoolkit/Dialog;->CreateRate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/secondfury/nativetoolkit/Dialog;


# direct methods
.method constructor <init>(Lcom/secondfury/nativetoolkit/Dialog;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/secondfury/nativetoolkit/Dialog$4;->this$0:Lcom/secondfury/nativetoolkit/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p2, "NativeToolkit"

    const-string v0, "OnRatePress"

    const-string v1, "2"

    .line 75
    invoke-static {p2, v0, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "market://details?id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/secondfury/nativetoolkit/Dialog$4;->this$0:Lcom/secondfury/nativetoolkit/Dialog;

    invoke-static {v0}, Lcom/secondfury/nativetoolkit/Dialog;->access$000(Lcom/secondfury/nativetoolkit/Dialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 79
    iget-object p2, p0, Lcom/secondfury/nativetoolkit/Dialog$4;->this$0:Lcom/secondfury/nativetoolkit/Dialog;

    invoke-static {p2}, Lcom/secondfury/nativetoolkit/Dialog;->access$000(Lcom/secondfury/nativetoolkit/Dialog;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 80
    iget-object p2, p0, Lcom/secondfury/nativetoolkit/Dialog$4;->this$0:Lcom/secondfury/nativetoolkit/Dialog;

    invoke-static {p2}, Lcom/secondfury/nativetoolkit/Dialog;->access$000(Lcom/secondfury/nativetoolkit/Dialog;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 82
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
