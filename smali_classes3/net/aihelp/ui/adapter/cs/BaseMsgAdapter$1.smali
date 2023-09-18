.class Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;
.super Ljava/lang/Object;
.source "BaseMsgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->getRetryListener(ILnet/aihelp/data/model/rpa/RPAMessage;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

.field final synthetic val$message:Lnet/aihelp/data/model/rpa/RPAMessage;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;Lnet/aihelp/data/model/rpa/RPAMessage;I)V
    .locals 0

    .line 53
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;->val$message:Lnet/aihelp/data/model/rpa/RPAMessage;

    iput p3, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iget-object p1, p1, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;->val$message:Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/data/model/rpa/RPAMessage;->setTimestamp(J)V

    .line 59
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;->val$message:Lnet/aihelp/data/model/rpa/RPAMessage;

    instance-of v0, p1, Lnet/aihelp/data/model/rpa/MediaMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lnet/aihelp/data/model/rpa/RPAMessage;->setMsgStatus(I)V

    .line 60
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iget-object p1, p1, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    iget v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;->val$position:I

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$1;->val$message:Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;->onRetrySendingMessage(ILnet/aihelp/data/model/rpa/RPAMessage;)V

    :cond_1
    return-void
.end method
