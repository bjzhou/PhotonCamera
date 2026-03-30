.class public final Lkyd;
.super Lrft;
.source "PG"


# instance fields
.field final synthetic a:Lkyf;


# direct methods
.method public constructor <init>(Lkyf;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lkyd;->a:Lkyf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lrft;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;F)V
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

    nop

    nop

    nop
.end method

.method public final b(Landroid/view/View;I)V
    .locals 3

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1
    if-eq p2, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->k(Lrmf;)V

    :goto_3
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->y(Lkyq;)V

    :goto_5
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->d(I)Lrmf;

    move-result-object p2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lkyd;->a:Lkyf;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p1, Lkyf;->p:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lkyd;->a:Lkyf;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->d(I)Lrmf;

    move-result-object p2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4a

    nop

    :goto_e
    iget-object p2, p1, Lkyf;->h:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    const/4 p1, 0x3

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

    :goto_10
    iget-object p1, p0, Lkyd;->a:Lkyf;

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

    :goto_11
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    iget-object p1, p1, Lkyf;->p:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_14
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->a()I

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lkyf;->t:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p1, Lkyf;->B:Lkyi;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lkyf;->e()Lnne;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_23

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_4

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

    :cond_4
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lkyd;->a:Lkyf;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1f
    iput v0, p1, Lkyf;->Q:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p1, p0, Lkyd;->a:Lkyf;

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

    nop

    nop

    :goto_21
    const/4 p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Lkyi;->b()V

    :goto_23
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, p0, Lkyd;->a:Lkyf;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lkyd;->a:Lkyf;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    :goto_27
    const/4 p1, 0x5

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p1, p0, Lkyd;->a:Lkyf;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->m()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object p2, v1, Lkyi;->c:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2b
    const v1, 0x4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, p2}, Lkyf;->u(Z)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p1, p0, Lkyd;->a:Lkyf;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p1, Lkyf;->r:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/16 v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p1, p1, Lkyf;->B:Lkyi;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_33
    if-nez p2, :cond_6

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->B(Lkyq;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->k(Lrmf;)V

    :goto_36
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Lkyf;->u:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_4b

    nop

    :goto_39
    iget-object p0, p0, Lkyd;->a:Lkyf;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-eq p2, p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget p2, p1, Lkyf;->Q:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez p1, :cond_8

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez p1, :cond_9

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p1, p0, Lkyd;->a:Lkyf;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1, v0}, Lkyf;->u(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->a()I

    move-result v2

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_41
    iget-object p1, p1, Lkyf;->t:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, p0, Lkyf;->m:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_44
    iput-object p1, v1, Lkyi;->b:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->y(Lkyq;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p1, p0, Lkyd;->a:Lkyf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_47
    iget-object p1, p1, Lkyf;->u:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v0, 0x0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1}, Lkyi;->b()V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_30

    nop

    :goto_4b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4e
    iget-object v1, p1, Lkyf;->J:Lkyq;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_4f
    iget-object p1, p1, Lkyf;->m:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_50
    return-void

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object p1, p0, Lkyd;->a:Lkyf;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v1, p1, Lkyf;->B:Lkyi;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_54
    iget-object p1, p0, Lkyd;->a:Lkyf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_55
    if-eq v2, p2, :cond_a

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_41

    nop

    nop

    :goto_57
    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuView;->B(Lkyq;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop
.end method
