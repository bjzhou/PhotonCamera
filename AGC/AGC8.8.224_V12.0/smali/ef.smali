.class public Lef;
.super Ljava/lang/Object;


# instance fields
.field public final a:Leb;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Leg;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lef;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Leb;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Leg;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Leb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lef;->a:Leb;

    iput p2, p0, Lef;->b:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lef;->a:Leb;

    iget-object v0, v0, Leb;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b()Leg;
    .locals 14

    new-instance v0, Leg;

    iget-object v1, p0, Lef;->a:Leb;

    iget-object v1, v1, Leb;->a:Landroid/content/Context;

    iget v2, p0, Lef;->b:I

    invoke-direct {v0, v1, v2}, Leg;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lef;->a:Leb;

    iget-object v2, v0, Leg;->a:Lee;

    iget-object v3, v1, Leb;->e:Landroid/view/View;

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    iput-object v3, v2, Lee;->x:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v3, v1, Leb;->d:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Lee;->a(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v3, v1, Leb;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iput-object v3, v2, Lee;->t:Landroid/graphics/drawable/Drawable;

    iput v9, v2, Lee;->s:I

    iget-object v4, v2, Lee;->u:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v2, Lee;->u:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object v3, v1, Leb;->f:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    iput-object v3, v2, Lee;->e:Ljava/lang/CharSequence;

    iget-object v4, v2, Lee;->w:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v3, v1, Leb;->g:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    iget-object v4, v1, Leb;->h:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, -0x1

    invoke-virtual {v2, v5, v3, v4}, Lee;->e(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_4
    iget-object v3, v1, Leb;->i:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    iget-object v4, v1, Leb;->j:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, -0x2

    invoke-virtual {v2, v5, v3, v4}, Lee;->e(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_5
    iget-object v3, v1, Leb;->n:[Ljava/lang/CharSequence;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v3, :cond_6

    iget-object v3, v1, Leb;->o:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_e

    :cond_6
    iget-object v3, v1, Leb;->b:Landroid/view/LayoutInflater;

    iget v4, v2, Lee;->C:I

    invoke-virtual {v3, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/support/v7/app/AlertController$RecycleListView;

    iget-boolean v3, v1, Leb;->t:Z

    if-eqz v3, :cond_7

    new-instance v13, Ldz;

    iget-object v5, v1, Leb;->a:Landroid/content/Context;

    iget v6, v2, Lee;->D:I

    iget-object v7, v1, Leb;->n:[Ljava/lang/CharSequence;

    move-object v3, v13

    move-object v4, v1

    move-object v8, v12

    invoke-direct/range {v3 .. v8}, Ldz;-><init>(Leb;Landroid/content/Context;I[Ljava/lang/CharSequence;Landroid/support/v7/app/AlertController$RecycleListView;)V

    goto :goto_2

    :cond_7
    iget-boolean v3, v1, Leb;->u:Z

    if-eqz v3, :cond_8

    iget v3, v2, Lee;->E:I

    goto :goto_1

    :cond_8
    iget v3, v2, Lee;->F:I

    :goto_1
    iget-object v13, v1, Leb;->o:Landroid/widget/ListAdapter;

    if-eqz v13, :cond_9

    goto :goto_2

    :cond_9
    new-instance v13, Led;

    iget-object v4, v1, Leb;->a:Landroid/content/Context;

    iget-object v5, v1, Leb;->n:[Ljava/lang/CharSequence;

    invoke-direct {v13, v4, v3, v5}, Led;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    :goto_2
    iput-object v13, v2, Lee;->y:Landroid/widget/ListAdapter;

    iget v3, v1, Leb;->v:I

    iput v3, v2, Lee;->z:I

    iget-object v3, v1, Leb;->p:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_a

    new-instance v3, Licu;

    invoke-direct {v3, v1, v2, v10}, Licu;-><init>(Leb;Lee;I)V

    invoke-virtual {v12, v3}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_3

    :cond_a
    iget-object v3, v1, Leb;->w:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v3, :cond_b

    new-instance v3, Lea;

    invoke-direct {v3, v1, v12, v2}, Lea;-><init>(Leb;Landroid/support/v7/app/AlertController$RecycleListView;Lee;)V

    invoke-virtual {v12, v3}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_b
    :goto_3
    iget-boolean v3, v1, Leb;->u:Z

    if-eqz v3, :cond_c

    invoke-virtual {v12, v10}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_4

    :cond_c
    iget-boolean v3, v1, Leb;->t:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x2

    invoke-virtual {v12, v3}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    :cond_d
    :goto_4
    iput-object v12, v2, Lee;->f:Landroid/widget/ListView;

    :cond_e
    iget-object v3, v1, Leb;->r:Landroid/view/View;

    if-eqz v3, :cond_f

    iput-object v3, v2, Lee;->g:Landroid/view/View;

    iput v9, v2, Lee;->h:I

    iput-boolean v9, v2, Lee;->i:Z

    goto :goto_5

    :cond_f
    iget v1, v1, Leb;->q:I

    if-eqz v1, :cond_10

    iput-object v11, v2, Lee;->g:Landroid/view/View;

    iput v1, v2, Lee;->h:I

    iput-boolean v9, v2, Lee;->i:Z

    :cond_10
    :goto_5
    iget-object v1, p0, Lef;->a:Leb;

    iget-boolean v1, v1, Leb;->k:Z

    invoke-virtual {v0, v1}, Leg;->setCancelable(Z)V

    iget-object v1, p0, Lef;->a:Leb;

    iget-boolean v1, v1, Leb;->k:Z

    if-eqz v1, :cond_11

    invoke-virtual {v0, v10}, Leg;->setCanceledOnTouchOutside(Z)V

    :cond_11
    invoke-virtual {v0, v11}, Leg;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lef;->a:Leb;

    iget-object v1, v1, Leb;->l:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Leg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lef;->a:Leb;

    iget-object v1, v1, Leb;->m:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Leg;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_12
    return-object v0
.end method

.method public final c()Leg;
    .locals 1

    invoke-virtual {p0}, Lef;->b()Leg;

    move-result-object v0

    invoke-virtual {v0}, Leg;->show()V

    return-object v0
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lef;->a:Leb;

    iput-object p1, v0, Leb;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lef;->a:Leb;

    iput-object p1, v0, Leb;->f:Ljava/lang/CharSequence;

    return-void
.end method

.method public final f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lef;->a:Leb;

    iput-object p1, v0, Leb;->i:Ljava/lang/CharSequence;

    iput-object p2, v0, Leb;->j:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public final g(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 1

    iget-object v0, p0, Lef;->a:Leb;

    iput-object p1, v0, Leb;->m:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public final h(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lef;->a:Leb;

    iput-object p1, v0, Leb;->g:Ljava/lang/CharSequence;

    iput-object p2, v0, Leb;->h:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lef;->a:Leb;

    iput-object p1, v0, Leb;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public final j(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lef;->a:Leb;

    iput-object p1, v0, Leb;->r:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, v0, Leb;->q:I

    return-void
.end method
