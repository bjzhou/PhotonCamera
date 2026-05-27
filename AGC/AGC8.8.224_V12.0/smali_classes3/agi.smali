.class Lagi;
.super Lagh;


# instance fields
.field private c:Lacr;


# direct methods
.method public constructor <init>(Lago;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lagh;-><init>(Lago;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lagi;->c:Lacr;

    return-void
.end method


# virtual methods
.method public final j()Lacr;
    .locals 4

    iget-object v0, p0, Lagi;->c:Lacr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lagi;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Lagi;->a:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Lagi;->a:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Lagi;->a:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lacr;->c(IIII)Lacr;

    move-result-object v0

    iput-object v0, p0, Lagi;->c:Lacr;

    :cond_0
    iget-object v0, p0, Lagi;->c:Lacr;

    return-object v0
.end method

.method public k()Lago;
    .locals 1

    iget-object v0, p0, Lagi;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lago;->m(Landroid/view/WindowInsets;)Lago;

    move-result-object v0

    return-object v0
.end method

.method public l()Lago;
    .locals 1

    iget-object v0, p0, Lagi;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lago;->m(Landroid/view/WindowInsets;)Lago;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lagi;->a:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method
