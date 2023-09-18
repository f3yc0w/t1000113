.class Lnet/aihelp/ui/adapter/SmartIntentAdapter$1;
.super Ljava/lang/Object;
.source "SmartIntentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/SmartIntentAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/config/IntentEntity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/SmartIntentAdapter;

.field final synthetic val$hasNext:Z

.field final synthetic val$intentEntity:Lnet/aihelp/data/model/config/IntentEntity;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/SmartIntentAdapter;Lnet/aihelp/data/model/config/IntentEntity;Z)V
    .locals 0

    .line 36
    iput-object p1, p0, Lnet/aihelp/ui/adapter/SmartIntentAdapter$1;->this$0:Lnet/aihelp/ui/adapter/SmartIntentAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/SmartIntentAdapter$1;->val$intentEntity:Lnet/aihelp/data/model/config/IntentEntity;

    iput-boolean p3, p0, Lnet/aihelp/ui/adapter/SmartIntentAdapter$1;->val$hasNext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 39
    iget-object p1, p0, Lnet/aihelp/ui/adapter/SmartIntentAdapter$1;->this$0:Lnet/aihelp/ui/adapter/SmartIntentAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/SmartIntentAdapter;->access$000(Lnet/aihelp/ui/adapter/SmartIntentAdapter;)Lnet/aihelp/ui/adapter/SmartIntentAdapter$OnIntentSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lnet/aihelp/ui/adapter/SmartIntentAdapter$1;->this$0:Lnet/aihelp/ui/adapter/SmartIntentAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/SmartIntentAdapter;->access$000(Lnet/aihelp/ui/adapter/SmartIntentAdapter;)Lnet/aihelp/ui/adapter/SmartIntentAdapter$OnIntentSelectedListener;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/SmartIntentAdapter$1;->val$intentEntity:Lnet/aihelp/data/model/config/IntentEntity;

    iget-boolean v1, p0, Lnet/aihelp/ui/adapter/SmartIntentAdapter$1;->val$hasNext:Z

    invoke-interface {p1, v0, v1}, Lnet/aihelp/ui/adapter/SmartIntentAdapter$OnIntentSelectedListener;->onIntentSelected(Lnet/aihelp/data/model/config/IntentEntity;Z)V

    :cond_0
    return-void
.end method
