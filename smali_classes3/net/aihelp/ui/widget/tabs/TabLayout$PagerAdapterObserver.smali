.class Lnet/aihelp/ui/widget/tabs/TabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/widget/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/tabs/TabLayout;)V
    .locals 0

    .line 3064
    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$PagerAdapterObserver;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 3069
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$PagerAdapterObserver;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 3074
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$PagerAdapterObserver;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method
