.class Lcom/unity3d/player/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 197
    iput-object p1, p0, Lcom/unity3d/player/MainActivity$3;->this$0:Lcom/unity3d/player/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "new permission "

    const-string v1, "\u6743\u9650\u4e0d\u901a\u8fc7"

    .line 200
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
