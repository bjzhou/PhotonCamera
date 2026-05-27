.class public final Lgs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lhj;


# instance fields
.field a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field c:Lgw;

.field public d:Landroid/support/v7/view/menu/ExpandedMenuView;

.field public e:Lhi;

.field public f:Lgr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgs;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lgs;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lgs;->f:Lgr;

    if-nez v0, :cond_0

    new-instance v0, Lgr;

    invoke-direct {v0, p0}, Lgr;-><init>(Lgs;)V

    iput-object v0, p0, Lgs;->f:Lgr;

    :cond_0
    iget-object v0, p0, Lgs;->f:Lgr;

    return-object v0
.end method

.method public final b(Landroid/content/Context;Lgw;)V
    .locals 1

    iget-object v0, p0, Lgs;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgs;->a:Landroid/content/Context;

    iget-object v0, p0, Lgs;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lgs;->b:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Lgs;->c:Lgw;

    iget-object p1, p0, Lgs;->f:Lgr;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lgr;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final c(Lgw;Z)V
    .locals 1

    iget-object v0, p0, Lgs;->e:Lhi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lhi;->a(Lgw;Z)V

    :cond_0
    return-void
.end method

.method public final d(Lhi;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f(Lhq;)Z
    .locals 5

    invoke-virtual {p1}, Lgw;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lgx;

    invoke-direct {v0, p1}, Lgx;-><init>(Lgw;)V

    iget-object v1, v0, Lgx;->a:Lgw;

    new-instance v2, Lef;

    iget-object v3, v1, Lgw;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lef;-><init>(Landroid/content/Context;)V

    new-instance v3, Lgs;

    invoke-virtual {v2}, Lef;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lgs;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lgx;->c:Lgs;

    iget-object v3, v0, Lgx;->c:Lgs;

    iput-object v0, v3, Lgs;->e:Lhi;

    iget-object v4, v0, Lgx;->a:Lgw;

    invoke-virtual {v4, v3}, Lgw;->g(Lhj;)V

    iget-object v3, v0, Lgx;->c:Lgs;

    invoke-virtual {v3}, Lgs;->a()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v4, v2, Lef;->a:Leb;

    iput-object v3, v4, Leb;->o:Landroid/widget/ListAdapter;

    iput-object v0, v4, Leb;->p:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, v1, Lgw;->g:Landroid/view/View;

    if-eqz v3, :cond_1

    iput-object v3, v4, Leb;->e:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lgw;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lef;->d(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v1, Lgw;->e:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lef;->i(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v2, v0}, Lef;->g(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v2}, Lef;->b()Leg;

    move-result-object v1

    iput-object v1, v0, Lgx;->b:Leg;

    iget-object v1, v0, Lgx;->b:Leg;

    invoke-virtual {v1, v0}, Leg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Lgx;->b:Leg;

    invoke-virtual {v1}, Leg;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Lgx;->b:Leg;

    invoke-virtual {v0}, Leg;->show()V

    iget-object v0, p0, Lgs;->e:Lhi;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lhi;->b(Lgw;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final g(Lgy;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final h(Lgy;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lgs;->f:Lgr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgr;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lgs;->c:Lgw;

    iget-object p2, p0, Lgs;->f:Lgr;

    invoke-virtual {p2, p3}, Lgr;->a(I)Lgy;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lgw;->A(Landroid/view/MenuItem;Lhj;I)Z

    return-void
.end method
