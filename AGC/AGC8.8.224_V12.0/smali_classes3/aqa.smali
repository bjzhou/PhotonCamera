.class public abstract Laqa;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lapt;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Loja;


# direct methods
.method public constructor <init>(Lapt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqa;->a:Lapt;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Laqa;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lpo;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lpo;-><init>(Laqa;I)V

    invoke-static {p1}, Lljr;->aP(Lolz;)Loja;

    move-result-object p1

    iput-object p1, p0, Laqa;->c:Loja;

    return-void
.end method

.method private final a()Larf;
    .locals 1

    iget-object v0, p0, Laqa;->c:Loja;

    invoke-interface {v0}, Loja;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larf;

    return-object v0
.end method


# virtual methods
.method protected abstract d()Ljava/lang/String;
.end method

.method public final e()Larf;
    .locals 3

    iget-object v0, p0, Laqa;->a:Lapt;

    invoke-virtual {v0}, Lapt;->k()V

    iget-object v0, p0, Laqa;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Laqa;->a()Larf;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laqa;->f()Larf;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final f()Larf;
    .locals 2

    iget-object v0, p0, Laqa;->a:Lapt;

    invoke-virtual {p0}, Laqa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapt;->t(Ljava/lang/String;)Larf;

    move-result-object v0

    return-object v0
.end method

.method public final g(Larf;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Laqa;->a()Larf;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Laqa;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
