.class public abstract Lcom/agc/glide/TransitionOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lcom/agc/glide/TransitionOptions<",
        "TCHI",
        "LD;",
        "TTranscodeType;>;TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private transitionFactory:Lcom/agc/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/request/transition/TransitionFactory<",
            "-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/agc/glide/request/transition/NoTransition;->getFactory()Lcom/agc/glide/request/transition/TransitionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/TransitionOptions;->transitionFactory:Lcom/agc/glide/request/transition/TransitionFactory;

    return-void
.end method

.method private self()Lcom/agc/glide/TransitionOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public final clone()Lcom/agc/glide/TransitionOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/TransitionOptions;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/TransitionOptions;->clone()Lcom/agc/glide/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public final dontTransition()Lcom/agc/glide/TransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    invoke-static {}, Lcom/agc/glide/request/transition/NoTransition;->getFactory()Lcom/agc/glide/request/transition/TransitionFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/glide/TransitionOptions;->transition(Lcom/agc/glide/request/transition/TransitionFactory;)Lcom/agc/glide/TransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/agc/glide/TransitionOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/glide/TransitionOptions;

    iget-object v0, p0, Lcom/agc/glide/TransitionOptions;->transitionFactory:Lcom/agc/glide/request/transition/TransitionFactory;

    iget-object p1, p1, Lcom/agc/glide/TransitionOptions;->transitionFactory:Lcom/agc/glide/request/transition/TransitionFactory;

    invoke-static {v0, p1}, Lcom/agc/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getTransitionFactory()Lcom/agc/glide/request/transition/TransitionFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/request/transition/TransitionFactory<",
            "-TTranscodeType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/TransitionOptions;->transitionFactory:Lcom/agc/glide/request/transition/TransitionFactory;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/TransitionOptions;->transitionFactory:Lcom/agc/glide/request/transition/TransitionFactory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final transition(I)Lcom/agc/glide/TransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCHI",
            "LD;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/request/transition/ViewAnimationFactory;

    invoke-direct {v0, p1}, Lcom/agc/glide/request/transition/ViewAnimationFactory;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/agc/glide/TransitionOptions;->transition(Lcom/agc/glide/request/transition/TransitionFactory;)Lcom/agc/glide/TransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public final transition(Lcom/agc/glide/request/transition/TransitionFactory;)Lcom/agc/glide/TransitionOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/transition/TransitionFactory<",
            "-TTranscodeType;>;)TCHI",
            "LD;"
        }
    .end annotation

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/request/transition/TransitionFactory;

    iput-object p1, p0, Lcom/agc/glide/TransitionOptions;->transitionFactory:Lcom/agc/glide/request/transition/TransitionFactory;

    invoke-direct {p0}, Lcom/agc/glide/TransitionOptions;->self()Lcom/agc/glide/TransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public final transition(Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;)Lcom/agc/glide/TransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;",
            ")TCHI",
            "LD;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/request/transition/ViewPropertyAnimationFactory;

    invoke-direct {v0, p1}, Lcom/agc/glide/request/transition/ViewPropertyAnimationFactory;-><init>(Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;)V

    invoke-virtual {p0, v0}, Lcom/agc/glide/TransitionOptions;->transition(Lcom/agc/glide/request/transition/TransitionFactory;)Lcom/agc/glide/TransitionOptions;

    move-result-object p1

    return-object p1
.end method
