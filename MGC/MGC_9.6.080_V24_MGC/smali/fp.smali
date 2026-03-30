.class public final Lfp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p2, p0, Lfp;->b:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lfp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v1, p0, Lnzu;->g:Z

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3
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

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    iget-boolean v2, v0, Lnzu;->g:Z

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

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    iget-object v2, v2, Lnzu;->f:Landroid/database/ContentObserver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lnzu;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v2, Lnzu;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    iput-boolean p1, p0, Lnzu;->e:Z

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_11
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Lfp;->b:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lfp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v0, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    iget-object v0, v0, Lnzu;->f:Landroid/database/ContentObserver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v3, "reduce_motion"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v2, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lfp;->a:Ljava/lang/Object;

    nop

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

    :goto_1e
    iget-object v2, p0, Lfp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1}, Lnzu;->g(Landroid/content/Context;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

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

    :goto_21
    iget-object p1, p0, Lfp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_22
    check-cast p0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-ne v0, v1, :cond_3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lfp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Lnzu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_29
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2a
    invoke-static {p0}, Ldvu;->l(Landroid/view/View;)V

    :goto_2b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lfr;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object v0, p0, Lfp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    iput-object v1, v0, Lfr;->e:Landroid/view/ViewTreeObserver;

    nop

    :goto_6
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, v0, Lgo;->d:Landroid/view/ViewTreeObserver;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lfp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_b
    iget-object v0, v0, Lnzu;->f:Landroid/database/ContentObserver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_c
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_d
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_10
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14
    iput-boolean p1, p0, Lnzu;->g:Z

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lfp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, v0, Lgo;->b:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    iget v0, p0, Lfp;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1d
    if-nez v0, :cond_2

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Lnzu;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_21
    iput-object v1, v0, Lgo;->d:Landroid/view/ViewTreeObserver;

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, v0, Lnzu;->f:Landroid/database/ContentObserver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_25
    check-cast v0, Lnzu;

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

    nop

    nop

    :goto_26
    iget-object v0, v0, Lgo;->d:Landroid/view/ViewTreeObserver;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Lnzu;

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

    :goto_29
    check-cast v0, Lgo;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2b
    iget-boolean v1, v0, Lnzu;->g:Z

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2c
    check-cast v0, Lgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2d
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_4
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lfp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lfp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_33
    iget-object v0, v0, Lfr;->e:Landroid/view/ViewTreeObserver;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, v0, Lfr;->e:Landroid/view/ViewTreeObserver;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Lfp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_37
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lfp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Lfp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lfp;->a:Ljava/lang/Object;

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

    :goto_3c
    if-lez v0, :cond_7

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1a

    nop

    :goto_3d
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    return-void

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_41
    check-cast v0, Lgo;

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

    :goto_42
    return-void

    nop

    :goto_43
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v0, Lfr;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_45
    if-nez v0, :cond_9

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_9
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_47
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_48
    iget-object v0, v0, Lfr;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_49
    check-cast v0, Lfr;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
