.class public final synthetic Lcom/facebook/-$$Lambda$FacebookException$hpwz3MR7nO3VJejRxF4PsX2rBR8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/-$$Lambda$FacebookException$hpwz3MR7nO3VJejRxF4PsX2rBR8;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCompleted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/-$$Lambda$FacebookException$hpwz3MR7nO3VJejRxF4PsX2rBR8;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/facebook/FacebookException;->lambda$hpwz3MR7nO3VJejRxF4PsX2rBR8(Ljava/lang/String;Z)V

    return-void
.end method
