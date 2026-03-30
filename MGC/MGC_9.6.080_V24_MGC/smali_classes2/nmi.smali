.class final Lnmi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnbg;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

.field final synthetic b:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

.field final synthetic c:Lnmj;


# direct methods
.method public constructor <init>(Lnmj;Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;)V
    .locals 0

    goto/32 :goto_4

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

    nop

    :goto_1
    iput-object p3, p0, Lnmi;->b:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnmi;->c:Lnmj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p2, p0, Lnmi;->a:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

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


# virtual methods
.method public final synthetic dI(Lnbh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final dP(Lnbe;Lnbh;)V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-int v0, v2, v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    iget-object v0, v0, Lnmj;->r:Loyd;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sub-int v1, v2, v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->b:Lnbh;

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_5
    iget-object v0, v0, Lnbp;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_7
    const v1, 0x9

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, v0, Landroid/graphics/Rect;->right:I

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

    :goto_9
    sub-int/2addr v1, v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v1, Lnbp;->e:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    :goto_d
    if-nez v1, :cond_1

    nop

    goto/32 :goto_26

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Lnbp;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    iget-object v2, v0, Lnbp;->b:Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lnmi;->a:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_17
    iget-object v1, v0, Lnbp;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->c:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v0, Lnbf;->a:Lnbf;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v0, Lnbp;->d:Landroid/graphics/Rect;

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

    :goto_1b
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1e
    iget v0, v0, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_20
    iget-object v2, p0, Lnmi;->b:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, v1, Lnbp;->b:Landroid/util/Size;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_22
    invoke-static {p1}, Lnzk;->aQ(Lnbe;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p2}, Lnbh;->d()Z

    move-result v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    :goto_25
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Lnmi;->b:Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v1, v0, Lnbp;->e:Landroid/graphics/Rect;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_29
    iget-object v0, v0, Lnbs;->b:Lnbp;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v0, Lnbs;->b:Lnbp;

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

    :goto_2b
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->m(Landroid/view/View;)V

    goto/32 :goto_27

    nop

    nop

    :goto_2c
    iget v1, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2d
    iget v1, v1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lnmi;->a:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v1, Lnbh;->b:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->j()V

    :goto_31
    goto/32 :goto_4

    nop

    nop

    :goto_32
    iget-object v0, p0, Lnmi;->c:Lnmj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_33
    iget-object v1, v0, Lnbs;->b:Lnbp;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->g()Lnbs;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_35
    iget v0, v0, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_36
    iget-object v0, v0, Lnbs;->b:Lnbp;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {p2, p1, v0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->s(Lnbh;Lnbe;Lnbf;)Lnbh;

    move-result-object p2

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

    nop

    :goto_3a
    goto/16 :goto_1

    nop

    nop

    :goto_3b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->e()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3d
    if-ne v0, p1, :cond_6

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

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

    :goto_3f
    return-void

    nop

    :goto_40
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p2, v1}, Lnbh;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->c:Lnbe;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

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

    :goto_45
    iput v1, p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsMenuContainer;->a:I

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget v1, v1, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method
