.class final Ljc;
.super Lkg;
.source "PG"


# instance fields
.field final synthetic a:Lje;


# direct methods
.method public constructor <init>(Lje;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljc;->a:Lje;

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
    invoke-direct {p0}, Lkg;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 8

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-float/2addr p1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    move v5, v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    if-ge v4, v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    int-to-float v6, p3

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

    :goto_5
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v5, p0, Lje;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    mul-float/2addr v3, p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-int p1, v4, v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    div-int/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_d
    mul-float/2addr p2, p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p3, p0, Lje;->l:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_10
    int-to-float p1, p1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_11
    move v1, v3

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/high16 v7, 0x40000000    # 2.0f

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

    :goto_14
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_15
    if-eq p1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_1
    goto/32 :goto_52

    nop

    nop

    :goto_16
    invoke-virtual {p0, v3}, Lje;->c(I)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput p1, p0, Lje;->d:I

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Ljc;->a:Lje;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    div-float/2addr p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1c
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_1e
    goto :goto_22

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_20
    iget v4, p0, Lje;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_21
    move v5, v3

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v0, p0, Lje;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_24
    iget v1, p0, Lje;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_25
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

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

    :goto_26
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    :goto_27
    div-float v5, v3, v7

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_28
    div-float/2addr v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_29
    float-to-int p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2a
    iget p1, p0, Lje;->o:I

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

    :goto_2b
    if-eqz v6, :cond_5

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2c
    div-int/2addr p1, p3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_7

    nop

    nop

    :goto_2f
    mul-int p1, v0, v0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_44

    nop

    nop

    :goto_32
    int-to-float p1, p2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_33
    move v1, v2

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

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

    :goto_35
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-boolean p1, p0, Lje;->n:Z

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

    :goto_37
    int-to-float p2, v4

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_38
    sub-int v1, p3, v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_39
    div-float p3, p2, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v1, p0, Lje;->l:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3b
    if-gtz v1, :cond_7

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    :goto_3c
    sub-int v5, v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3d
    iput p1, p0, Lje;->e:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput p1, p0, Lje;->h:I

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

    :goto_40
    add-float/2addr p1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput-boolean v5, p0, Lje;->n:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_43
    float-to-int p1, v3

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0, v2}, Lje;->c(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_45
    iget-boolean v6, p0, Lje;->m:Z

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_46
    if-gtz v5, :cond_8

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v5, :cond_9

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4f

    nop

    nop

    :goto_4a
    int-to-float v0, v1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4b
    return-void

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_10

    nop

    nop

    :goto_4d
    iput p1, p0, Lje;->g:I

    nop

    :goto_4e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget p1, p0, Lje;->o:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_50
    int-to-float v3, v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_51
    iput-boolean v1, p0, Lje;->m:Z

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_54
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_55
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_56
    rem-int v0, v0, v1

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

    nop

    :goto_57
    if-ge v0, v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_33

    nop

    nop

    nop
.end method
