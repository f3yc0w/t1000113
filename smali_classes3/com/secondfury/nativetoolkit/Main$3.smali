.class final Lcom/secondfury/nativetoolkit/Main$3;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/secondfury/nativetoolkit/Main;->rateThisApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$neg:Ljava/lang/String;

.field final synthetic val$neutral:Ljava/lang/String;

.field final synthetic val$pos:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/secondfury/nativetoolkit/Main$3;->val$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/secondfury/nativetoolkit/Main$3;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/secondfury/nativetoolkit/Main$3;->val$pos:Ljava/lang/String;

    iput-object p4, p0, Lcom/secondfury/nativetoolkit/Main$3;->val$neutral:Ljava/lang/String;

    iput-object p5, p0, Lcom/secondfury/nativetoolkit/Main$3;->val$neg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 139
    new-instance v0, Lcom/secondfury/nativetoolkit/Dialog;

    invoke-static {}, Lcom/secondfury/nativetoolkit/Main;->getUnityActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/secondfury/nativetoolkit/Dialog;-><init>(Landroid/app/Activity;)V

    .line 140
    iget-object v1, p0, Lcom/secondfury/nativetoolkit/Main$3;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/secondfury/nativetoolkit/Main$3;->val$message:Ljava/lang/String;

    iget-object v3, p0, Lcom/secondfury/nativetoolkit/Main$3;->val$pos:Ljava/lang/String;

    iget-object v4, p0, Lcom/secondfury/nativetoolkit/Main$3;->val$neutral:Ljava/lang/String;

    iget-object v5, p0, Lcom/secondfury/nativetoolkit/Main$3;->val$neg:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/secondfury/nativetoolkit/Dialog;->CreateRate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method