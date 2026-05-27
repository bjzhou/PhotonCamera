.class public Lcom/agc/glide/request/transition/ViewPropertyTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/request/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;
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


# instance fields
.field private final animator:Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;


# direct methods
.method public constructor <init>(Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/request/transition/ViewPropertyTransition;->animator:Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;

    return-void
.end method


# virtual methods
.method public transition(Ljava/lang/Object;Lcom/agc/glide/request/transition/Transition$ViewAdapter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/agc/glide/request/transition/Transition$ViewAdapter;",
            ")Z"
        }
    .end annotation

    invoke-interface {p2}, Lcom/agc/glide/request/transition/Transition$ViewAdapter;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/glide/request/transition/ViewPropertyTransition;->animator:Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;

    invoke-interface {p2}, Lcom/agc/glide/request/transition/Transition$ViewAdapter;->getView()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/agc/glide/request/transition/ViewPropertyTransition$Animator;->animate(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
