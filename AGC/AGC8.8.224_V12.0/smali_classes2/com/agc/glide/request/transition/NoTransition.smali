.class public Lcom/agc/glide/request/transition/NoTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/request/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/request/transition/NoTransition$NoAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/request/transition/Transition<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final NO_ANIMATION:Lcom/agc/glide/request/transition/NoTransition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/request/transition/NoTransition<",
            "*>;"
        }
    .end annotation
.end field

.field private static final NO_ANIMATION_FACTORY:Lcom/agc/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/request/transition/TransitionFactory<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/glide/request/transition/NoTransition;

    invoke-direct {v0}, Lcom/agc/glide/request/transition/NoTransition;-><init>()V

    sput-object v0, Lcom/agc/glide/request/transition/NoTransition;->NO_ANIMATION:Lcom/agc/glide/request/transition/NoTransition;

    new-instance v0, Lcom/agc/glide/request/transition/NoTransition$NoAnimationFactory;

    invoke-direct {v0}, Lcom/agc/glide/request/transition/NoTransition$NoAnimationFactory;-><init>()V

    sput-object v0, Lcom/agc/glide/request/transition/NoTransition;->NO_ANIMATION_FACTORY:Lcom/agc/glide/request/transition/TransitionFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/agc/glide/request/transition/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/agc/glide/request/transition/Transition<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/request/transition/NoTransition;->NO_ANIMATION:Lcom/agc/glide/request/transition/NoTransition;

    return-object v0
.end method

.method public static getFactory()Lcom/agc/glide/request/transition/TransitionFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/agc/glide/request/transition/TransitionFactory<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/request/transition/NoTransition;->NO_ANIMATION_FACTORY:Lcom/agc/glide/request/transition/TransitionFactory;

    return-object v0
.end method


# virtual methods
.method public transition(Ljava/lang/Object;Lcom/agc/glide/request/transition/Transition$ViewAdapter;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
