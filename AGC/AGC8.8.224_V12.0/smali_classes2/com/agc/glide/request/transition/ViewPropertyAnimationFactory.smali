.class public Lcom/agc/glide/request/transition/ViewPropertyAnimationFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/request/transition/TransitionFactory;


# annotations
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
.field private animation:Lcom/agc/glide/request/transition/ViewPropertyTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/request/transition/ViewPropertyTransition<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final animator:Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;


# direct methods
.method public constructor <init>(Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/request/transition/ViewPropertyAnimationFactory;->animator:Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;

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
    iget-object p1, p0, Lcom/agc/glide/request/transition/ViewPropertyAnimationFactory;->animation:Lcom/agc/glide/request/transition/ViewPropertyTransition;

    if-nez p1, :cond_1

    new-instance p1, Lcom/agc/glide/request/transition/ViewPropertyTransition;

    iget-object p2, p0, Lcom/agc/glide/request/transition/ViewPropertyAnimationFactory;->animator:Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;

    invoke-direct {p1, p2}, Lcom/agc/glide/request/transition/ViewPropertyTransition;-><init>(Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;)V

    iput-object p1, p0, Lcom/agc/glide/request/transition/ViewPropertyAnimationFactory;->animation:Lcom/agc/glide/request/transition/ViewPropertyTransition;

    :cond_1
    iget-object p1, p0, Lcom/agc/glide/request/transition/ViewPropertyAnimationFactory;->animation:Lcom/agc/glide/request/transition/ViewPropertyTransition;

    return-object p1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/agc/glide/request/transition/NoTransition;->get()Lcom/agc/glide/request/transition/Transition;

    move-result-object p1

    return-object p1
.end method
