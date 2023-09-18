.class public interface abstract annotation Lcom/netease/yunxin/lite/annotation/RtcParameter;
.super Ljava/lang/Object;
.source "RtcParameter.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/netease/yunxin/lite/annotation/RtcParameter;
        intDef = {}
        stringDef = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract access()Lcom/netease/yunxin/lite/annotation/AccessPolicy;
.end method

.method public abstract intDef()[I
.end method

.method public abstract privilege()Lcom/netease/yunxin/lite/annotation/Privilege;
.end method

.method public abstract runtime()Z
.end method

.method public abstract stringDef()[Ljava/lang/String;
.end method

.method public abstract type()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
