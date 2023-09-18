.class Lnet/aihelp/ui/cs/bottom/BottomNewConversationView$1;
.super Ljava/lang/Object;
.source "BottomNewConversationView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/bottom/BottomNewConversationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/bottom/BottomNewConversationView;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/bottom/BottomNewConversationView;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomNewConversationView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomNewConversationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomNewConversationView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomNewConversationView;

    invoke-virtual {p1}, Lnet/aihelp/ui/cs/bottom/BottomNewConversationView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomNewConversationView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomNewConversationView;

    iget-object p1, p1, Lnet/aihelp/ui/cs/bottom/BottomNewConversationView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomNewConversationView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomNewConversationView;

    iget-object p1, p1, Lnet/aihelp/ui/cs/bottom/BottomNewConversationView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {p1}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onNewConversationStarted()V

    :cond_0
    return-void
.end method
