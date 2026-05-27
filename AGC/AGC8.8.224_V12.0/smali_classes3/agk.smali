.class Lagk;
.super Lagj;


# instance fields
.field private c:Lacr;

.field private f:Lacr;

.field private g:Lacr;


# direct methods
.method public constructor <init>(Lago;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lagj;-><init>(Lago;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lagk;->c:Lacr;

    iput-object p1, p0, Lagk;->f:Lacr;

    iput-object p1, p0, Lagk;->g:Lacr;

    return-void
.end method


# virtual methods
.method public d(IIII)Lago;
    .locals 1

    iget-object v0, p0, Lagk;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lago;->m(Landroid/view/WindowInsets;)Lago;

    move-result-object p1

    return-object p1
.end method

.method public p()Lacr;
    .locals 1

    iget-object v0, p0, Lagk;->f:Lacr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lagk;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lacr;->d(Landroid/graphics/Insets;)Lacr;

    move-result-object v0

    iput-object v0, p0, Lagk;->f:Lacr;

    :cond_0
    iget-object v0, p0, Lagk;->f:Lacr;

    return-object v0
.end method

.method public q()Lacr;
    .locals 1

    iget-object v0, p0, Lagk;->c:Lacr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lagk;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lacr;->d(Landroid/graphics/Insets;)Lacr;

    move-result-object v0

    iput-object v0, p0, Lagk;->c:Lacr;

    :cond_0
    iget-object v0, p0, Lagk;->c:Lacr;

    return-object v0
.end method

.method public r()Lacr;
    .locals 1

    iget-object v0, p0, Lagk;->g:Lacr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lagk;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lacr;->d(Landroid/graphics/Insets;)Lacr;

    move-result-object v0

    iput-object v0, p0, Lagk;->g:Lacr;

    :cond_0
    iget-object v0, p0, Lagk;->g:Lacr;

    return-object v0
.end method
