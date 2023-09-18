.class Lcom/unity3d/player/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/MainActivity;->OpenPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/player/MainActivity;


# direct methods
.method constructor <init>(Lcom/unity3d/player/MainActivity;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/unity3d/player/MainActivity$1;->this$0:Lcom/unity3d/player/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 187
    iget-object p1, p0, Lcom/unity3d/player/MainActivity$1;->this$0:Lcom/unity3d/player/MainActivity;

    invoke-virtual {p1}, Lcom/unity3d/player/MainActivity;->GoToAppDetailsSettings()V

    return-void
.end method
