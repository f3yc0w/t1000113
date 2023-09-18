.class public final synthetic La/-$$Lambda$__AIU8-XR21xv5kRm28jLpAjx9A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:La/x;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(La/x;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/-$$Lambda$__AIU8-XR21xv5kRm28jLpAjx9A;->f$0:La/x;

    iput-object p2, p0, La/-$$Lambda$__AIU8-XR21xv5kRm28jLpAjx9A;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, La/-$$Lambda$__AIU8-XR21xv5kRm28jLpAjx9A;->f$0:La/x;

    iget-object v1, p0, La/-$$Lambda$__AIU8-XR21xv5kRm28jLpAjx9A;->f$1:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, La/x;->a(La/x;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
