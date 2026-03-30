.class public final Lfu;
.super Landroid/widget/BaseAdapter;
.source "PG"


# instance fields
.field public final a:Lfx;

.field public b:Z

.field private c:I

.field private final d:Z

.field private final e:Landroid/view/LayoutInflater;

.field private final f:I


# direct methods
.method public constructor <init>(Lfx;Landroid/view/LayoutInflater;ZI)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p3, p0, Lfu;->d:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lfu;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput-object p2, p0, Lfu;->e:Landroid/view/LayoutInflater;

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

    :goto_6
    invoke-virtual {p0}, Lfu;->b()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p4, p0, Lfu;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lfu;->a:Lfx;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)Lfz;
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lfx;->e()Ljava/util/ArrayList;

    move-result-object v0

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

    nop

    :goto_5
    iget-object v0, p0, Lfu;->a:Lfx;

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
    if-ge p1, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lfx;->f()Ljava/util/ArrayList;

    move-result-object v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto :goto_8

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    iget p0, p0, Lfu;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    if-gez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop

    nop

    :goto_d
    iget-object v0, p0, Lfu;->a:Lfx;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lfz;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    iget-boolean v0, p0, Lfu;->d:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method final b()V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    :goto_0
    check-cast v4, Lfz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const v0, 0x20

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

    :goto_2
    if-eq v4, v1, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    if-lt v3, v2, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    :goto_5
    iput v0, p0, Lfu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lfu;->a:Lfx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    add-int/lit8 v3, v3, 0x1

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

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    iget-object v1, v0, Lfx;->i:Lfz;

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

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_d
    const v1, 0x4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    iput v3, p0, Lfu;->c:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lfx;->e()Ljava/util/ArrayList;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method public final getCount()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

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

    nop

    nop

    :goto_1
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Lfu;->d:Z

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    iget p0, p0, Lfu;->c:I

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

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ltz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

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

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lfu;->a:Lfx;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lfx;->e()Ljava/util/ArrayList;

    move-result-object v0

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

    :goto_b
    iget-object v0, p0, Lfu;->a:Lfx;

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

    :goto_c
    return p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lfx;->f()Ljava/util/ArrayList;

    move-result-object v0

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    :goto_10
    add-int/lit8 p0, p0, -0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lfu;->a(I)Lfz;

    move-result-object p0

    nop

    goto/32 :goto_1

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
.end method

.method public final getItemId(I)J
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    int-to-long p0, p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-wide p0

    nop

    nop
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3}, Lfx;->w()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, v1, Lfz;->b:I

    nop

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

    :goto_3
    iput-boolean v4, v2, Landroid/support/v7/view/menu/ListMenuItemView;->c:Z

    nop

    nop

    :goto_4
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_5
    if-nez v3, :cond_1

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

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    iget p3, p3, Lfz;->b:I

    nop

    nop

    goto/32 :goto_19

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_b
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move p3, v4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    move-object v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p3, Lgj;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, v2, Landroid/support/v7/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3a

    nop

    nop

    :goto_17
    iget v1, p0, Lfu;->f:I

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_18
    iget-boolean v3, v2, Landroid/support/v7/view/menu/ListMenuItemView;->d:Z

    nop

    nop

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

    :goto_19
    add-int/lit8 v1, p1, -0x1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_24

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_23

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz p2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1f
    iget-boolean v0, p0, Lfu;->b:Z

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

    :goto_20
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_21
    move-object p3, p2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    check-cast v2, Landroid/support/v7/view/menu/ListMenuItemView;

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

    :goto_23
    move p3, v0

    nop

    :goto_24
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p3, p0}, Lgj;->f(Lfz;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_26
    if-ne p3, v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p2, p0, Lfu;->e:Landroid/view/LayoutInflater;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_28
    const v1, 0x1a

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 v5, 0x8

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2c
    iget-object v3, p0, Lfu;->a:Lfx;

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

    :goto_2d
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2e
    move v1, p3

    nop

    :goto_2f
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_30
    if-gez v1, :cond_7

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v4, 0x1

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

    :goto_32
    goto :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_38

    nop

    nop

    :goto_34
    invoke-virtual {p0, v1}, Lfu;->a(I)Lfz;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_35
    invoke-virtual {p0, p1}, Lfu;->a(I)Lfz;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_36
    invoke-virtual {p0, p1}, Lfu;->a(I)Lfz;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_8
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_38
    move v0, v5

    nop

    nop

    :goto_39
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-boolean v4, v2, Landroid/support/v7/view/menu/ListMenuItemView;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lfu;->b()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method
