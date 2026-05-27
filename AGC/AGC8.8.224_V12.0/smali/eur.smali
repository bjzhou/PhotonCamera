.class public final Leur;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leur;->a:Loiw;

    iput-object p2, p0, Leur;->b:Loiw;

    iput-object p3, p0, Leur;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Leuo;
    .locals 5

    iget-object v0, p0, Leur;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgy;

    iget-object v1, p0, Leur;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhwc;

    iget-object v2, p0, Leur;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Leuo;

    invoke-interface {v0}, Lcgy;->g()Lcha;

    move-result-object v4

    invoke-interface {v0}, Lcgy;->g()Lcha;

    move-result-object v0

    check-cast v0, Lcie;

    iget-object v0, v0, Lcie;->f:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-direct {v3, v4, v0, v2, v1}, Leuo;-><init>(Lcha;Landroid/view/View;Ljava/util/concurrent/Executor;Lhwc;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leur;->a()Leuo;

    move-result-object v0

    return-object v0
.end method
