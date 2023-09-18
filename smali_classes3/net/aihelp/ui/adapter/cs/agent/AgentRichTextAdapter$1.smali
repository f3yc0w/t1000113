.class Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$1;
.super Ljava/lang/Object;
.source "AgentRichTextAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->getImageViewFromRichText(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;

.field final synthetic val$adjustedUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$1;->val$adjustedUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->access$000(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/core/util/viewer/ImageViewer;->getDefault(Landroid/content/Context;)Lnet/aihelp/core/util/viewer/ImageViewer;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$1;->val$adjustedUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/viewer/ImageViewer;->updateImageResource(Ljava/lang/String;)Lnet/aihelp/core/util/viewer/ImageViewer;

    .line 142
    invoke-virtual {p1}, Lnet/aihelp/core/util/viewer/ImageViewer;->show()V

    return-void
.end method
