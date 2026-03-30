.class public final Lfwl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lghk;


# instance fields
.field public final a:Lfxg;

.field private final b:Landroid/app/admin/DevicePolicyManager;

.field private final c:Landroid/content/Context;

.field private final d:Lowu;

.field private final e:Lhoh;


# direct methods
.method public constructor <init>(Lfdn;Lhoh;Landroid/content/Context;Lfxg;Lowu;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p4, p0, Lfwl;->a:Lfxg;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfwl;->b:Landroid/app/admin/DevicePolicyManager;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lfwl;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput-object p5, p0, Lfwl;->d:Lowu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Lfdn;->o()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lfwl;->e:Lhoh;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 7

    goto/32 :goto_30

    nop

    nop

    :goto_0
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

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

    :goto_3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lfwl;->c:Landroid/content/Context;

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

    :goto_6
    invoke-virtual {v4, v2, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/32 :goto_f

    nop

    nop

    :goto_7
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v2}, Lowu;->execute(Ljava/lang/Runnable;)V

    :goto_9
    goto/32 :goto_16

    nop

    nop

    :goto_a
    iget-object v5, p0, Lfwl;->c:Landroid/content/Context;

    nop

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

    nop

    :goto_b
    const v5, 0x7f070193

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_f
    const v2, 0x7f1400f5

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3, v4, v2}, Lrgu;->l(ILandroid/content/DialogInterface$OnClickListener;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v2, Lesy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    :goto_13
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

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

    :goto_15
    new-instance v4, Landroid/widget/TextView;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_16
    xor-int/lit8 p0, v0, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_18
    sget-object v1, Lhmq;->bO:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    const v2, 0x7f1400f7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v4, 0x11

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v3, v2}, Lrgu;->f(Z)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v3, v4}, Lrgu;->p(Landroid/view/View;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v2, v3, v4}, Lesy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v2, p0, v1}, Lfwq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, p0, Lfwl;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lfwl;->d:Lowu;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_25
    const v4, 0x7f1400f6

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_26
    const v4, 0x7f15047b

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v3, v2, v4}, Lrgu;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2a
    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_2f
    iget-object v0, p0, Lfwl;->e:Lhoh;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x9

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

    :goto_31
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_33
    return-object p0

    nop

    :goto_34
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_35
    const v6, 0x7f070194

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v3, v2}, Lrgu;->n(I)V

    goto/32 :goto_1e

    nop

    nop

    :goto_37
    iget-object v2, p0, Lfwl;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lfwl;->b:Landroid/app/admin/DevicePolicyManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_39
    new-instance v3, Lrgu;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v2, Lfwq;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Lhhg;->L(Lghk;)Ljava/lang/String;

    move-result-object p0

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
