.class public final Lhwd;
.super Ljava/lang/Object;

# interfaces
.implements Lhwf;


# instance fields
.field public a:Lchk;

.field public b:Lhwf;

.field private final c:Lhwc;

.field private final d:Lhud;

.field private final e:Ljwb;

.field private final f:Lhgy;

.field private final g:Liff;

.field private final h:Ljuh;

.field private final i:Lhxx;


# direct methods
.method public constructor <init>(Lhwc;Lhud;Ljwb;Liff;Lhgy;Ljuh;Lhxx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhwd;->c:Lhwc;

    iput-object p2, p0, Lhwd;->d:Lhud;

    iput-object p3, p0, Lhwd;->e:Ljwb;

    iput-object p5, p0, Lhwd;->f:Lhgy;

    iput-object p4, p0, Lhwd;->g:Liff;

    iput-object p6, p0, Lhwd;->h:Ljuh;

    iput-object p7, p0, Lhwd;->i:Lhxx;

    return-void
.end method

.method private final i()I
    .locals 2

    iget-object v0, p0, Lhwd;->i:Lhxx;

    invoke-virtual {v0}, Lhxx;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhwd;->e:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyu;

    sget-object v1, Lgyu;->a:Lgyu;

    invoke-virtual {v0, v1}, Lgyu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private final j(II)V
    .locals 1

    iget-object v0, p0, Lhwd;->f:Lhgy;

    invoke-interface {v0, p1, p2}, Lhgy;->f(II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lhwd;->a:Lchk;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lchk;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lhwd;->b:Lhwf;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lhwf;->a()V

    :cond_2
    iget-object v0, p0, Lhwd;->d:Lhud;

    invoke-virtual {v0}, Lhua;->b()V

    iget-object v0, p0, Lhwd;->a:Lchk;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lchk;->r()V

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lhwd;->a:Lchk;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lchk;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lhwd;->b:Lhwf;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lhwf;->b()V

    :cond_2
    iget-object v0, p0, Lhwd;->d:Lhud;

    invoke-virtual {v0}, Lhua;->a()V

    invoke-direct {p0}, Lhwd;->i()I

    move-result v0

    const v1, 0x7f13002d

    invoke-direct {p0, v1, v0}, Lhwd;->j(II)V

    return-void
.end method

.method public final bS(I)V
    .locals 2

    iget-object v0, p0, Lhwd;->b:Lhwf;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lhwf;->bS(I)V

    :cond_0
    invoke-direct {p0}, Lhwd;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const p1, 0x7f13002b

    invoke-direct {p0, p1, v0}, Lhwd;->j(II)V

    return-void

    :cond_1
    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const p1, 0x7f13002c

    invoke-direct {p0, p1, v0}, Lhwd;->j(II)V

    return-void
.end method

.method public final d(Lchk;Lhwf;Ljuf;)V
    .locals 2

    iput-object p1, p0, Lhwd;->a:Lchk;

    iput-object p2, p0, Lhwd;->b:Lhwf;

    iget-object p1, p0, Lhwd;->e:Ljwb;

    iget-object p2, p0, Lhwd;->g:Liff;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lhml;

    const/16 v1, 0xd

    invoke-direct {v0, p2, v1}, Lhml;-><init>(Liff;I)V

    iget-object p2, p0, Lhwd;->h:Ljuh;

    invoke-interface {p1, v0, p2}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljuf;->d(Lkad;)V

    new-instance p1, Lhbq;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, Lhbq;-><init>(Lhwd;I)V

    invoke-virtual {p3, p1}, Ljuf;->d(Lkad;)V

    new-instance p1, Lhbq;

    const/16 p2, 0xa

    invoke-direct {p1, p0, p2}, Lhbq;-><init>(Lhwd;I)V

    invoke-virtual {p3, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, Lhwd;->c:Lhwc;

    iput-object p0, v0, Lhwc;->n:Lhwf;

    invoke-virtual {v0, p1}, Lhwc;->d(I)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lhwd;->a:Lchk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhwd;->c:Lhwc;

    invoke-virtual {v0}, Lhwc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lhwd;->g()Z

    return-void

    :cond_1
    iget-object v0, p0, Lhwd;->e:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyu;

    iget v0, v0, Lgyu;->g:I

    if-lez v0, :cond_2

    invoke-virtual {p0, v0}, Lhwd;->e(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lhwd;->a:Lchk;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lchk;->r()V

    :cond_3
    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lhwd;->c:Lhwc;

    invoke-virtual {v0}, Lhwc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhwd;->b:Lhwf;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhwf;->a()V

    :cond_0
    iget-object v0, p0, Lhwd;->d:Lhud;

    invoke-virtual {v0}, Lhua;->b()V

    iget-object v0, p0, Lhwd;->c:Lhwc;

    invoke-virtual {v0}, Lhwc;->a()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lhwd;->c:Lhwc;

    invoke-virtual {v0}, Lhwc;->e()Z

    move-result v0

    return v0
.end method
