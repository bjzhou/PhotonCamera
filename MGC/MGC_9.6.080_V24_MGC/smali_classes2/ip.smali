.class public final Lip;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lio;

.field public final b:Ljava/util/List;

.field public c:I

.field public d:Landroid/view/View;

.field public final e:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lip;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

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
    new-instance p1, Lio;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lip;->c:I

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

    :goto_4
    invoke-direct {p1}, Lio;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lip;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lip;->a:Lio;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    new-instance p1, Ljava/util/ArrayList;

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
.end method


# virtual methods
.method public final a()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lip;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_1
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->i()I

    move-result p0

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

    nop

    :goto_2
    iget-object v0, p0, Lip;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    sub-int/2addr p0, v0

    nop

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
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop
.end method

.method public final b(I)I
    .locals 4

    goto/32 :goto_21

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->i()I

    move-result v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    iget-object p1, p0, Lip;->a:Lio;

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

    :goto_2
    goto/32 :goto_7

    nop

    :goto_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3, v2}, Lio;->a(I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sub-int v3, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    goto :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_1e

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move v2, p1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sub-int v3, p1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_14
    return v2

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v2}, Lio;->f(I)Z

    move-result p1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_19
    return v0

    nop

    nop

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    :goto_1b
    if-ltz p1, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Lip;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    if-eqz v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_3
    :goto_1e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v3, p0, Lip;->a:Lio;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_20
    add-int/lit8 v2, v2, 0x1

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
    const v0, 0xa

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_22
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lip;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->i()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method final d(Landroid/view/View;)I
    .locals 2

    goto/32 :goto_12

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    :goto_2
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lio;->a(I)I

    move-result p0

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

    :goto_5
    iget-object p0, p0, Lip;->a:Lio;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_d

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_b
    sub-int/2addr p1, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p1

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    const/4 v0, -0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->j(Landroid/view/View;)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lip;->a:Lio;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x4

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, p1}, Lio;->f(I)Z

    move-result v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    :goto_17
    iget-object v0, p0, Lip;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public final e(I)Landroid/view/View;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lip;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lip;->b(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->k(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final f(I)Landroid/view/View;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->k(I)Landroid/view/View;

    move-result-object p0

    nop

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
    iget-object p0, p0, Lip;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final g(Landroid/view/View;IZ)V
    .locals 2

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_1
    check-cast v0, Ldwc;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    iget-object p2, p0, Lip;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr p2, p3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_36

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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

    nop

    nop

    :goto_a
    iget v1, v0, Lkm;->width:I

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_b
    add-int/lit8 p2, p2, -0x1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Lkm;

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

    :goto_e
    if-ltz p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    :goto_10
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_11
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_12
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lip;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->i()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p3, :cond_3

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

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Ljava/util/List;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->x:Ljava/util/List;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, v0, Lkm;->height:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p2, p3}, Lio;->c(IZ)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1f
    iget-object p3, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_20
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

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

    :goto_21
    check-cast p3, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_22
    invoke-virtual {p0, p2}, Lip;->b(I)I

    move-result p2

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_32

    nop

    nop

    :goto_24
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_25
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->l:Lke;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x19

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_27
    goto/16 :goto_6

    nop

    :goto_28
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, p1}, Lip;->j(Landroid/view/View;)V

    :goto_2a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2b
    if-eq v0, p3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p3, p2}, Lke;->h(Llb;)V

    :goto_2d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p3, p1, p2}, Landroid/support/v7/widget/RecyclerView;->addView(Landroid/view/View;I)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->qrtMxwdcQjeGokr:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_30
    throw p0

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_7

    nop

    nop

    :goto_32
    iget-object v0, p0, Lip;->a:Lio;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_33
    goto/16 :goto_23

    nop

    :goto_34
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0x5

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

    nop

    :goto_36
    if-gez p2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Llb;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_38
    const/4 p2, 0x0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez p2, :cond_6

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

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez p3, :cond_7

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_29

    nop

    nop

    :goto_3b
    if-eq v1, p3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method public final h(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    if-nez p4, :cond_0

    nop

    goto/32 :goto_6

    nop

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
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

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

    :goto_2
    invoke-virtual {p2}, Landroidx/wear/ambient/AmbientMode$AmbientController;->i()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p2}, Lip;->b(I)I

    move-result p2

    nop

    :goto_4
    goto/32 :goto_27

    nop

    nop

    :goto_5
    invoke-virtual {p4}, Llb;->i()V

    :goto_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p4}, Llb;->w()Z

    move-result v0

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

    :goto_b
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p4}, Llb;->z()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p0

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

    :goto_f
    iget-object p2, p0, Lip;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    if-ltz p2, :cond_1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    throw p1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    :goto_14
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

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

    :goto_17
    return-void

    nop

    :goto_18
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    :goto_19
    invoke-virtual {p0, p1}, Lip;->j(Landroid/view/View;)V

    :goto_1a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Llb;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3

    nop

    nop

    :goto_1f
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    :goto_20
    iget-object p0, p0, Lip;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string p3, "Called attach on a child which is not detached: "

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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

    :goto_23
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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

    :goto_24
    invoke-virtual {v0, p2, p4}, Lio;->c(IZ)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lip;->a:Lio;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop
.end method

.method final i(I)V
    .locals 3

    goto/32 :goto_2c

    nop

    nop

    :goto_0
    const-string v2, "called detach on an already detached child "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    :goto_4
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    goto :goto_3

    nop

    :goto_6
    goto/32 :goto_19

    nop

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
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lip;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->k(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lip;->b(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Llb;->e(I)V

    goto/32 :goto_29

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Llb;->w()Z

    move-result v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_15
    const/16 v1, 0x100

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_17
    invoke-virtual {v0}, Llb;->z()Z

    move-result v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_1c
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0, p1}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_20
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    sget v0, Landroid/support/v7/widget/RecyclerView;->ab:I

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    :goto_25
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    :goto_26
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_27
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_28
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Llb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_23

    nop

    nop

    :goto_2a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, p1}, Lio;->g(I)Z

    goto/32 :goto_9

    nop

    nop

    :goto_2c
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lip;->a:Lio;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(Landroid/view/View;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->as(Llb;I)V

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    const v0, 0x14

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    iget-object p0, p0, Lip;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    iget-object v0, p0, Lip;->b:Ljava/util/List;

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

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_e
    iput v0, p1, Llb;->o:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    iget-object v0, p1, Llb;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    iput v0, p1, Llb;->o:I

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_12

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    iget v0, p1, Llb;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Llb;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, -0x1

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

    nop
.end method

.method public final k(Landroid/view/View;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lip;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return p0

    nop

    nop
.end method

.method public final l(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientMode$AmbientController;->l(Landroid/view/View;)V

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lip;->b:Ljava/util/List;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iget-object p0, p0, Lip;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, ", hidden list:"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x12

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_6
    iget-object p0, p0, Lip;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Lio;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

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

    nop

    :goto_11
    iget-object v1, p0, Lip;->a:Lio;

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

    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
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

    :goto_14
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method
