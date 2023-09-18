.class public final La/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:La/v;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/v;IIIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/t;->a:La/v;

    iput p2, p0, La/t;->b:I

    iput p3, p0, La/t;->c:I

    iput p4, p0, La/t;->d:I

    iput p5, p0, La/t;->e:I

    iput-object p6, p0, La/t;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object p1, p0, La/t;->a:La/v;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, La/v;->i:Landroid/view/animation/AnimationSet;

    .line 2
    iget v0, p0, La/t;->b:I

    iget v1, p0, La/t;->c:I

    iget v2, p0, La/t;->d:I

    iget v3, p0, La/t;->e:I

    invoke-virtual {p1, v0, v1, v2, v3}, La/v;->a(IIII)V

    iget-object p1, p0, La/t;->a:La/v;

    .line 3
    iget-object v0, p1, La/v;->c:La/i0;

    .line 4
    iget-object p1, p1, La/v;->m:La/o;

    .line 5
    invoke-virtual {p1}, La/o;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, La/j0;->k:La/j0;

    iget-object v2, p0, La/t;->f:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, La/i0;->a(Ljava/lang/String;La/j0;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
