.class public interface abstract annotation Lcn/thinkingdata/android/ThinkingDataAutoTrackAppViewScreenUrl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcn/thinkingdata/android/ThinkingDataAutoTrackAppViewScreenUrl;
        appId = ""
        url = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract appId()Ljava/lang/String;
.end method

.method public abstract url()Ljava/lang/String;
.end method
