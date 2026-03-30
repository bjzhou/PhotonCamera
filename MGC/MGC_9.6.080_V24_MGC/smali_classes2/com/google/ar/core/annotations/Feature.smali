.class public interface abstract annotation Lcom/google/ar/core/annotations/Feature;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/ar/core/annotations/Feature;
        retainAsPackagePrivate = false
        retainAsPrivate = false
        retainDeclaration = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final RETAIN_AS_PACKAGE_PRIVATE:Ljava/lang/String; = "retainAsPackagePrivate"

.field public static final RETAIN_AS_PRIVATE:Ljava/lang/String; = "retainAsPrivate"

.field public static final RETAIN_DECLARATION:Ljava/lang/String; = "retainDeclaration"


# virtual methods
.method public abstract retainAsPackagePrivate()Z
.end method

.method public abstract retainAsPrivate()Z
.end method

.method public abstract retainDeclaration()Z
.end method

.method public abstract value()[Ljava/lang/String;
.end method
