.class public Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "OperateViewPagerAdapter.java"


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private sectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/op/OperateSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/op/OperateSection;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 22
    iput-object p2, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->bundle:Landroid/os/Bundle;

    .line 23
    iput-object p3, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->sectionList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/op/OperateSection;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 28
    iput-object p2, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->bundle:Landroid/os/Bundle;

    .line 29
    iput-object p3, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->sectionList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lnet/aihelp/ui/adapter/OperateViewPagerAdapter;->sectionList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method
