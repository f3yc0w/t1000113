.class public Lnet/aihelp/ui/adapter/MessageListAdapter;
.super Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;,
        Lnet/aihelp/ui/adapter/MessageListAdapter$OnTextClickedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter<",
        "Lnet/aihelp/data/model/rpa/RPAMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final adminAdapter:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

.field private final agentFaqAdapter:Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;

.field private final agentRichTextAdapter:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;

.field private final answerFaqAdapter:Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;

.field private final userAdapter:Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;

.field private final userImageAdapter:Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

.field private final userVideoAdapter:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->adminAdapter:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

    .line 40
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    .line 41
    new-instance v0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->agentRichTextAdapter:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;

    .line 42
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    .line 43
    new-instance v0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->agentFaqAdapter:Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;

    .line 44
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    .line 45
    new-instance v0, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->answerFaqAdapter:Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;

    .line 46
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    .line 47
    new-instance v0, Lnet/aihelp/ui/adapter/cs/agent/AgentImageAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentImageAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    .line 48
    new-instance v0, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    .line 51
    new-instance v0, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->userAdapter:Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;

    .line 52
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    .line 53
    new-instance v0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->userImageAdapter:Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

    .line 54
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    .line 55
    new-instance v0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->userVideoAdapter:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;

    .line 56
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    .line 57
    new-instance v0, Lnet/aihelp/ui/adapter/cs/user/UserEvaluateFaqAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/user/UserEvaluateFaqAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    .line 60
    new-instance v0, Lnet/aihelp/ui/adapter/cs/hint/TimeMsgAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/hint/TimeMsgAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    .line 61
    new-instance v0, Lnet/aihelp/ui/adapter/cs/hint/LoadingAdapter;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/adapter/cs/hint/LoadingAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    return-void
.end method


# virtual methods
.method public insertHistoryConversation(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/RPAMessage;",
            ">;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->mDatas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 67
    invoke-virtual {p0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public loadDefaultWelcomeMessage()V
    .locals 1

    .line 71
    invoke-static {}, Lnet/aihelp/data/model/rpa/RPAMessage;->getDefaultMessage()Lnet/aihelp/data/model/rpa/RPAMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public setOnClickedListener(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->adminAdapter:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->setOnClickedListenerWrapper(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->agentRichTextAdapter:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->setOnClickedListenerWrapper(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    .line 107
    :cond_1
    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->agentFaqAdapter:Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->setOnClickedListenerWrapper(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    .line 111
    :cond_2
    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->answerFaqAdapter:Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;

    if-eqz v0, :cond_3

    .line 112
    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->setOnClickedListenerWrapper(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    .line 115
    :cond_3
    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->userAdapter:Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;

    if-eqz v0, :cond_4

    .line 116
    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->setOnClickedListenerWrapper(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    .line 119
    :cond_4
    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->userImageAdapter:Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;

    if-eqz v0, :cond_5

    .line 120
    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->setOnClickedListenerWrapper(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    .line 123
    :cond_5
    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->userVideoAdapter:Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;

    if-eqz v0, :cond_6

    .line 124
    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->setOnClickedListenerWrapper(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    :cond_6
    return-void
.end method

.method public updateAgentTypingStatus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 76
    invoke-static {}, Lnet/aihelp/data/model/rpa/RPAMessage;->getAgentTypingMsg()Lnet/aihelp/data/model/rpa/RPAMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->update(Ljava/lang/Object;)V

    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 79
    iget-object v0, p0, Lnet/aihelp/ui/adapter/MessageListAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/model/rpa/RPAMessage;

    .line 80
    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/RPAMessage;->getMsgType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 81
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->remove(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
