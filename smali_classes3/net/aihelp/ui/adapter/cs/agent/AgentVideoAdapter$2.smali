.class Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$2;
.super Ljava/lang/Object;
.source "AgentVideoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter;->loadUpImageView(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/MediaMessage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter;

.field final synthetic val$imageView:Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

.field final synthetic val$mediaMessage:Lnet/aihelp/data/model/rpa/MediaMessage;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter;Lnet/aihelp/ui/widget/AIHelpLoadingImageView;Lnet/aihelp/data/model/rpa/MediaMessage;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$2;->val$imageView:Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$2;->val$mediaMessage:Lnet/aihelp/data/model/rpa/MediaMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 91
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$2;->val$imageView:Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter;->access$300(Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/ImageViewer;->getDefault(Landroid/content/Context;)Lnet/aihelp/core/util/viewer/ImageViewer;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$2;->val$mediaMessage:Lnet/aihelp/data/model/rpa/MediaMessage;

    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/MediaMessage;->getVideoThumbnail()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$2;->val$mediaMessage:Lnet/aihelp/data/model/rpa/MediaMessage;

    invoke-virtual {v1}, Lnet/aihelp/data/model/rpa/MediaMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/util/viewer/ImageViewer;->updateVideoResource(Ljava/lang/String;Ljava/lang/String;)Lnet/aihelp/core/util/viewer/ImageViewer;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/util/viewer/ImageViewer;->show()V

    return-void
.end method
