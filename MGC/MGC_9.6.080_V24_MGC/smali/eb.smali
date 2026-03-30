.class public final Leb;
.super Lfk;
.source "PG"


# instance fields
.field public a:Z

.field public b:Z

.field final synthetic c:Lej;

.field public d:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private f:Z


# direct methods
.method public constructor <init>(Lej;Landroid/view/Window$Callback;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Leb;->c:Lej;

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
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p2}, Lfk;-><init>(Landroid/view/Window$Callback;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const v1, 0xa

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    :goto_6
    iput-boolean v1, p0, Leb;->f:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    :try_start_0
    iput-boolean v0, p0, Leb;->f:Z

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v1, p0, Leb;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    nop
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    :goto_1
    const/4 p0, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    :goto_8
    iget-boolean v0, p0, Leb;->a:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lfk;->e:Landroid/view/Window$Callback;

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

    :goto_a
    invoke-virtual {v0, p1}, Lej;->F(Landroid/view/KeyEvent;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    invoke-super {p0, p1}, Lfk;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_11

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    :goto_f
    iget-object v0, p0, Leb;->c:Lej;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    goto/32 :goto_28

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    :goto_1
    goto/32 :goto_14

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Lfk;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, v0, p1}, Ldk;->n(ILandroid/view/KeyEvent;)Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    iput-boolean v1, p0, Leh;->l:Z

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_8
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Leb;->c:Lej;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lej;->A:Leh;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lej;->b()Ldk;

    move-result-object v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    iput-boolean v2, v0, Leh;->k:Z

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return v1

    nop

    nop

    :goto_f
    goto/32 :goto_24

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    goto :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lej;->A:Leh;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    return v2

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    :goto_18
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v0, v2, p1}, Lej;->N(Leh;ILandroid/view/KeyEvent;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0xb

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lej;->A:Leh;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, v0, p1}, Lej;->I(Leh;Landroid/view/KeyEvent;)Z

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_7
    :goto_21
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v2}, Lej;->M(I)Leh;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_23
    invoke-virtual {p0, v0, v3, p1}, Lej;->N(Leh;ILandroid/view/KeyEvent;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_11

    nop

    nop

    :goto_25
    const/4 v2, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_28
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop
.end method

.method public final onContentChanged()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfk;->e:Landroid/view/Window$Callback;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iget-boolean v0, p0, Leb;->f:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Lfk;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    move p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    instance-of p1, p2, Lfx;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_11

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Leb;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lep;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0, p1}, Lfk;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p1, Lep;->c:Lmb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

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

    nop

    :goto_e
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lmb;->a()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Leb;->c:Lej;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    const/16 p2, 0x6c

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

    :goto_3
    invoke-super {p0, p1, p2}, Lfk;->onMenuOpened(ILandroid/view/Menu;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lej;->b()Ldk;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    if-eq p1, p2, :cond_1

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

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Ldk;->d(Z)V

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfk;->e:Landroid/view/Window$Callback;

    nop

    nop

    nop

    goto/32 :goto_5

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

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_4
    iget-boolean p2, p1, Leh;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto/32 :goto_d

    nop

    nop

    :goto_6
    const/16 p2, 0x6c

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Ldk;->d(Z)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lej;->b()Ldk;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    iget-object p0, p0, Leb;->c:Lej;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1, v0}, Lej;->y(Leh;Z)V

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean v0, p0, Leb;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eq p1, p2, :cond_4

    nop

    goto/32 :goto_13

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-super {p0, p1, p2}, Lfk;->onPanelClosed(ILandroid/view/Menu;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Lej;->M(I)Leh;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v2, p1, Lep;->b:Z

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_25

    nop

    :goto_4
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5
    iget-object p1, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p1, :cond_1

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

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
    move p1, v1

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    :goto_a
    if-eqz p1, :cond_2

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

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_b
    check-cast p1, Lep;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    :goto_d
    if-lez v0, :cond_4

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    :goto_e
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_13
    return p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    :goto_15
    move-object v0, p3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_16
    invoke-super {p0, p1, p2, p3}, Lfk;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v3, p0, Leb;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p1, Lep;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_19
    instance-of v0, p3, Lfx;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p1, Lep;->c:Lmb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1c
    iget-object p1, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    iput-boolean v2, v0, Lfx;->j:Z

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_7

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v0, Lfx;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x0

    nop

    nop

    :goto_25
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_26
    move p1, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_8
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_28
    iput-boolean v1, v0, Lfx;->j:Z

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_10

    nop

    :goto_2e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2f
    iget-boolean v4, p1, Lep;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Lmb;->f()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Leh;->h:Lfx;

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

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xd

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

    :goto_3
    invoke-virtual {v0, v1}, Lej;->M(I)Leh;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1a

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

    :goto_6
    iget-object v0, p0, Leb;->c:Lej;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_a
    invoke-super {p0, p1, p2, p3}, Lfk;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_b
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

    :goto_c
    invoke-super {p0, p1, v0, p3}, Lfk;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 7

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_0
    if-nez v4, :cond_0

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p2, p1}, Lfd;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_59

    nop

    :goto_3
    invoke-virtual {p2}, Lfb;->f()V

    :goto_4
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_5
    iget v4, p2, Landroid/util/TypedValue;->resourceId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_2
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_8
    iget-object p1, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p2, Lfc;

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_b
    iget-object v3, p0, Lej;->p:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v4, 0x7f040009

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_e
    goto/16 :goto_8f

    nop

    nop

    :goto_f
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

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

    :goto_11
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/ActionBarContextView;->h(Lfb;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_12
    iget-object v3, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v6, p0, Lej;->h:Landroid/content/Context;

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a2

    nop

    nop

    :goto_15
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v1, v0, Lej;->r:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v3, p0, Lej;->p:Landroid/widget/PopupWindow;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget p2, p2, Landroid/util/TypedValue;->data:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p0}, Lfd;->e(Lfb;)Landroid/view/ActionMode;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_5d

    nop

    nop

    :goto_1e
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p2, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v3, p0, Lej;->p:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p2, p0, Lej;->n:Lfb;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    :goto_23
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p1, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

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

    :goto_27
    iput-object p1, p0, Lej;->J:Lfdn;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p2, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_29
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-super {p0, p1, p2}, Lfk;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_2b
    iget-object p2, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2c
    iput-object p2, p0, Lej;->q:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2d
    check-cast p1, Landroid/view/View;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p2}, Landroid/support/v7/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_2f
    iput-object p2, p0, Lej;->n:Lfb;

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p1, :cond_3

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez p2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_4
    goto/32 :goto_82

    nop

    nop

    :goto_33
    iget-object v3, p0, Lej;->p:Landroid/widget/PopupWindow;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v3, v4, p2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto/32 :goto_19

    nop

    nop

    :goto_36
    invoke-direct {p2, v3, v4, p1}, Lfc;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Lfa;)V

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_37
    invoke-direct {v6, v3, v2}, Lny;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p1, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v3, p0, Lej;->h:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-boolean p2, p0, Lej;->y:Z

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_3d
    invoke-static {p2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_4c

    nop

    nop

    :goto_3f
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Lej;->b()Ldk;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_42
    iget-object p1, p0, Lej;->J:Lfdn;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_43
    const v1, 0xb

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_44
    if-nez p2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_45
    const v4, 0x7f04001f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p0, p0, Leb;->c:Lej;

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1, p2}, Lfdn;->R(F)V

    goto/32 :goto_27

    nop

    nop

    :goto_4a
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_4b
    return-object v1

    nop

    nop

    :goto_4c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez p1, :cond_6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p1, p0, v0}, Lea;-><init>(Lej;Lfa;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance p2, Ldy;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_50
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iput-object p2, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    :goto_53
    goto/32 :goto_28

    nop

    nop

    :goto_54
    invoke-virtual {p0}, Lej;->A()V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object p2, p0, Lej;->t:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    new-instance p2, Lau;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    instance-of p1, p1, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_88

    nop

    nop

    :goto_5a
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iput-object v1, p0, Lej;->n:Lfb;

    nop

    nop

    :goto_5d
    goto/32 :goto_aa

    nop

    nop

    :goto_5e
    invoke-virtual {p2}, Landroid/support/v7/widget/ActionBarContextView;->i()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p1, p2}, Lfdn;->T(Ldwk;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto/32 :goto_3a

    nop

    nop

    :goto_61
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_62
    new-instance v6, Lny;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v4, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_64
    invoke-direct {p2, p0, v3, v1}, Lau;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_65
    if-nez p2, :cond_8

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_8
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p1}, Lfb;->f()V

    :goto_67
    goto/32 :goto_6e

    nop

    nop

    :goto_68
    const v3, 0x7f0b004f

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p2}, Lfb;->g()V

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p0}, Lej;->E()V

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_6c
    new-instance v3, Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iput-object v3, p2, Landroid/support/v7/widget/ViewStubCompat;->a:Landroid/view/LayoutInflater;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    new-instance p1, Lea;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-direct {p2, p0}, Ldy;-><init>(Lej;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object p1, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_14

    nop

    :goto_72
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-nez p2, :cond_9

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_9
    goto/32 :goto_3

    nop

    nop

    :goto_74
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_75
    iget-object p1, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v4, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object p2, p0, Lej;->q:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_78
    if-nez p2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_97

    nop

    nop

    :goto_79
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    goto/32 :goto_70

    nop

    nop

    :goto_7a
    iput-object p2, p0, Lej;->n:Lfb;

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p0}, Lej;->s()Landroid/content/Context;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object p1, p0, Lej;->n:Lfb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7f
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_80
    iget-object p0, p0, Lej;->n:Lfb;

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_81
    if-nez p1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_82
    new-instance p2, Landroid/util/TypedValue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_83
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_84
    iget-object p2, p0, Lej;->n:Lfb;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_85
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_ad

    nop

    nop

    :goto_86
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_87
    return-object p0

    nop

    :goto_88
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v0, p0, Leb;->c:Lej;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-nez p1, :cond_c

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_c
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_8b
    add-int v0, v0, v1

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_8c
    iput p2, v3, Landroid/support/v7/widget/ActionBarContextView;->e:I

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_8d
    invoke-static {p1}, Ldwd;->l(Landroid/view/View;)Lfdn;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_8e
    invoke-static {p1}, Ldvu;->l(Landroid/view/View;)V

    :goto_8f
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_90
    if-nez p2, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_7c

    nop

    nop

    :goto_91
    if-eqz p2, :cond_e

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_54

    nop

    nop

    :goto_92
    iget-object p2, v0, Lej;->h:Landroid/content/Context;

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget v3, p2, Landroid/util/TypedValue;->resourceId:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v3}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_95
    iget-object v3, p2, Lfc;->a:Lfx;

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {p0}, Lej;->J()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {p0}, Lej;->A()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object p2, p0, Lej;->p:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-direct {v3, v6, v1, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object p1, p0, Lej;->i:Landroid/view/Window;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object p1, p0, Lej;->p:Landroid/widget/PopupWindow;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    check-cast p2, Landroid/support/v7/widget/ActionBarContextView;

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_9e
    new-instance v0, Lfd;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9f
    iget-object p1, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a0
    check-cast p2, Landroid/support/v7/widget/ViewStubCompat;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_a2
    new-instance v3, Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-nez v1, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_f
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_a4
    iget-object v4, p0, Lej;->h:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a5
    invoke-virtual {p2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_a6
    iput-object v3, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_a7
    const v4, 0x7f04000f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {p2, p1}, Ldk;->c(Lfa;)Lfb;

    move-result-object p2

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_a9
    const/16 v3, 0xb

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_aa
    invoke-virtual {p0}, Lej;->E()V

    :goto_ab
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_ac
    goto/32 :goto_5a

    nop

    nop

    :goto_ad
    iget-object v3, p0, Lej;->h:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v3, v4, p2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-nez p0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v3, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_b2
    const/4 v3, -0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_b3
    invoke-interface {p1, p2, v3}, Lfa;->c(Lfb;Landroid/view/Menu;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-direct {v3, v6}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop
.end method
