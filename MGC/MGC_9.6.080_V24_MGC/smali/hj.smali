.class public final Lhj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Llt;

.field private final b:Landroid/view/View;

.field private final c:Lhn;

.field private d:I

.field private e:Llt;

.field private f:Llt;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lhj;->d:I

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhj;->c:Lhn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lhj;->b:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    const/4 v0, -0x1

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

    :goto_6
    invoke-static {}, Lhn;->d()Lhn;

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
.end method


# virtual methods
.method public final a()V
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

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

    :goto_1
    const/4 v3, 0x0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2
    iput-object v2, v1, Llt;->a:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lhj;->e:Llt;

    nop

    nop

    goto/32 :goto_1d

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

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    new-instance v1, Llt;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1, p0}, Lle;->g(Landroid/graphics/drawable/Drawable;Llt;[I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lhj;->e:Llt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_d
    iput-object v2, v1, Llt;->a:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    iput-boolean v3, v1, Llt;->d:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1, p0}, Lle;->g(Landroid/graphics/drawable/Drawable;Llt;[I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_12
    iget-object v1, p0, Lhj;->a:Llt;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v2, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Lhj;->b:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v1, p0, Lhj;->f:Llt;

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2e

    nop

    nop

    :goto_19
    const v1, 0x9

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    :goto_1c
    goto/32 :goto_28

    nop

    nop

    :goto_1d
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1e
    invoke-static {v2}, Ldvw;->d(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x0

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

    :goto_20
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_21
    iget-boolean v2, v1, Llt;->d:Z

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-boolean v3, v1, Llt;->d:Z

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_23
    iput-object v2, v1, Llt;->b:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-boolean v3, v1, Llt;->c:Z

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lhj;->b:Landroid/view/View;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_8

    nop

    nop

    :goto_28
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_6

    nop

    goto/32 :goto_36

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lhj;->b:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    :goto_2d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Lhj;->f:Llt;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-boolean v2, v1, Llt;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_30
    if-eqz v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v2}, Ldvw;->c(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

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

    :goto_32
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lhj;->b:Landroid/view/View;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v2, v1, Llt;->b:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_35
    invoke-static {v0, v1, p0}, Lle;->g(Landroid/graphics/drawable/Drawable;Llt;[I)V

    :goto_36
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, p0, Lhj;->f:Llt;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v2, p0, Lhj;->b:Landroid/view/View;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz v2, :cond_8

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_8
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz v1, :cond_9

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v1}, Llt;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_2d

    nop

    :goto_3d
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p0, p0, Lhj;->b:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_40
    iput-boolean v3, v1, Llt;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .locals 10

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    const v0, 0x14

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v7, Landroid/content/res/TypedArray;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    move-object v6, p1

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

    :goto_5
    sget-object v1, Lew;->z:[I

    nop

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

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

    :goto_8
    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v5, Lew;->z:[I

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

    :goto_a
    goto/32 :goto_e

    nop

    nop

    :goto_b
    invoke-static/range {v3 .. v9}, Ldwb;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    invoke-virtual {v0, v2}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result p1

    nop

    nop

    const/4 p2, -0x1

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, p2}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    iput p1, p0, Lhj;->d:I

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lhj;->c:Lhn;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lhj;->b:Landroid/view/View;

    nop

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    iget v2, p0, Lhj;->d:I

    nop

    nop

    invoke-virtual {p1, v1, v2}, Lhn;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    if-eqz p1, :cond_1

    nop

    invoke-virtual {p0, p1}, Lhj;->d(Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    iget-object v1, p0, Lhj;->b:Landroid/view/View;

    nop

    nop

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->s(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    invoke-static {v1, p1}, Ldvw;->g(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    iget-object p0, p0, Lhj;->b:Landroid/view/View;

    nop

    nop

    nop

    invoke-virtual {v0, p1, p2}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result p1

    nop

    nop

    nop

    nop

    const/4 p2, 0x0

    nop

    invoke-static {p1, p2}, La;->n(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    nop

    invoke-static {p0, p1}, Ldvw;->h(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    goto/32 :goto_13

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

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

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lhj;->b:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    move v8, p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x7

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v7, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v3, p0, Lhj;->b:Landroid/view/View;

    nop

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
.end method

.method public final c(I)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lhj;->d(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1, p1}, Lhn;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lhj;->c:Lhn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x15

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

    nop

    :goto_8
    invoke-virtual {p0}, Lhj;->a()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    const v0, 0xb

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lhj;->b:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_e
    goto :goto_4

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    :goto_10
    iput p1, p0, Lhj;->d:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method final d(Landroid/content/res/ColorStateList;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lhj;->e:Llt;

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-boolean p1, v0, Llt;->d:Z

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

    :goto_4
    const/4 p1, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lhj;->e:Llt;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lhj;->e:Llt;

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, v0, Llt;->a:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lhj;->a()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Llt;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lhj;->e:Llt;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    new-instance v0, Llt;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, -0x1

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
    iput v0, p0, Lhj;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lhj;->a()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lhj;->d(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_2

    nop

    nop
.end method
