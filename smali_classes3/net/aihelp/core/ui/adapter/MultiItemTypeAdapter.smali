.class public Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MultiItemTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lnet/aihelp/core/ui/adapter/ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mItemViewDelegateManager:Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mOnItemClickListener:Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mContext:Landroid/content/Context;

    .line 25
    new-instance p1, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;

    invoke-direct {p1}, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;

    return-void
.end method

.method private useItemViewDelegateManager()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;

    invoke-virtual {v0}, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->getItemViewDelegateCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected addItemViewDelegate(ILnet/aihelp/core/ui/adapter/ItemViewDelegate;)Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/aihelp/core/ui/adapter/ItemViewDelegate<",
            "TT;>;)",
            "Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->addDelegate(ILnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    return-object p0
.end method

.method protected addItemViewDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/ui/adapter/ItemViewDelegate<",
            "TT;>;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->addDelegate(Lnet/aihelp/core/ui/adapter/ItemViewDelegate;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 152
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    invoke-virtual {p0}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/ui/adapter/ViewHolder;",
            "TT;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V

    return-void
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 30
    invoke-direct {p0}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->useItemViewDelegateManager()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    .line 31
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;

    iget-object v1, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->getItemViewType(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method protected isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lnet/aihelp/core/ui/adapter/ViewHolder;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->onBindViewHolder(Lnet/aihelp/core/ui/adapter/ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lnet/aihelp/core/ui/adapter/ViewHolder;I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lnet/aihelp/core/ui/adapter/ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lnet/aihelp/core/ui/adapter/ViewHolder;
    .locals 2

    .line 38
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;

    invoke-virtual {v0, p2}, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->getItemViewDelegate(I)Lnet/aihelp/core/ui/adapter/ItemViewDelegate;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Lnet/aihelp/core/ui/adapter/ItemViewDelegate;->getItemViewLayoutId()I

    move-result v0

    .line 40
    iget-object v1, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lnet/aihelp/core/ui/adapter/ViewHolder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->onViewHolderCreated(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/view/View;)V

    .line 42
    invoke-virtual {p0, p1, v0, p2}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->setListener(Landroid/view/ViewGroup;Lnet/aihelp/core/ui/adapter/ViewHolder;I)V

    return-object v0
.end method

.method public onViewHolderCreated(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 160
    invoke-virtual {p0}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected removeItemViewDelegate(I)Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;
    .locals 1

    .line 103
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->removeDelegate(I)V

    return-object p0
.end method

.method public setDataList(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    invoke-virtual {p0}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->notifyDataSetChanged()V

    .line 177
    iget-object p1, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mItemViewDelegateManager:Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;

    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ItemViewDelegateManager;->notifyDataSetChanged(Ljava/util/List;)V

    return-void
.end method

.method protected setListener(Landroid/view/ViewGroup;Lnet/aihelp/core/ui/adapter/ViewHolder;I)V
    .locals 0

    .line 59
    invoke-virtual {p0, p3}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$1;

    invoke-direct {p3, p0, p2}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$1;-><init>(Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;Lnet/aihelp/core/ui/adapter/ViewHolder;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getConvertView()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$2;

    invoke-direct {p3, p0, p2}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$2;-><init>(Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;Lnet/aihelp/core/ui/adapter/ViewHolder;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnItemClickListener(Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$OnItemClickListener;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mOnItemClickListener:Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter$OnItemClickListener;

    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 137
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 142
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->update(Ljava/lang/Object;)V

    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    invoke-virtual {p0}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public update(Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 123
    invoke-virtual {p0}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->clear()V

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/adapter/MultiItemTypeAdapter;->update(Ljava/util/List;)V

    return-void
.end method
