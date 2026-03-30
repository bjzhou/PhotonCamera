.class public final synthetic Lmxr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lmxw;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lmxw;Landroid/widget/TextView;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmxr;->a:Lmxw;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lmxr;->b:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lmxr;->c:I

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    const-wide/16 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lmxr;->b:Landroid/widget/TextView;

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

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    :goto_3
    new-instance v10, Lmxu;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    invoke-direct {v9}, Leac;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_7
    new-instance v9, Leac;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p1, Lmxy;->c:Lmya;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_d
    int-to-double v5, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v2}, Lmxs;->a(Lmxw;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_f
    const-wide/16 v7, 0xc8

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_10
    iget-object v0, v2, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

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

    :goto_11
    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setEnabled(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eq p1, v0, :cond_2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    cmpl-double p0, v3, v5

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_16
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    iget-wide v3, v0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    const/4 v13, 0x2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget p0, p0, Lmxr;->c:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v0, Lmya;->a:Lmya;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v10, v2, v5, v6, p0}, Lmxu;-><init>(Lmxw;DI)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, v2, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

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

    :goto_22
    iget-object v2, p0, Lmxr;->a:Lmxw;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual/range {v2 .. v13}, Lmxw;->r(DDJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;JI)V

    :goto_24
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p0, :cond_4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

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

    :goto_27
    if-eq v0, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p1, Lmxy;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c:Ljava/util/Map;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, v2, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_30
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop
.end method
