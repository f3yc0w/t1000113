.class Lnet/aihelp/ui/cs/CustomerServiceFragment$3;
.super Ljava/lang/Object;
.source "CustomerServiceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateBottomLayout(Lnet/aihelp/data/model/rpa/RPAMessage;Lnet/aihelp/data/model/rpa/RPAStep;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/CustomerServiceFragment;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment$3;->this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 361
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment$3;->this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;

    iget-object v0, v0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    iget-object v1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment$3;->this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;

    iget-object v1, v1, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->scrollToPosition(I)V

    return-void
.end method
