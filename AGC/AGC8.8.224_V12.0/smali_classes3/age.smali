.class Lage;
.super Lagg;


# instance fields
.field final a:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lagg;-><init>()V

    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Lage;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lago;)V
    .locals 1

    invoke-direct {p0, p1}, Lagg;-><init>(Lago;)V

    invoke-virtual {p1}, Lago;->e()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Lage;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public a()Lago;
    .locals 3

    iget-object v0, p0, Lage;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lago;->m(Landroid/view/WindowInsets;)Lago;

    move-result-object v0

    iget-object v1, v0, Lago;->b:Lagm;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lagm;->f([Lacr;)V

    return-object v0
.end method

.method public b(Lacr;)V
    .locals 1

    iget-object v0, p0, Lage;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lacr;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public c(Lacr;)V
    .locals 1

    iget-object v0, p0, Lage;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lacr;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
