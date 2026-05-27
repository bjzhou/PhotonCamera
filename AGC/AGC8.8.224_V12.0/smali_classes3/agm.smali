.class Lagm;
.super Ljava/lang/Object;


# static fields
.field static final d:Lago;


# instance fields
.field final e:Lago;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lagf;

    invoke-direct {v0}, Lagf;-><init>()V

    invoke-virtual {v0}, Lagg;->a()Lago;

    move-result-object v0

    invoke-virtual {v0}, Lago;->i()Lago;

    move-result-object v0

    invoke-virtual {v0}, Lago;->j()Lago;

    move-result-object v0

    invoke-virtual {v0}, Lago;->k()Lago;

    move-result-object v0

    sput-object v0, Lagm;->d:Lago;

    return-void
.end method

.method public constructor <init>(Lago;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lagm;->e:Lago;

    return-void
.end method


# virtual methods
.method public a(I)Lacr;
    .locals 0

    sget-object p1, Lacr;->a:Lacr;

    return-object p1
.end method

.method public c()Lacr;
    .locals 1

    sget-object v0, Lacr;->a:Lacr;

    return-object v0
.end method

.method public d(IIII)Lago;
    .locals 0

    sget-object p1, Lagm;->d:Lago;

    return-object p1
.end method

.method public e(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lagm;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lagm;

    invoke-virtual {p0}, Lagm;->i()Z

    move-result v1

    invoke-virtual {p1}, Lagm;->i()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lagm;->m()Z

    move-result v1

    invoke-virtual {p1}, Lagm;->m()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lagm;->c()Lacr;

    move-result-object v1

    invoke-virtual {p1}, Lagm;->c()Lacr;

    move-result-object v3

    invoke-static {v1, v3}, Laeb;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lagm;->j()Lacr;

    move-result-object v1

    invoke-virtual {p1}, Lagm;->j()Lacr;

    move-result-object v3

    invoke-static {v1, v3}, Laeb;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lagm;->n()Lael;

    move-result-object v1

    invoke-virtual {p1}, Lagm;->n()Lael;

    move-result-object p1

    invoke-static {v1, p1}, Laeb;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public f([Lacr;)V
    .locals 0

    return-void
.end method

.method public h(Lago;)V
    .locals 0

    return-void
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lagm;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lagm;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lagm;->c()Lacr;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lagm;->j()Lacr;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    invoke-virtual {p0}, Lagm;->n()Lael;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Laeb;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Lacr;
    .locals 1

    sget-object v0, Lacr;->a:Lacr;

    return-object v0
.end method

.method public k()Lago;
    .locals 1

    iget-object v0, p0, Lagm;->e:Lago;

    return-object v0
.end method

.method public l()Lago;
    .locals 1

    iget-object v0, p0, Lagm;->e:Lago;

    return-object v0
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()Lael;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Lago;
    .locals 1

    iget-object v0, p0, Lagm;->e:Lago;

    return-object v0
.end method

.method public p()Lacr;
    .locals 1

    invoke-virtual {p0}, Lagm;->c()Lacr;

    move-result-object v0

    return-object v0
.end method

.method public q()Lacr;
    .locals 1

    invoke-virtual {p0}, Lagm;->c()Lacr;

    move-result-object v0

    return-object v0
.end method

.method public r()Lacr;
    .locals 1

    invoke-virtual {p0}, Lagm;->c()Lacr;

    move-result-object v0

    return-object v0
.end method
