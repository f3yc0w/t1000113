.class public final synthetic Lcom/facebook/-$$Lambda$GraphRequest$Companion$GD497EtoNtzwtAxOR_LxO6Zm0mI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Lcom/facebook/GraphRequestBatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/facebook/GraphRequestBatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/-$$Lambda$GraphRequest$Companion$GD497EtoNtzwtAxOR_LxO6Zm0mI;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/facebook/-$$Lambda$GraphRequest$Companion$GD497EtoNtzwtAxOR_LxO6Zm0mI;->f$1:Lcom/facebook/GraphRequestBatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/-$$Lambda$GraphRequest$Companion$GD497EtoNtzwtAxOR_LxO6Zm0mI;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/-$$Lambda$GraphRequest$Companion$GD497EtoNtzwtAxOR_LxO6Zm0mI;->f$1:Lcom/facebook/GraphRequestBatch;

    invoke-static {v0, v1}, Lcom/facebook/GraphRequest$Companion;->lambda$GD497EtoNtzwtAxOR_LxO6Zm0mI(Ljava/util/ArrayList;Lcom/facebook/GraphRequestBatch;)V

    return-void
.end method
