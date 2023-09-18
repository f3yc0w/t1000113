.class Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;
.super Ljava/lang/Object;
.source "BaseMsgAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->getMsg(Ljava/lang/String;Z)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

.field final synthetic val$formUrl:Lnet/aihelp/data/model/rpa/bot/FormUrl;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;Lnet/aihelp/data/model/rpa/bot/FormUrl;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;->val$formUrl:Lnet/aihelp/data/model/rpa/bot/FormUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 91
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;->val$formUrl:Lnet/aihelp/data/model/rpa/bot/FormUrl;

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/bot/FormUrl;->getLink()Ljava/lang/String;

    move-result-object p1

    .line 92
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iget-object v0, v0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lnet/aihelp/utils/AppInfoUtil;->isUrlStillNeedResponding(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iget-object v0, v0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iget-object v0, v0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;->onUrlClicked(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
