.class public final Lmzz;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field public c:I

.field public d:J

.field public e:Lmzz;

.field public f:Lmzz;

.field public g:Lmzz;

.field public h:Lmzz;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmzz;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lmzz;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->e(Z)V

    iput-object p1, p0, Lmzz;->a:Ljava/lang/Object;

    iput p2, p0, Lmzz;->b:I

    int-to-long p1, p2

    iput-wide p1, p0, Lmzz;->d:J

    iput v0, p0, Lmzz;->c:I

    iput v0, p0, Lmzz;->i:I

    const/4 p1, 0x0

    iput-object p1, p0, Lmzz;->e:Lmzz;

    iput-object p1, p0, Lmzz;->f:Lmzz;

    return-void
.end method

.method private final j()I
    .locals 2

    iget-object v0, p0, Lmzz;->e:Lmzz;

    invoke-static {v0}, Lmzz;->k(Lmzz;)I

    move-result v0

    iget-object v1, p0, Lmzz;->f:Lmzz;

    invoke-static {v1}, Lmzz;->k(Lmzz;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static k(Lmzz;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lmzz;->i:I

    return p0
.end method

.method private static l(Lmzz;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lmzz;->d:J

    return-wide v0
.end method

.method private final m()Lmzz;
    .locals 6

    iget v0, p0, Lmzz;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lmzz;->b:I

    invoke-virtual {p0}, Lmzz;->e()Lmzz;

    move-result-object v1

    invoke-virtual {p0}, Lmzz;->g()Lmzz;

    move-result-object v2

    invoke-static {v1, v2}, Lnab;->v(Lmzz;Lmzz;)V

    iget-object v1, p0, Lmzz;->e:Lmzz;

    if-nez v1, :cond_0

    iget-object v0, p0, Lmzz;->f:Lmzz;

    return-object v0

    :cond_0
    iget-object v2, p0, Lmzz;->f:Lmzz;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    iget v1, v1, Lmzz;->i:I

    iget v2, v2, Lmzz;->i:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lmzz;->e()Lmzz;

    move-result-object v1

    iget-object v2, p0, Lmzz;->e:Lmzz;

    invoke-direct {v2, v1}, Lmzz;->o(Lmzz;)Lmzz;

    move-result-object v2

    iput-object v2, v1, Lmzz;->e:Lmzz;

    iget-object v2, p0, Lmzz;->f:Lmzz;

    iput-object v2, v1, Lmzz;->f:Lmzz;

    iget v2, p0, Lmzz;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lmzz;->c:I

    iget-wide v2, p0, Lmzz;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lmzz;->d:J

    invoke-direct {v1}, Lmzz;->n()Lmzz;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lmzz;->g()Lmzz;

    move-result-object v1

    iget-object v2, p0, Lmzz;->f:Lmzz;

    invoke-direct {v2, v1}, Lmzz;->p(Lmzz;)Lmzz;

    move-result-object v2

    iput-object v2, v1, Lmzz;->f:Lmzz;

    iget-object v2, p0, Lmzz;->e:Lmzz;

    iput-object v2, v1, Lmzz;->e:Lmzz;

    iget v2, p0, Lmzz;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lmzz;->c:I

    iget-wide v2, p0, Lmzz;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lmzz;->d:J

    invoke-direct {v1}, Lmzz;->n()Lmzz;

    move-result-object v0

    return-object v0
.end method

.method private final n()Lmzz;
    .locals 1

    invoke-direct {p0}, Lmzz;->j()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Lmzz;->t()V

    return-object p0

    :sswitch_0
    iget-object v0, p0, Lmzz;->e:Lmzz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Lmzz;->j()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lmzz;->e:Lmzz;

    invoke-direct {v0}, Lmzz;->q()Lmzz;

    move-result-object v0

    iput-object v0, p0, Lmzz;->e:Lmzz;

    :cond_0
    invoke-direct {p0}, Lmzz;->r()Lmzz;

    move-result-object v0

    return-object v0

    :sswitch_1
    iget-object v0, p0, Lmzz;->f:Lmzz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Lmzz;->j()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lmzz;->f:Lmzz;

    invoke-direct {v0}, Lmzz;->r()Lmzz;

    move-result-object v0

    iput-object v0, p0, Lmzz;->f:Lmzz;

    :cond_1
    invoke-direct {p0}, Lmzz;->q()Lmzz;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method private final o(Lmzz;)Lmzz;
    .locals 4

    iget-object v0, p0, Lmzz;->f:Lmzz;

    if-nez v0, :cond_0

    iget-object p1, p0, Lmzz;->e:Lmzz;

    return-object p1

    :cond_0
    invoke-direct {v0, p1}, Lmzz;->o(Lmzz;)Lmzz;

    move-result-object v0

    iput-object v0, p0, Lmzz;->f:Lmzz;

    iget v0, p0, Lmzz;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmzz;->c:I

    iget-wide v0, p0, Lmzz;->d:J

    iget p1, p1, Lmzz;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmzz;->d:J

    invoke-direct {p0}, Lmzz;->n()Lmzz;

    move-result-object p1

    return-object p1
.end method

.method private final p(Lmzz;)Lmzz;
    .locals 4

    iget-object v0, p0, Lmzz;->e:Lmzz;

    if-nez v0, :cond_0

    iget-object p1, p0, Lmzz;->f:Lmzz;

    return-object p1

    :cond_0
    invoke-direct {v0, p1}, Lmzz;->p(Lmzz;)Lmzz;

    move-result-object v0

    iput-object v0, p0, Lmzz;->e:Lmzz;

    iget v0, p0, Lmzz;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmzz;->c:I

    iget-wide v0, p0, Lmzz;->d:J

    iget p1, p1, Lmzz;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmzz;->d:J

    invoke-direct {p0}, Lmzz;->n()Lmzz;

    move-result-object p1

    return-object p1
.end method

.method private final q()Lmzz;
    .locals 3

    iget-object v0, p0, Lmzz;->f:Lmzz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lmzz;->f:Lmzz;

    iget-object v1, v0, Lmzz;->e:Lmzz;

    iput-object v1, p0, Lmzz;->f:Lmzz;

    iput-object p0, v0, Lmzz;->e:Lmzz;

    iget-wide v1, p0, Lmzz;->d:J

    iput-wide v1, v0, Lmzz;->d:J

    iget v1, p0, Lmzz;->c:I

    iput v1, v0, Lmzz;->c:I

    invoke-direct {p0}, Lmzz;->s()V

    invoke-direct {v0}, Lmzz;->t()V

    return-object v0
.end method

.method private final r()Lmzz;
    .locals 3

    iget-object v0, p0, Lmzz;->e:Lmzz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lmzz;->e:Lmzz;

    iget-object v1, v0, Lmzz;->f:Lmzz;

    iput-object v1, p0, Lmzz;->e:Lmzz;

    iput-object p0, v0, Lmzz;->f:Lmzz;

    iget-wide v1, p0, Lmzz;->d:J

    iput-wide v1, v0, Lmzz;->d:J

    iget v1, p0, Lmzz;->c:I

    iput v1, v0, Lmzz;->c:I

    invoke-direct {p0}, Lmzz;->s()V

    invoke-direct {v0}, Lmzz;->t()V

    return-object v0
.end method

.method private final s()V
    .locals 5

    iget-object v0, p0, Lmzz;->e:Lmzz;

    invoke-static {v0}, Lnab;->t(Lmzz;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lmzz;->f:Lmzz;

    invoke-static {v2}, Lnab;->t(Lmzz;)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lmzz;->c:I

    iget v1, p0, Lmzz;->b:I

    int-to-long v3, v1

    invoke-static {v0}, Lmzz;->l(Lmzz;)J

    move-result-wide v0

    add-long/2addr v3, v0

    invoke-static {v2}, Lmzz;->l(Lmzz;)J

    move-result-wide v0

    add-long/2addr v3, v0

    iput-wide v3, p0, Lmzz;->d:J

    invoke-direct {p0}, Lmzz;->t()V

    return-void
.end method

.method private final t()V
    .locals 2

    iget-object v0, p0, Lmzz;->e:Lmzz;

    invoke-static {v0}, Lmzz;->k(Lmzz;)I

    move-result v0

    iget-object v1, p0, Lmzz;->f:Lmzz;

    invoke-static {v1}, Lmzz;->k(Lmzz;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmzz;->i:I

    return-void
.end method


# virtual methods
.method final a(Ljava/util/Comparator;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lmzz;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    iget-object v0, p0, Lmzz;->e:Lmzz;

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lmzz;->a(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    if-lez v0, :cond_3

    iget-object v0, p0, Lmzz;->f:Lmzz;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0, p1, p2}, Lmzz;->a(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_3
    iget p1, p0, Lmzz;->b:I

    return p1
.end method

.method final b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lmzz;
    .locals 6

    iget-object v0, p0, Lmzz;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v0, :cond_3

    iget-object v0, p0, Lmzz;->e:Lmzz;

    if-nez v0, :cond_0

    aput v3, p4, v3

    new-instance p1, Lmzz;

    invoke-direct {p1, p2, p3}, Lmzz;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lmzz;->e:Lmzz;

    invoke-virtual {p0}, Lmzz;->e()Lmzz;

    move-result-object p1

    iget-object p2, p0, Lmzz;->e:Lmzz;

    invoke-static {p1, p2, p0}, Lnab;->w(Lmzz;Lmzz;Lmzz;)V

    iget p1, p0, Lmzz;->i:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmzz;->i:I

    iget p1, p0, Lmzz;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lmzz;->c:I

    iget-wide p1, p0, Lmzz;->d:J

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lmzz;->d:J

    return-object p0

    :cond_0
    iget v1, v0, Lmzz;->i:I

    invoke-virtual {v0, p1, p2, p3, p4}, Lmzz;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lmzz;

    move-result-object p1

    iput-object p1, p0, Lmzz;->e:Lmzz;

    aget p2, p4, v3

    if-nez p2, :cond_1

    iget p2, p0, Lmzz;->c:I

    add-int/2addr p2, v2

    iput p2, p0, Lmzz;->c:I

    :cond_1
    iget-wide v2, p0, Lmzz;->d:J

    int-to-long p2, p3

    add-long/2addr v2, p2

    iput-wide v2, p0, Lmzz;->d:J

    iget p1, p1, Lmzz;->i:I

    if-ne p1, v1, :cond_2

    return-object p0

    :cond_2
    invoke-direct {p0}, Lmzz;->n()Lmzz;

    move-result-object p1

    return-object p1

    :cond_3
    if-lez v0, :cond_7

    iget-object v0, p0, Lmzz;->f:Lmzz;

    if-nez v0, :cond_4

    aput v3, p4, v3

    new-instance p1, Lmzz;

    invoke-direct {p1, p2, p3}, Lmzz;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lmzz;->f:Lmzz;

    invoke-virtual {p0}, Lmzz;->g()Lmzz;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lnab;->w(Lmzz;Lmzz;Lmzz;)V

    iget p1, p0, Lmzz;->i:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmzz;->i:I

    iget p1, p0, Lmzz;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lmzz;->c:I

    iget-wide p1, p0, Lmzz;->d:J

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lmzz;->d:J

    return-object p0

    :cond_4
    iget v1, v0, Lmzz;->i:I

    invoke-virtual {v0, p1, p2, p3, p4}, Lmzz;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lmzz;

    move-result-object p1

    iput-object p1, p0, Lmzz;->f:Lmzz;

    aget p2, p4, v3

    if-nez p2, :cond_5

    iget p2, p0, Lmzz;->c:I

    add-int/2addr p2, v2

    iput p2, p0, Lmzz;->c:I

    :cond_5
    iget-wide v2, p0, Lmzz;->d:J

    int-to-long p2, p3

    add-long/2addr v2, p2

    iput-wide v2, p0, Lmzz;->d:J

    iget p1, p1, Lmzz;->i:I

    if-ne p1, v1, :cond_6

    return-object p0

    :cond_6
    invoke-direct {p0}, Lmzz;->n()Lmzz;

    move-result-object p1

    return-object p1

    :cond_7
    iget p1, p0, Lmzz;->b:I

    aput p1, p4, v3

    int-to-long p1, p1

    int-to-long v0, p3

    add-long/2addr p1, v0

    const-wide/32 v4, 0x7fffffff

    cmp-long p4, p1, v4

    if-gtz p4, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lmoz;->e(Z)V

    iget p1, p0, Lmzz;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lmzz;->b:I

    iget-wide p1, p0, Lmzz;->d:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lmzz;->d:J

    return-object p0
.end method

.method public final c(Ljava/util/Comparator;Ljava/lang/Object;)Lmzz;
    .locals 1

    iget-object v0, p0, Lmzz;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lmzz;->e:Lmzz;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lmzz;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lmzz;

    move-result-object p1

    invoke-static {p1, p0}, Lmoz;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmzz;

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    return-object p0

    :cond_2
    iget-object v0, p0, Lmzz;->f:Lmzz;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lmzz;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lmzz;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/util/Comparator;Ljava/lang/Object;)Lmzz;
    .locals 1

    iget-object v0, p0, Lmzz;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lmzz;->f:Lmzz;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lmzz;->d(Ljava/util/Comparator;Ljava/lang/Object;)Lmzz;

    move-result-object p1

    invoke-static {p1, p0}, Lmoz;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmzz;

    return-object p1

    :cond_1
    if-nez v0, :cond_2

    return-object p0

    :cond_2
    iget-object v0, p0, Lmzz;->e:Lmzz;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    invoke-virtual {v0, p1, p2}, Lmzz;->d(Ljava/util/Comparator;Ljava/lang/Object;)Lmzz;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lmzz;
    .locals 1

    iget-object v0, p0, Lmzz;->g:Lmzz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method final f(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lmzz;
    .locals 2

    iget-object v0, p0, Lmzz;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_4

    iget-object v0, p0, Lmzz;->e:Lmzz;

    if-nez v0, :cond_0

    aput v1, p4, v1

    return-object p0

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lmzz;->f(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lmzz;

    move-result-object p1

    iput-object p1, p0, Lmzz;->e:Lmzz;

    aget p1, p4, v1

    if-lez p1, :cond_2

    if-lt p3, p1, :cond_1

    iget p2, p0, Lmzz;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lmzz;->c:I

    iget-wide p2, p0, Lmzz;->d:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lmzz;->d:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lmzz;->d:J

    int-to-long p2, p3

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lmzz;->d:J

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    return-object p0

    :cond_3
    invoke-direct {p0}, Lmzz;->n()Lmzz;

    move-result-object p1

    return-object p1

    :cond_4
    if-lez v0, :cond_8

    iget-object v0, p0, Lmzz;->f:Lmzz;

    if-nez v0, :cond_5

    aput v1, p4, v1

    return-object p0

    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lmzz;->f(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lmzz;

    move-result-object p1

    iput-object p1, p0, Lmzz;->f:Lmzz;

    aget p1, p4, v1

    if-lez p1, :cond_7

    if-lt p3, p1, :cond_6

    iget p2, p0, Lmzz;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lmzz;->c:I

    iget-wide p2, p0, Lmzz;->d:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lmzz;->d:J

    goto :goto_1

    :cond_6
    iget-wide p1, p0, Lmzz;->d:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lmzz;->d:J

    :cond_7
    :goto_1
    invoke-direct {p0}, Lmzz;->n()Lmzz;

    move-result-object p1

    return-object p1

    :cond_8
    iget p1, p0, Lmzz;->b:I

    aput p1, p4, v1

    if-lt p3, p1, :cond_9

    invoke-direct {p0}, Lmzz;->m()Lmzz;

    move-result-object p1

    return-object p1

    :cond_9
    sub-int/2addr p1, p3

    iput p1, p0, Lmzz;->b:I

    iget-wide p1, p0, Lmzz;->d:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lmzz;->d:J

    return-object p0
.end method

.method public final g()Lmzz;
    .locals 1

    iget-object v0, p0, Lmzz;->h:Lmzz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method final h(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lmzz;
    .locals 2

    iget-object v0, p0, Lmzz;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_3

    iget-object v0, p0, Lmzz;->e:Lmzz;

    if-nez v0, :cond_0

    aput v1, p4, v1

    return-object p0

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lmzz;->h(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lmzz;

    move-result-object p1

    iput-object p1, p0, Lmzz;->e:Lmzz;

    aget p1, p4, v1

    if-ne p1, p3, :cond_2

    if-eqz p1, :cond_1

    iget p2, p0, Lmzz;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lmzz;->c:I

    :cond_1
    iget-wide p2, p0, Lmzz;->d:J

    neg-int p1, p1

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lmzz;->d:J

    :cond_2
    invoke-direct {p0}, Lmzz;->n()Lmzz;

    move-result-object p1

    return-object p1

    :cond_3
    if-lez v0, :cond_7

    iget-object v0, p0, Lmzz;->f:Lmzz;

    if-nez v0, :cond_4

    aput v1, p4, v1

    return-object p0

    :cond_4
    invoke-virtual {v0, p1, p2, p3, p4}, Lmzz;->h(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lmzz;

    move-result-object p1

    iput-object p1, p0, Lmzz;->f:Lmzz;

    aget p1, p4, v1

    if-ne p1, p3, :cond_6

    if-eqz p1, :cond_5

    iget p2, p0, Lmzz;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lmzz;->c:I

    :cond_5
    iget-wide p2, p0, Lmzz;->d:J

    neg-int p1, p1

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lmzz;->d:J

    :cond_6
    invoke-direct {p0}, Lmzz;->n()Lmzz;

    move-result-object p1

    return-object p1

    :cond_7
    iget p1, p0, Lmzz;->b:I

    aput p1, p4, v1

    if-ne p3, p1, :cond_8

    invoke-direct {p0}, Lmzz;->m()Lmzz;

    move-result-object p1

    return-object p1

    :cond_8
    return-object p0
.end method

.method final i(Ljava/util/Comparator;Ljava/lang/Object;[I)Lmzz;
    .locals 2

    iget-object v0, p0, Lmzz;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_2

    iget-object v0, p0, Lmzz;->e:Lmzz;

    if-nez v0, :cond_0

    aput v1, p3, v1

    return-object p0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lmzz;->i(Ljava/util/Comparator;Ljava/lang/Object;[I)Lmzz;

    move-result-object p1

    iput-object p1, p0, Lmzz;->e:Lmzz;

    aget p1, p3, v1

    if-eqz p1, :cond_1

    iget p2, p0, Lmzz;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lmzz;->c:I

    :cond_1
    iget-wide p2, p0, Lmzz;->d:J

    neg-int p1, p1

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lmzz;->d:J

    invoke-direct {p0}, Lmzz;->n()Lmzz;

    move-result-object p1

    return-object p1

    :cond_2
    if-lez v0, :cond_5

    iget-object v0, p0, Lmzz;->f:Lmzz;

    if-nez v0, :cond_3

    aput v1, p3, v1

    return-object p0

    :cond_3
    invoke-virtual {v0, p1, p2, p3}, Lmzz;->i(Ljava/util/Comparator;Ljava/lang/Object;[I)Lmzz;

    move-result-object p1

    iput-object p1, p0, Lmzz;->f:Lmzz;

    aget p1, p3, v1

    if-eqz p1, :cond_4

    iget p2, p0, Lmzz;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lmzz;->c:I

    :cond_4
    iget-wide p2, p0, Lmzz;->d:J

    neg-int p1, p1

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lmzz;->d:J

    invoke-direct {p0}, Lmzz;->n()Lmzz;

    move-result-object p1

    return-object p1

    :cond_5
    iget p1, p0, Lmzz;->b:I

    aput p1, p3, v1

    invoke-direct {p0}, Lmzz;->m()Lmzz;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmzz;->a:Ljava/lang/Object;

    iget v1, p0, Lmzz;->b:I

    invoke-static {v0, v1}, Llyh;->o(Ljava/lang/Object;I)Lmya;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
