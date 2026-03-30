.class public final synthetic Leng;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldyn;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p2, p0, Leng;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Leng;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final l(F)V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    iput-object v0, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lnne;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lenj;->l:Ldys;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ldys;->m()V

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setScrollX(I)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Lkjj;->h(Landroid/view/View;)V

    goto/32 :goto_17

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    :goto_9
    iget-object p0, p0, Leng;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_a
    const/high16 v1, 0x40a00000    # 5.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Lenj;->c(F)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

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

    :goto_d
    iget-object v0, v0, Lenj;->m:Ldys;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0}, Lndy;->e(Lnne;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sub-float/2addr v0, p1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_11
    check-cast v0, Lenj;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_3
    goto/32 :goto_13

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_4
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Leng;->b:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    iget-object p1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d()Lnne;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, p1}, Lenj;->c(F)V

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    check-cast p0, Lndz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lnne;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1e
    if-ne v0, v3, :cond_5

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Leng;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_21
    check-cast p0, Lenj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_22
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

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

    :goto_23
    int-to-float v0, v0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_24
    check-cast p0, Lenj;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_25
    move-object v0, p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_26
    if-eq v1, v0, :cond_6

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    :goto_27
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

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

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Ldys;->m()V

    :goto_2f
    goto/32 :goto_21

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    :goto_31
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    cmpg-float v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_34
    iget-object v0, p0, Lndz;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_35
    cmpg-float v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_36
    const/4 p1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    :goto_38
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Leng;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v0, p0, Lenj;->b:I

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

    :goto_3b
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3c
    add-float v0, p1, v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3d
    iput p1, p0, Lndz;->d:I

    nop

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

    :goto_3e
    float-to-int p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
