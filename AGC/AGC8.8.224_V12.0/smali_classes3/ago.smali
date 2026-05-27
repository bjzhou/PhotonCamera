.class public final Lago;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lago;


# instance fields
.field public final b:Lagm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lagl;->c:Lago;

    sput-object v0, Lago;->a:Lago;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lagm;

    invoke-direct {v0, p0}, Lagm;-><init>(Lago;)V

    iput-object v0, p0, Lago;->b:Lagm;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lagl;

    invoke-direct {v0, p0, p1}, Lagl;-><init>(Lago;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lago;->b:Lagm;

    return-void
.end method

.method static h(Lacr;IIII)Lacr;
    .locals 5

    iget v0, p0, Lacr;->b:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lacr;->c:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lacr;->d:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lacr;->e:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lacr;->c(IIII)Lacr;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/view/WindowInsets;)Lago;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lago;->n(Landroid/view/WindowInsets;Landroid/view/View;)Lago;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/view/WindowInsets;Landroid/view/View;)Lago;
    .locals 1

    new-instance v0, Lago;

    invoke-static {p0}, Labf;->c(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lago;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lafe;->e(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lafi;->b(Landroid/view/View;)Lago;

    move-result-object p0

    invoke-virtual {v0, p0}, Lago;->p(Lago;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lago;->o(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lago;->b:Lagm;

    invoke-virtual {v0}, Lagm;->c()Lacr;

    move-result-object v0

    iget v0, v0, Lacr;->e:I

    return v0
.end method

.method public final b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lago;->b:Lagm;

    invoke-virtual {v0}, Lagm;->c()Lacr;

    move-result-object v0

    iget v0, v0, Lacr;->b:I

    return v0
.end method

.method public final c()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lago;->b:Lagm;

    invoke-virtual {v0}, Lagm;->c()Lacr;

    move-result-object v0

    iget v0, v0, Lacr;->d:I

    return v0
.end method

.method public final d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lago;->b:Lagm;

    invoke-virtual {v0}, Lagm;->c()Lacr;

    move-result-object v0

    iget v0, v0, Lacr;->c:I

    return v0
.end method

.method public final e()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lago;->b:Lagm;

    instance-of v1, v0, Lagh;

    if-eqz v1, :cond_0

    check-cast v0, Lagh;

    iget-object v0, v0, Lagh;->a:Landroid/view/WindowInsets;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lago;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lago;

    iget-object v0, p0, Lago;->b:Lagm;

    iget-object p1, p1, Lago;->b:Lagm;

    invoke-static {v0, p1}, Laeb;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(I)Lacr;
    .locals 1

    iget-object v0, p0, Lago;->b:Lagm;

    invoke-virtual {v0, p1}, Lagm;->a(I)Lacr;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lacr;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lago;->b:Lagm;

    invoke-virtual {v0}, Lagm;->j()Lacr;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lago;->b:Lagm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lagm;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Lago;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lago;->b:Lagm;

    invoke-virtual {v0}, Lagm;->o()Lago;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lago;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lago;->b:Lagm;

    invoke-virtual {v0}, Lagm;->k()Lago;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lago;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lago;->b:Lagm;

    invoke-virtual {v0}, Lagm;->l()Lago;

    move-result-object v0

    return-object v0
.end method

.method public final l(IIII)Lago;
    .locals 1

    iget-object v0, p0, Lago;->b:Lagm;

    invoke-virtual {v0, p1, p2, p3, p4}, Lagm;->d(IIII)Lago;

    move-result-object p1

    return-object p1
.end method

.method final o(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lago;->b:Lagm;

    invoke-virtual {v0, p1}, Lagm;->e(Landroid/view/View;)V

    return-void
.end method

.method final p(Lago;)V
    .locals 1

    iget-object v0, p0, Lago;->b:Lagm;

    invoke-virtual {v0, p1}, Lagm;->h(Lago;)V

    return-void
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, Lago;->b:Lagm;

    invoke-virtual {v0}, Lagm;->m()Z

    move-result v0

    return v0
.end method
