.class public abstract Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/request/transition/TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory$BitmapGlideAnimation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/request/transition/TransitionFactory<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final realFactory:Lcom/agc/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/glide/request/transition/TransitionFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/transition/TransitionFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory;->realFactory:Lcom/agc/glide/request/transition/TransitionFactory;

    return-void
.end method


# virtual methods
.method public build(Lcom/agc/glide/load/DataSource;Z)Lcom/agc/glide/request/transition/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/DataSource;",
            "Z)",
            "Lcom/agc/glide/request/transition/Transition<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory;->realFactory:Lcom/agc/glide/request/transition/TransitionFactory;

    invoke-interface {v0, p1, p2}, Lcom/agc/glide/request/transition/TransitionFactory;->build(Lcom/agc/glide/load/DataSource;Z)Lcom/agc/glide/request/transition/Transition;

    move-result-object p1

    new-instance p2, Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory$BitmapGlideAnimation;

    invoke-direct {p2, p0, p1}, Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory$BitmapGlideAnimation;-><init>(Lcom/agc/glide/request/transition/BitmapContainerTransitionFactory;Lcom/agc/glide/request/transition/Transition;)V

    return-object p2
.end method

.method public abstract getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method
