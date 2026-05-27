.class public final Lcom/agc/glide/GenericTransitionOptions;
.super Lcom/agc/glide/TransitionOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/agc/glide/TransitionOptions<",
        "Lcom/agc/glide/GenericTransitionOptions<",
        "TTranscodeType;>;TTranscodeType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/agc/glide/TransitionOptions;-><init>()V

    return-void
.end method

.method public static with(I)Lcom/agc/glide/GenericTransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/agc/glide/GenericTransitionOptions<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/agc/glide/GenericTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/TransitionOptions;->transition(I)Lcom/agc/glide/TransitionOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/GenericTransitionOptions;

    return-object p0
.end method

.method public static with(Lcom/agc/glide/request/transition/TransitionFactory;)Lcom/agc/glide/GenericTransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/request/transition/TransitionFactory<",
            "-TTranscodeType;>;)",
            "Lcom/agc/glide/GenericTransitionOptions<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/agc/glide/GenericTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/TransitionOptions;->transition(Lcom/agc/glide/request/transition/TransitionFactory;)Lcom/agc/glide/TransitionOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/GenericTransitionOptions;

    return-object p0
.end method

.method public static with(Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;)Lcom/agc/glide/GenericTransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;",
            ")",
            "Lcom/agc/glide/GenericTransitionOptions<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/agc/glide/GenericTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/TransitionOptions;->transition(Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;)Lcom/agc/glide/TransitionOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/GenericTransitionOptions;

    return-object p0
.end method

.method public static withNoTransition()Lcom/agc/glide/GenericTransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/agc/glide/GenericTransitionOptions<",
            "TTranscodeType;>;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/GenericTransitionOptions;

    invoke-direct {v0}, Lcom/agc/glide/GenericTransitionOptions;-><init>()V

    invoke-virtual {v0}, Lcom/agc/glide/TransitionOptions;->dontTransition()Lcom/agc/glide/TransitionOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/GenericTransitionOptions;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/agc/glide/GenericTransitionOptions;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/agc/glide/TransitionOptions;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/agc/glide/TransitionOptions;->hashCode()I

    move-result v0

    return v0
.end method
