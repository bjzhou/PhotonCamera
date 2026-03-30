.class public final Lnlg;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:Z

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Lubp;

.field final synthetic g:Lnlj;


# direct methods
.method public constructor <init>(FFFZLandroid/view/View;Lubp;Lnlj;)V
    .locals 0

    goto/32 :goto_5

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
    iput p2, p0, Lnlg;->b:F

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

    :goto_2
    iput p3, p0, Lnlg;->c:F

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

    nop

    nop

    :goto_3
    iput-boolean p4, p0, Lnlg;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lnlg;->a:F

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

    :goto_6
    iput-object p6, p0, Lnlg;->f:Lubp;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Lnlg;->e:Landroid/view/View;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p7, p0, Lnlg;->g:Lnlj;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1, v0, v2, p0}, Lubp;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    rem-float v2, v0, v1

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

    :goto_2
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x1

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lnlg;->e:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_0
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_b
    iget v2, p0, Lnlg;->c:F

    nop

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
    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_d
    float-to-double v0, v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v3, 0x3f7fff58    # 0.99999f

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_13
    double-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    float-to-double v0, v0

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

    :goto_15
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    float-to-double v0, v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_17
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    nop

    nop

    :goto_18
    goto/32 :goto_13

    nop

    nop

    :goto_19
    goto :goto_23

    nop

    nop

    :goto_1a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1f
    goto :goto_18

    nop

    :goto_20
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Lnlg;->f:Lubp;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_42

    nop

    :goto_23
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_24
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_25
    iget-boolean v3, p0, Lnlg;->d:Z

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

    nop

    :goto_26
    const v0, 0x9

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

    :goto_27
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_29
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lnlg;->g:Lnlj;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-gtz v3, :cond_3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    :goto_2d
    const v3, 0x3727c5ac    # 1.0E-5f

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0, v2}, Lnzk;->am(FF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2f
    iget v1, p0, Lnlg;->b:F

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_30
    add-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    :goto_32
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v2, :cond_4

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

    :cond_4
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v3, p0, Lnlg;->a:F

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_35
    if-gez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_37
    invoke-static {v0, v3}, Lnzk;->ao(FF)F

    move-result v0

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

    :goto_38
    cmpg-float v3, v2, v3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_39
    invoke-static {v0, v1}, Lnzk;->an(FF)F

    move-result v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v1, p0, Lnlg;->c:F

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v2, 0x4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3c
    invoke-static {v0, v1}, Lnzk;->ap(FF)F

    move-result v0

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3d
    cmpl-float v2, v2, v3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    float-to-double v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    nop

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

    :goto_40
    iget v0, p0, Lnlg;->a:F

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_41
    move v2, v4

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_25

    nop

    nop
.end method
