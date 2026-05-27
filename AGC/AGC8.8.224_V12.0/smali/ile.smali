.class public final Lile;
.super Ljava/lang/Object;

# interfaces
.implements Likz;


# instance fields
.field public final b:Lnou;

.field private final c:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/animation/Animator;Lnou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lile;->c:Landroid/animation/Animator;

    iput-object p2, p0, Lile;->b:Lnou;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 1

    iget-object v0, p0, Lile;->b:Lnou;

    return-object v0
.end method

.method public final b(Liky;)V
    .locals 3

    iget-object v0, p0, Lile;->b:Lnou;

    new-instance v1, Ljvv;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljvv;-><init>(Liky;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-static {v0, v1, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lile;->c:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    return-void
.end method
