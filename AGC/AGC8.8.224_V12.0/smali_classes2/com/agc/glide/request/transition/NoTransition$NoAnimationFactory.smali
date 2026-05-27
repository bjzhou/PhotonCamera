.class public Lcom/agc/glide/request/transition/NoTransition$NoAnimationFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/request/transition/TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/request/transition/NoTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoAnimationFactory"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/agc/glide/load/DataSource;Z)Lcom/agc/glide/request/transition/Transition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/DataSource;",
            "Z)",
            "Lcom/agc/glide/request/transition/Transition<",
            "TR;>;"
        }
    .end annotation

    sget-object p1, Lcom/agc/glide/request/transition/NoTransition;->NO_ANIMATION:Lcom/agc/glide/request/transition/NoTransition;

    return-object p1
.end method
