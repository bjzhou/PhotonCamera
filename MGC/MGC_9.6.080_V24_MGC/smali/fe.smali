.class public final Lfe;
.super Landroid/view/ActionMode;
.source "PG"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lfb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfb;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lfe;->b:Lfb;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfe;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final finish()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lfb;->f()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lfb;->c()Landroid/view/View;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Lfb;->a()Landroid/view/Menu;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lfe;->b:Lfb;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lgl;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, v1}, Lgl;-><init>(Landroid/content/Context;Lduf;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_a
    iget-object p0, p0, Lfe;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xa

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lfb;->b()Landroid/view/MenuInflater;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lfb;->d()Ljava/lang/CharSequence;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfb;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lfb;->e()Ljava/lang/CharSequence;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop
.end method

.method public final getTitleOptionalHint()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Lfb;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final invalidate()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lfb;->g()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final isTitleOptional()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lfb;->n()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lfb;->h(Landroid/view/View;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final setSubtitle(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lfb;->i(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lfb;->j(Ljava/lang/CharSequence;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfb;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final setTitle(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lfb;->k(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lfb;->l(Ljava/lang/CharSequence;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lfb;->m(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfe;->b:Lfb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
