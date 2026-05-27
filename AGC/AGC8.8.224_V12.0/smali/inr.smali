.class public final Linr;
.super Liod;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Lhiu;

.field public final b:Lhiw;

.field public final c:Lhiw;

.field private final l:Lhiw;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Liod;-><init>()V

    new-instance v0, Lino;

    invoke-direct {v0, p0}, Lino;-><init>(Linr;)V

    new-instance v1, Lhiw;

    const/4 v2, 0x0

    new-array v3, v2, [Lhis;

    invoke-direct {v1, v0, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v1, p0, Linr;->b:Lhiw;

    new-instance v0, Linp;

    invoke-direct {v0, p0}, Linp;-><init>(Linr;)V

    new-instance v1, Lhiw;

    new-array v3, v2, [Lhis;

    invoke-direct {v1, v0, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v1, p0, Linr;->c:Lhiw;

    new-instance v0, Linq;

    invoke-direct {v0, p0}, Linq;-><init>(Linr;)V

    new-instance v1, Lhiw;

    new-array v3, v2, [Lhis;

    invoke-direct {v1, v0, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v1, p0, Linr;->l:Lhiw;

    new-instance v0, Lhiu;

    invoke-direct {v0, v1, v2}, Lhiu;-><init>(Lhiw;Z)V

    iput-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Linx;

    invoke-virtual {v0}, Linx;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Linx;

    invoke-virtual {v0}, Linx;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Linx;

    invoke-virtual {v0}, Linx;->c()V

    return-void
.end method

.method public final co()V
    .locals 1

    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Linx;

    invoke-virtual {v0}, Linx;->co()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Linx;

    invoke-virtual {v0}, Linx;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Linr;->b:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Linr;->c:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Linr;->l:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Linx;

    invoke-virtual {v0}, Linx;->i()V

    return-void
.end method

.method public final j(Lioe;Landroid/net/Uri;Lini;Linw;IZZ)V
    .locals 9

    move-object v0, p0

    move-object v2, p1

    iget-object v1, v0, Linr;->a:Lhiu;

    invoke-virtual {v1}, Lhiu;->a()Lhiw;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Liod;->d:Lioe;

    move-object v1, v2

    check-cast v1, Liof;

    iget-object v1, v1, Liof;->f:Landroid/widget/VideoView;

    iput-object v1, v0, Liod;->e:Landroid/widget/VideoView;

    move-object v4, p3

    iput-object v4, v0, Liod;->f:Lini;

    move-object v5, p4

    iput-object v5, v0, Liod;->g:Linw;

    move-object v3, p2

    iput-object v3, v0, Liod;->h:Landroid/net/Uri;

    move v6, p5

    iput v6, v0, Liod;->i:I

    move v7, p6

    iput-boolean v7, v0, Liod;->j:Z

    move/from16 v8, p7

    iput-boolean v8, v0, Liod;->k:Z

    return-void

    :cond_0
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    iget-object v1, v0, Linr;->a:Lhiu;

    invoke-virtual {v1}, Lhiu;->a()Lhiw;

    move-result-object v1

    iget-object v1, v1, Lhiw;->a:Lhis;

    check-cast v1, Linx;

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Linx;->j(Lioe;Landroid/net/Uri;Lini;Linw;IZZ)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Linr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Linx;

    invoke-virtual {v0}, Linx;->k()V

    return-void
.end method
