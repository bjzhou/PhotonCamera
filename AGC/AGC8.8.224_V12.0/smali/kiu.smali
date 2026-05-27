.class public abstract Lkiu;
.super Ljava/lang/Object;


# instance fields
.field public final b:Lkkb;

.field protected final c:Lnou;


# direct methods
.method public constructor <init>(Lkkb;Lnou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkiu;->b:Lkkb;

    iput-object p2, p0, Lkiu;->c:Lnou;

    return-void
.end method


# virtual methods
.method public abstract a()Lkow;
.end method

.method public final c()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lkiu;->c:Lnou;

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lkiu;->c:Lnou;

    invoke-static {v0}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method
