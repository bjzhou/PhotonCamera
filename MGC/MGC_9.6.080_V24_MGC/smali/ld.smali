.class public Lld;
.super Ldvd;
.source "PG"


# instance fields
.field final a:Landroid/support/v7/widget/RecyclerView;

.field private final b:Llc;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lld;->b:Llc;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ldvd;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lld;->j()Ldvd;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iput-object p1, p0, Lld;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Llc;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p1, Llc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1, p0}, Llc;-><init>(Lld;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lld;->b:Llc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2}, Lkl;->R(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p1, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1, p2}, Ldvd;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lld;->k()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public c(Landroid/view/View;Ldxb;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->e:Lkq;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->N:Lky;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lld;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0, p1, p2}, Lkl;->m(Lkq;Lky;Ldxb;)V

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    invoke-super {p0, p1, p2}, Ldvd;->c(Landroid/view/View;Ldxb;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lkl;->s:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lld;->k()Z

    move-result p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public i(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lld;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p2, p3}, Lkl;->t(ILandroid/os/Bundle;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lld;->k()Z

    move-result p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-super {p0, p1, p2, p3}, Ldvd;->i(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public j()Ldvd;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lld;->b:Llc;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method final k()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lld;->a:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->al()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
