.class final Lekc;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"

# interfaces
.implements Lejm;


# instance fields
.field a:Z

.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:Landroid/view/ViewGroup;

.field private final e:Z

.field private f:Z


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(Z)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Lekc;->e:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object v0, p0, Lekc;->d:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, p0, Lekc;->f:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lekc;->f:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

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
.end method

.method private final 19e596a3e324281407eb5c11093c0152m()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lekc;->d:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    sget v2, Lekb;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    :goto_b
    const v0, 0x1e

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lekc;->b:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_13
    invoke-direct {p0, v0}, Lekc;->1478a1c7833aac5e360e0ba4b0c0c568m(Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-boolean v0, p0, Lekc;->a:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Lekc;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lekc;->b:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Lekc;->1478a1c7833aac5e360e0ba4b0c0c568m(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lekc;->d:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Lekc;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    check-cast p1, Landroid/view/ViewGroup;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput p2, p0, Lekc;->c:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    iput-boolean v0, p0, Lekc;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a(Lejp;)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final b(Lejp;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0}, Lejp;->E(Lejm;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public final c()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lekc;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1b

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setTransitionVisibility(I)V

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lekc;->b:Landroid/view/View;

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

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Lekc;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v0}, Lekc;->1478a1c7833aac5e360e0ba4b0c0c568m(Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget v1, Lekb;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

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
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lekc;->b:Landroid/view/View;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setTransitionVisibility(I)V

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget v0, Lekb;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Lekc;->1478a1c7833aac5e360e0ba4b0c0c568m(Z)V

    goto/32 :goto_8

    nop

    nop

    :goto_8
    iget-boolean v0, p0, Lekc;->a:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop
.end method

.method public final e(Lejp;)V
    .locals 0

    goto/32 :goto_0

    nop

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
.end method

.method public final synthetic f(Lejp;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {p0, p1}, Ldwb;->j(Lejm;Lejp;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final synthetic g(Lejp;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ldwb;->k(Lejm;Lejp;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
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

    :goto_1
    iput-boolean p1, p0, Lekc;->a:Z

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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
    invoke-direct {p0}, Lekc;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lekc;->19e596a3e324281407eb5c11093c0152m()V

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionVisibility(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_3
    iget-object p0, p0, Lekc;->d:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    sget p2, Lekb;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lekc;->b:Landroid/view/View;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop
.end method
