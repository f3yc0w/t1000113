.class Lnet/aihelp/ui/adapter/BillingListAdapter$1;
.super Ljava/lang/Object;
.source "BillingListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/BillingListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/BillingListAdapter;

.field final synthetic val$botBillEntity:Lnet/aihelp/data/model/cs/storyline/BotBillEntity;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/BillingListAdapter;Lnet/aihelp/data/model/cs/storyline/BotBillEntity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/BillingListAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$1;->val$botBillEntity:Lnet/aihelp/data/model/cs/storyline/BotBillEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/BillingListAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/BillingListAdapter;->access$400(Lnet/aihelp/ui/adapter/BillingListAdapter;)Lnet/aihelp/data/model/cs/storyline/BotBillEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/BillingListAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/BillingListAdapter;->access$400(Lnet/aihelp/ui/adapter/BillingListAdapter;)Lnet/aihelp/data/model/cs/storyline/BotBillEntity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;->setChecked(Z)V

    .line 153
    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$1;->val$botBillEntity:Lnet/aihelp/data/model/cs/storyline/BotBillEntity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/aihelp/data/model/cs/storyline/BotBillEntity;->setChecked(Z)V

    .line 154
    iget-object p1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/BillingListAdapter;

    iget-object v0, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$1;->val$botBillEntity:Lnet/aihelp/data/model/cs/storyline/BotBillEntity;

    invoke-static {p1, v0}, Lnet/aihelp/ui/adapter/BillingListAdapter;->access$402(Lnet/aihelp/ui/adapter/BillingListAdapter;Lnet/aihelp/data/model/cs/storyline/BotBillEntity;)Lnet/aihelp/data/model/cs/storyline/BotBillEntity;

    .line 155
    iget-object p1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/BillingListAdapter;

    invoke-virtual {p1}, Lnet/aihelp/ui/adapter/BillingListAdapter;->notifyDataSetChanged()V

    .line 156
    iget-object p1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/BillingListAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/BillingListAdapter;->access$500(Lnet/aihelp/ui/adapter/BillingListAdapter;)Lnet/aihelp/ui/adapter/BillingListAdapter$OnOrderCheckedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lnet/aihelp/ui/adapter/BillingListAdapter$1;->this$0:Lnet/aihelp/ui/adapter/BillingListAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/BillingListAdapter;->access$500(Lnet/aihelp/ui/adapter/BillingListAdapter;)Lnet/aihelp/ui/adapter/BillingListAdapter$OnOrderCheckedListener;

    move-result-object p1

    invoke-interface {p1}, Lnet/aihelp/ui/adapter/BillingListAdapter$OnOrderCheckedListener;->onOrderChecked()V

    :cond_1
    return-void
.end method
