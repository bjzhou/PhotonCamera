.class public final Lkjt;
.super Lkkb;


# instance fields
.field public final a:Lkjz;

.field public final b:Lkaf;

.field public final c:J

.field public final d:I

.field public final e:Lkgd;


# direct methods
.method public constructor <init>(Lkfl;Lkll;Lkjz;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lkkb;-><init>(Lkfl;Lkll;Z)V

    iput-object p3, p0, Lkjt;->a:Lkjz;

    iput p4, p0, Lkjt;->d:I

    iget-object p1, p3, Lkjz;->c:Lkaf;

    iput-object p1, p0, Lkjt;->b:Lkaf;

    iget p2, p3, Lkjz;->b:I

    invoke-static {p2, p1}, Llho;->D(ILkaf;)J

    move-result-wide p1

    iput-wide p1, p0, Lkjt;->c:J

    new-instance p1, Lkgd;

    invoke-direct {p1, p4}, Lkgd;-><init>(I)V

    iput-object p1, p0, Lkjt;->e:Lkgd;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lkjt;->a:Lkjz;

    iget v0, v0, Lkjz;->b:I

    return v0
.end method

.method public final b()Lkaf;
    .locals 1

    iget-object v0, p0, Lkjt;->b:Lkaf;

    return-object v0
.end method

.method public final d(Landroid/view/Surface;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setSurface should never be called on buffered streams."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lkjt;->c:J

    return-wide v0
.end method

.method public final g()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lkjt;->a:Lkjz;

    iget-object v0, v0, Lkjz;->a:Lkpe;

    invoke-interface {v0}, Lkpe;->e()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lkfm;
    .locals 1

    sget-object v0, Lkfm;->a:Lkfm;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lkjt;->h:Lkfl;

    iget-boolean v0, v0, Lkfl;->j:Z

    return v0
.end method
