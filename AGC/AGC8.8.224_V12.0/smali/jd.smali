.class final Ljd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lji;


# instance fields
.field a:Leg;

.field final synthetic b:Ljj;

.field private c:Landroid/widget/ListAdapter;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljj;)V
    .locals 0

    iput-object p1, p0, Ljd;->b:Ljj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Ljd;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final e(Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Ljd;->c:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final g(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final h(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Ljd;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public final j(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Ljd;->a:Leg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lff;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljd;->a:Leg;

    :cond_0
    return-void
.end method

.method public final l(II)V
    .locals 4

    iget-object v0, p0, Ljd;->c:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lef;

    iget-object v1, p0, Ljd;->b:Ljj;

    iget-object v1, v1, Ljj;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lef;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ljd;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lef;->i(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Ljd;->c:Landroid/widget/ListAdapter;

    iget-object v2, p0, Ljd;->b:Ljj;

    invoke-virtual {v2}, Ljj;->getSelectedItemPosition()I

    move-result v2

    iget-object v3, v0, Lef;->a:Leb;

    iput-object v1, v3, Leb;->o:Landroid/widget/ListAdapter;

    iput-object p0, v3, Leb;->p:Landroid/content/DialogInterface$OnClickListener;

    iput v2, v3, Leb;->v:I

    const/4 v1, 0x1

    iput-boolean v1, v3, Leb;->u:Z

    invoke-virtual {v0}, Lef;->b()Leg;

    move-result-object v0

    iput-object v0, p0, Ljd;->a:Leg;

    iget-object v0, v0, Leg;->a:Lee;

    iget-object v0, v0, Lee;->f:Landroid/widget/ListView;

    invoke-static {v0, p1}, Ljb;->d(Landroid/view/View;I)V

    invoke-static {v0, p2}, Ljb;->c(Landroid/view/View;I)V

    iget-object p1, p0, Ljd;->a:Leg;

    invoke-virtual {p1}, Leg;->show()V

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Ljd;->b:Ljj;

    invoke-virtual {p1, p2}, Ljj;->setSelection(I)V

    iget-object p1, p0, Ljd;->b:Ljj;

    invoke-virtual {p1}, Ljj;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljd;->b:Ljj;

    iget-object v0, p0, Ljd;->c:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Ljj;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    invoke-virtual {p0}, Ljd;->k()V

    return-void
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Ljd;->a:Leg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leg;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
