.class public Lcom/agc/glide/request/transition/ViewAnimationFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/request/transition/TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory;,
        Lcom/agc/glide/request/transition/ViewAnimationFactory$ResourceViewTransitionAnimationFactory;
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
.field private transition:Lcom/agc/glide/request/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/request/transition/Transition<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final viewTransitionAnimationFactory:Lcom/agc/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lcom/agc/glide/request/transition/ViewAnimationFactory$ResourceViewTransitionAnimationFactory;

    invoke-direct {v0, p1}, Lcom/agc/glide/request/transition/ViewAnimationFactory$ResourceViewTransitionAnimationFactory;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/agc/glide/request/transition/ViewAnimationFactory;-><init>(Lcom/agc/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    new-instance v0, Lcom/agc/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory;

    invoke-direct {v0, p1}, Lcom/agc/glide/request/transition/ViewAnimationFactory$ConcreteViewTransitionAnimationFactory;-><init>(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v0}, Lcom/agc/glide/request/transition/ViewAnimationFactory;-><init>(Lcom/agc/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/request/transition/ViewAnimationFactory;->viewTransitionAnimationFactory:Lcom/agc/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;

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

    sget-object v0, Lcom/agc/glide/load/DataSource;->MEMORY_CACHE:Lcom/agc/glide/load/DataSource;

    if-eq p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/agc/glide/request/transition/ViewAnimationFactory;->transition:Lcom/agc/glide/request/transition/Transition;

    if-nez p1, :cond_1

    new-instance p1, Lcom/agc/glide/request/transition/ViewTransition;

    iget-object p2, p0, Lcom/agc/glide/request/transition/ViewAnimationFactory;->viewTransitionAnimationFactory:Lcom/agc/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;

    invoke-direct {p1, p2}, Lcom/agc/glide/request/transition/ViewTransition;-><init>(Lcom/agc/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V

    iput-object p1, p0, Lcom/agc/glide/request/transition/ViewAnimationFactory;->transition:Lcom/agc/glide/request/transition/Transition;

    :cond_1
    iget-object p1, p0, Lcom/agc/glide/request/transition/ViewAnimationFactory;->transition:Lcom/agc/glide/request/transition/Transition;

    return-object p1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/agc/glide/request/transition/NoTransition;->get()Lcom/agc/glide/request/transition/Transition;

    move-result-object p1

    return-object p1
.end method
