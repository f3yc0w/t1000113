.class Lcom/secondfury/nativetoolkit/Dialog$2;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secondfury/nativetoolkit/Dialog;->CreateConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 37
    iput-object p1, p0, Lcom/secondfury/nativetoolkit/Dialog$2;->this$0:Lcom/secondfury/nativetoolkit/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p2, "NativeToolkit"

    const-string v0, "OnDialogPress"

    const-string v1, "No"

    .line 39
    invoke-static {p2, v0, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
