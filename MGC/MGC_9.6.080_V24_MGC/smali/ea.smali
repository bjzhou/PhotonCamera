.class final Lea;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfa;


# instance fields
.field final synthetic a:Lej;

.field private final b:Lfa;


# direct methods
.method public constructor <init>(Lej;Lfa;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lea;->a:Lej;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lea;->b:Lfa;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lfb;)V
    .locals 2

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lea;->a:Lej;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Lfd;->e(Lfb;)Landroid/view/ActionMode;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Lfdn;->T(Ldwk;)V

    :goto_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lea;->a:Lej;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_6
    goto/32 :goto_2c

    nop

    nop

    :goto_7
    invoke-direct {v0, p0}, Ldz;-><init>(Lea;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p1, Lej;->J:Lfdn;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    nop

    :goto_a
    invoke-virtual {p0}, Lej;->E()V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lea;->a:Lej;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Ldvu;->l(Landroid/view/View;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lea;->a:Lej;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p1, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    iget-object v0, v0, Lej;->q:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Lfd;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, v0, Lfd;->a:Landroid/view/ActionMode$Callback;

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

    :goto_13
    iput-object v0, p1, Lej;->J:Lfdn;

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

    nop

    nop

    :goto_14
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_15
    goto/32 :goto_5

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lej;->A()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    :goto_18
    iput-object v0, p1, Lej;->n:Lfb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p1, Lej;->t:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p1, Lej;->i:Landroid/view/Window;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0}, Ldwd;->l(Landroid/view/View;)Lfdn;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1e
    iget-object v0, p1, Lej;->p:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lea;->b:Lfa;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lea;->a:Lej;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Lea;->a:Lej;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_23
    if-nez v0, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_24
    invoke-interface {v1, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    goto/32 :goto_d

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_26
    iget-object v0, p1, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lea;->a:Lej;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1}, Lfdn;->R(F)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2e
    new-instance v0, Ldz;

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final b(Lfb;Landroid/view/MenuItem;)Z
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lfd;

    nop

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

    :goto_3
    const v1, 0x3

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

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lge;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lfd;->a:Landroid/view/ActionMode$Callback;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1, p2}, Lge;-><init>(Landroid/content/Context;Ldug;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    const v0, 0x14

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lfd;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Lfd;->e(Lfb;)Landroid/view/ActionMode;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    iget-object p0, p0, Lea;->b:Lfa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final c(Lfb;Landroid/view/Menu;)Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lfd;->e(Lfb;)Landroid/view/ActionMode;

    move-result-object p1

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
    iget-object v0, p0, Lfd;->a:Landroid/view/ActionMode$Callback;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2}, Lfd;->f(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lfd;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lea;->b:Lfa;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, p1, p0}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final d(Lfb;Landroid/view/Menu;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lfd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfd;->a:Landroid/view/ActionMode$Callback;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lfd;->e(Lfb;)Landroid/view/ActionMode;

    move-result-object p1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    iget-object v0, p0, Lea;->a:Lej;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iget-object v0, v0, Lej;->t:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, p1, p0}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p2}, Lfd;->f(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    invoke-static {v0}, Ldvu;->l(Landroid/view/View;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lea;->b:Lfa;

    nop

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
