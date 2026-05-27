.class public abstract Lls;
.super Ljava/lang/Object;


# instance fields
.field public final a:Llt;

.field public b:Z

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llt;

    invoke-direct {v0}, Llt;-><init>()V

    iput-object v0, p0, Lls;->a:Llt;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lls;->b:Z

    const/4 v0, 0x1

    iput v0, p0, Lls;->c:I

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bc(Lmo;)V
    .locals 0

    return-void
.end method

.method public c(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract d(Landroid/view/ViewGroup;I)Lmo;
.end method

.method public abstract e(Lmo;I)V
.end method

.method public final g(Z)V
    .locals 1

    iget-object v0, p0, Lls;->a:Llt;

    invoke-virtual {v0}, Llt;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lls;->b:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Lej;)V
    .locals 1

    iget-object v0, p0, Lls;->a:Llt;

    invoke-virtual {v0, p1}, Llt;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Lej;)V
    .locals 1

    iget-object v0, p0, Lls;->a:Llt;

    invoke-virtual {v0, p1}, Llt;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
