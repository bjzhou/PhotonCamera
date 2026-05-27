.class public Lff;
.super Lpm;


# instance fields
.field private a:Lel;

.field private final b:Laen;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Lff;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lpm;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lfe;

    invoke-direct {v0, p0}, Lfe;-><init>(Lff;)V

    iput-object v0, p0, Lff;->b:Laen;

    invoke-virtual {p0}, Lff;->b()Lel;

    move-result-object v0

    invoke-static {p1, p2}, Lff;->a(Landroid/content/Context;I)I

    move-result p1

    move-object p2, v0

    check-cast p2, Lfd;

    iput p1, p2, Lfd;->F:I

    invoke-virtual {v0}, Lel;->o()V

    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f040220

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lff;->b()Lel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lel;->d(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()Lel;
    .locals 3

    iget-object v0, p0, Lff;->a:Lel;

    if-nez v0, :cond_0

    sget v0, Lel;->b:I

    new-instance v0, Lfd;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lfd;-><init>(Landroid/content/Context;Landroid/view/Window;Ljava/lang/Object;)V

    iput-object v0, p0, Lff;->a:Lel;

    :cond_0
    iget-object v0, p0, Lff;->a:Lel;

    return-object v0
.end method

.method final c(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lpm;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lff;->b()Lel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lel;->p(I)V

    return-void
.end method

.method public final dismiss()V
    .locals 1

    invoke-super {p0}, Lpm;->dismiss()V

    invoke-virtual {p0}, Lff;->b()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->g()V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lff;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Lff;->b:Laen;

    invoke-static {v0, p1}, Labg;->k(Laen;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lff;->b()Lel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lel;->c(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lff;->b()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->f()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lff;->b()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->e()V

    invoke-super {p0, p1}, Lpm;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lff;->b()Lel;

    move-result-object p1

    invoke-virtual {p1}, Lel;->o()V

    return-void
.end method

.method protected final onStop()V
    .locals 1

    invoke-super {p0}, Lpm;->onStop()V

    invoke-virtual {p0}, Lff;->b()Lel;

    move-result-object v0

    invoke-virtual {v0}, Lel;->h()V

    return-void
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Lff;->b()Lel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lel;->j(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lff;->b()Lel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lel;->k(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lff;->b()Lel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lel;->l(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    invoke-super {p0, p1}, Lpm;->setTitle(I)V

    invoke-virtual {p0}, Lff;->b()Lel;

    move-result-object v0

    invoke-virtual {p0}, Lff;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lel;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Lpm;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lff;->b()Lel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lel;->m(Ljava/lang/CharSequence;)V

    return-void
.end method
