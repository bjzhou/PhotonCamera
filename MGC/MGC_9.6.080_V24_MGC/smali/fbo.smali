.class public final Lfbo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lfay;

.field public b:Lfay;

.field public c:Lfay;

.field public d:Lfay;

.field public e:Lfay;

.field public f:Lfbc;

.field public g:Lfbc;

.field public h:Lfay;

.field public i:Lfay;

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Matrix;

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/Matrix;

.field private final n:[F


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m()V
    .locals 3

    goto/32 :goto_f

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

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    const v1, 0xe

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lt v0, v1, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_8
    const/16 v1, 0x9

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_11

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lfbo;->n:[F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    aput v2, v1, v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    const v0, 0xc

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    if-lez v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop
.end method

.method public constructor <init>(Lfcj;)V
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_58

    nop

    nop

    :goto_4
    iput-object v0, p0, Lfbo;->b:Lfay;

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

    :goto_5
    iput-object v0, p0, Lfbo;->j:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lfbo;->c:Lfay;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4e

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lfca;->a()Lfay;

    move-result-object v0

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_9
    goto/16 :goto_44

    nop

    nop

    :goto_a
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d
    iget-object v0, p1, Lfcj;->d:Lfca;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p1, Lfcj;->b:Lfck;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_10
    move-object v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    goto :goto_15

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    :goto_13
    check-cast v0, Lfbc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lfca;->a()Lfay;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object v0, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lfcf;->a()Lfay;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lfca;->a()Lfay;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lfbo;->l:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_4f

    nop

    nop

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

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v0, p0, Lfbo;->e:Lfay;

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Lfca;->a()Lfay;

    move-result-object v0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_25
    goto :goto_23

    nop

    :goto_26
    goto/32 :goto_22

    nop

    nop

    :goto_27
    iput-object v0, p0, Lfbo;->m:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v1, p0, Lfbo;->h:Lfay;

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Lfcc;->a()Lfay;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2b
    iget-object v0, p1, Lfcj;->c:Lfcf;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2c
    goto :goto_29

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_31
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v0, p0, Lfbo;->n:[F

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p1, Lfcj;->h:Lfca;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v0, Lfbc;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_37
    goto/16 :goto_47

    nop

    nop

    :goto_38
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_39
    iput-object v0, p0, Lfbo;->g:Lfbc;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object p1, p0, Lfbo;->i:Lfay;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object v0, p0, Lfbo;->f:Lfbc;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p1, Lfcj;->g:Lfca;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_68

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p1, p1, Lfcj;->i:Lfca;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v0}, Lfck;->a()Lfay;

    move-result-object v0

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_45
    move-object v0, v1

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

    :goto_46
    iput-object v1, p0, Lfbo;->n:[F

    nop

    nop

    :goto_47
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_4c
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    :goto_4d
    iput-object v0, p0, Lfbo;->d:Lfay;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_4f
    move-object v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_50
    new-instance v0, Landroid/graphics/Matrix;

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

    :goto_51
    iput-object v1, p0, Lfbo;->l:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    :goto_53
    goto/32 :goto_30

    nop

    :goto_54
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_55
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_9
    goto/32 :goto_2f

    nop

    :goto_56
    iget-object v0, p1, Lfcj;->a:Lfcd;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_57
    iput-object v1, p0, Lfbo;->k:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1}, Lfca;->a()Lfay;

    move-result-object p1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_59
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_5a
    const v1, 0x13

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_a
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v0, p1, Lfcj;->f:Lfca;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_5e
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_5f
    iput-object v1, p0, Lfbo;->m:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iput-object v1, p0, Lfbo;->i:Lfay;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_62
    iput-object v0, p0, Lfbo;->h:Lfay;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iput-object v0, p0, Lfbo;->a:Lfay;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_64
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_65
    iget-object v0, p1, Lfcj;->e:Lfcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iput-object v0, p0, Lfbo;->k:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v0}, Lfcd;->a()Lfay;

    move-result-object v0

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_63

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/graphics/Matrix;
    .locals 13

    goto/32 :goto_9f

    nop

    nop

    :goto_0
    neg-float v2, v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setValues([F)V

    goto/32 :goto_71

    nop

    nop

    :goto_3
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :goto_4
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_6
    move v3, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lfay;->e()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_8
    aput v0, v5, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    add-float/2addr v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4b

    nop

    :goto_b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_0
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_d
    aput v3, v5, v6

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lfbc;->k()F

    move-result v0

    nop

    nop

    :goto_f
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_12
    iget-object v2, p0, Lfbo;->j:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lfay;->e()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_16
    aput v2, v5, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_17
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_18
    if-nez v2, :cond_3

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_3
    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    aput v3, v0, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_4
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_1c
    iget-object v5, p0, Lfbo;->n:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    instance-of v2, v0, Lfbp;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1e
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_1f
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_5
    :goto_21
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_23
    iget v3, v0, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_24
    aput v2, v0, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_25
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_93

    nop

    nop

    :goto_26
    float-to-double v5, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_8e

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_29
    const v1, 0x7

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_2a
    iget v3, v0, Lffm;->a:F

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0}, Lfbo;->7ecc92917e9c4556cc19f457ddc41af8m()V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    neg-float v5, v5

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

    :goto_2d
    iget-object v0, p0, Lfbo;->j:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2e
    cmpl-float v2, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setValues([F)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Lfbo;->j:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_7
    goto/32 :goto_1d

    nop

    nop

    :goto_32
    iget v2, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v3, p0, Lfbo;->g:Lfbc;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_8
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_35
    if-nez v0, :cond_9

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_52

    nop

    nop

    :goto_36
    aput v2, v5, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v3}, Lfbc;->k()F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_38
    const/16 v11, 0x8

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_39
    aput v8, v0, v7

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_3a
    add-float/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3c
    iget-object v3, p0, Lfbo;->l:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_3d
    cmpl-float v4, v3, v2

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Lfbc;->k()F

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

    nop

    :goto_3f
    iget-object v0, p0, Lfbo;->l:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_40
    aput v8, v5, v9

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, p0, Lfbo;->n:[F

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v9, 0x3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_43
    aput v2, v5, v6

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

    :goto_44
    iget-object v0, p0, Lfbo;->b:Lfay;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_45
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :goto_47
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_48
    float-to-double v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_49
    cmpl-float v2, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    return-object p0

    nop

    nop

    :goto_4b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v0, p0, Lfbo;->m:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_4d
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_4e
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_50
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_51
    iget-object v0, p0, Lfbo;->a:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_52
    iget v2, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget v2, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :goto_55
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_56
    check-cast v0, Ljava/lang/Float;

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

    nop

    :goto_57
    invoke-direct {p0}, Lfbo;->7ecc92917e9c4556cc19f457ddc41af8m()V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Lfbo;->j:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_59
    if-eqz v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :cond_a
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/high16 v4, 0x42b40000    # 90.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/4 v10, 0x4

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v2, p0, Lfbo;->j:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_5d
    aput v4, v5, v7

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v0, p0, Lfbo;->c:Lfay;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget v2, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_60
    aput v4, v0, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_61
    rem-int v0, v0, v1

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

    :goto_62
    iget-object v3, p0, Lfbo;->k:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_63
    aput v3, v0, v10

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget v2, v0, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_65
    iget-object p0, p0, Lfbo;->j:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_66
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :goto_67
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->setValues([F)V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_6a
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v0, p0, Lfbo;->d:Lfay;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_6c
    check-cast v0, Lfbc;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6d
    double-to-float v4, v4

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v2, p0, Lfbo;->j:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_70
    cmpl-float v1, v2, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_71
    invoke-direct {p0}, Lfbo;->7ecc92917e9c4556cc19f457ddc41af8m()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v3, p0, Lfbo;->m:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_73
    if-eqz v3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_b
    goto/32 :goto_6

    nop

    nop

    :goto_74
    aput v3, v5, v10

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const/4 v7, 0x1

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_76
    iget v4, v0, Lffm;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-eqz v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_79
    double-to-float v0, v5

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_7a
    neg-float v3, v3

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_7b
    iget-object v12, p0, Lfbo;->k:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7c
    if-nez v2, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_d
    :goto_7d
    goto/32 :goto_6f

    nop

    nop

    :goto_7e
    iget-object v0, p0, Lfbo;->f:Lfbc;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v0, p0, Lfbo;->l:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_6e

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_82
    neg-float v8, v4

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_83
    if-nez v0, :cond_e

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v5, p0, Lfbo;->n:[F

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_86
    iget-object v5, p0, Lfbo;->g:Lfbc;

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_87
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_89
    if-eqz v5, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    :cond_10
    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_8a
    const/4 v6, 0x0

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

    :goto_8b
    goto/16 :goto_f

    nop

    :goto_8c
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_8d
    double-to-float v3, v5

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    cmpl-float v2, v4, v2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v3, p0, Lfbo;->m:Landroid/graphics/Matrix;

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

    :goto_91
    check-cast v0, Lffm;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v5}, Lfbc;->k()F

    move-result v5

    nop

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

    nop

    :goto_93
    invoke-virtual {v0}, Lfay;->e()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v0}, Lfay;->e()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    float-to-double v5, v3

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    cmpl-float v2, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    check-cast v0, Landroid/graphics/PointF;

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

    :goto_98
    neg-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_99
    if-eqz v2, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_11
    :goto_9a
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_9b
    cmpl-float v2, v2, v1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_9c
    aput v2, v5, v11

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_9d
    move v4, v2

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_9e
    iget v0, v0, Lffm;->b:F

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const v0, 0xa

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop
.end method

.method public final b(F)Landroid/graphics/Matrix;
    .locals 9

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    double-to-float v3, v3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_23

    nop

    :goto_8
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v3, v2, Lffm;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_c
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :goto_10
    goto/32 :goto_36

    nop

    nop

    :goto_11
    iget v3, v1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_14
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_15
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    mul-float/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_20

    nop

    nop

    :goto_18
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p0, Lfbo;->j:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1d
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1e
    float-to-double v3, v3

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1f
    iget p1, v1, Landroid/graphics/PointF;->y:F

    nop

    nop

    :goto_20
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lfbo;->d:Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v2, Lffm;

    nop

    nop

    :goto_23
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_24
    move-object v2, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lfbo;->b:Lfay;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x6

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    float-to-double v7, v2

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2d

    nop

    nop

    :goto_29
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v2, p0, Lfbo;->j:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2b
    move v3, p1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2e
    mul-float/2addr v4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Lfay;->e()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_31
    if-eqz v1, :cond_5

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast v1, Landroid/graphics/PointF;

    nop

    nop

    :goto_33
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v2, p0, Lfbo;->c:Lfay;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v3, p0, Lfbo;->j:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Lfbo;->j:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_37
    iget v2, v2, Lffm;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_38
    float-to-double v5, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3a
    mul-float/2addr v0, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0}, Lfay;->e()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3c
    double-to-float v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3d
    if-nez v0, :cond_6

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3e
    iget v4, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3f
    check-cast v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v2}, Lfay;->e()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_42
    goto/16 :goto_12

    nop

    :goto_43
    goto/32 :goto_11

    nop

    nop

    :goto_44
    invoke-virtual {v2}, Lfay;->e()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_45
    iget-object v2, p0, Lfbo;->a:Lfay;

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

    :goto_46
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_47
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_48
    if-eqz v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_29

    nop

    nop

    :goto_4a
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Lfbo;->j:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4c
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_28

    nop

    :goto_4d
    const/4 p1, 0x0

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

    :goto_4e
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop
.end method

.method public final c(Lfdc;)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfbo;->h:Lfay;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Lfdc;->i(Lfay;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Lfdc;->i(Lfay;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lfbo;->d:Lfay;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Lfdc;->i(Lfay;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0}, Lfdc;->i(Lfay;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lfbo;->c:Lfay;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Lfdc;->i(Lfay;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v0}, Lfdc;->i(Lfay;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lfbo;->g:Lfbc;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lfbo;->a:Lfay;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lfbo;->f:Lfbc;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    iget-object v0, p0, Lfbo;->i:Lfay;

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

    :goto_e
    invoke-virtual {p1, v0}, Lfdc;->i(Lfay;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Lfdc;->i(Lfay;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lfbo;->e:Lfay;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lfbo;->b:Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v0}, Lfdc;->i(Lfay;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final d(Lfat;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfbo;->c:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lfbo;->e:Lfay;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    iget-object p0, p0, Lfbo;->g:Lfbc;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Lfay;->h(Lfat;)V

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Lfay;->h(Lfat;)V

    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Lfay;->h(Lfat;)V

    :goto_9
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p1}, Lfay;->h(Lfat;)V

    :goto_e
    goto/32 :goto_23

    nop

    nop

    :goto_f
    invoke-virtual {v0, p1}, Lfay;->h(Lfat;)V

    :goto_10
    goto/32 :goto_3

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1}, Lfay;->h(Lfat;)V

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lfbo;->b:Lfay;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    invoke-virtual {v0, p1}, Lfay;->h(Lfat;)V

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lfbo;->i:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_4

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    :goto_1a
    if-nez v0, :cond_6

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

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lfbo;->h:Lfay;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lfbo;->a:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1d
    if-nez v0, :cond_7

    nop

    goto/32 :goto_12

    nop

    :cond_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    :goto_1f
    invoke-virtual {v0, p1}, Lfay;->h(Lfat;)V

    :goto_20
    goto/32 :goto_1b

    nop

    nop

    :goto_21
    invoke-virtual {p0, p1}, Lfay;->h(Lfat;)V

    :goto_22
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lfbo;->f:Lfbc;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lfbo;->d:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final e(Ljava/lang/Object;Lffl;)Z
    .locals 3

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_7

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
    goto/32 :goto_8

    nop

    nop

    :goto_4
    iput-object p1, p0, Lfbo;->e:Lfay;

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_18

    nop

    nop

    :goto_6
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_39

    nop

    nop

    :goto_8
    iput-object p2, p1, Lfay;->d:Lffl;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_9
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_46

    nop

    nop

    :goto_a
    sget-object v0, Lezr;->c:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lezr;->g:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lfbo;->b:Lfay;

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

    :goto_e
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4d

    nop

    nop

    :goto_f
    sget-object v0, Lezr;->p:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    iput-object p2, p1, Lfay;->d:Lffl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    :goto_14
    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :cond_4
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Lfbo;->a:Lfay;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p2, p0, Lfay;->d:Lffl;

    nop

    :goto_18
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, v1}, Lffj;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lfbo;->e:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, v1}, Lffj;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_1c
    if-eq p1, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p1, Lfbc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lfbo;->g:Lfbc;

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

    :goto_1f
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_18

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p1, p0, Lfbo;->d:Lfay;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_23
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p1, p2, v0}, Lfbp;-><init>(Lffl;Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_26
    if-eq p1, v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :cond_6
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz p1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_7
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0}, Lffm;-><init>()V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_18

    nop

    :goto_2a
    goto/32 :goto_a

    nop

    nop

    :goto_2b
    new-instance p1, Lfbp;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance p1, Lfbc;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object p1, p0, Lfbo;->f:Lfbc;

    nop

    nop

    :goto_2e
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2f
    iput-object p2, v0, Lfbl;->f:Lffl;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_30
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p1, p0, Lfbo;->d:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/16 v0, 0x64

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sget-object v0, Lezr;->r:Ljava/lang/Float;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {p1, p2, v0}, Lfbp;-><init>(Lffl;Ljava/lang/Object;)V

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_36
    iget-object p1, p0, Lfbo;->i:Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Lfbo;->f:Lfbc;

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_38
    goto/32 :goto_1

    nop

    nop

    :goto_39
    goto/32 :goto_5b

    nop

    nop

    :goto_3a
    if-eq p1, v0, :cond_8

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eqz p1, :cond_9

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1d

    nop

    nop

    :goto_3c
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_3e
    invoke-direct {p1, p2, v0}, Lfbp;-><init>(Lffl;Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3f
    iput-object p2, p1, Lfay;->d:Lffl;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_40
    instance-of v1, v0, Lfbl;

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

    :goto_41
    iput-object p2, p1, Lfay;->d:Lffl;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_42
    invoke-direct {p1, v0}, Lfbc;-><init>(Ljava/util/List;)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-eq p1, v0, :cond_a

    nop

    goto/32 :goto_52

    nop

    :cond_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_44
    if-eqz p1, :cond_b

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :cond_b
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-eq p1, v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_36

    nop

    nop

    :goto_46
    new-instance p1, Lfbp;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_47
    iget-object p1, p0, Lfbo;->a:Lfay;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v0, Lezr;->C:Ljava/lang/Float;

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_49
    iput-object p2, p1, Lfay;->d:Lffl;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object v0, Lezr;->i:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {p1, p2, v0}, Lfbp;-><init>(Lffl;Ljava/lang/Object;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_4d
    iget-object p1, p0, Lfbo;->f:Lfbc;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p1, p2, v0}, Lfbp;-><init>(Lffl;Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4f
    iget-object p1, p0, Lfbo;->g:Lfbc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_50
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_53
    new-instance p1, Lfbp;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iput-object p1, p0, Lfbo;->g:Lfbc;

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_57
    iput-object p1, p0, Lfbo;->b:Lfay;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    sget-object v0, Lezr;->h:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_59
    sget-object v0, Lezr;->q:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v0, p0, Lfbo;->b:Lfay;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_5b
    sget-object v0, Lezr;->f:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_5e
    if-eq p1, v0, :cond_d

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

    :cond_d
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    sget-object v0, Lezr;->o:Lffm;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_61
    if-eq p1, v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    :cond_e
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/high16 v2, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-nez v1, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object p1, p0, Lfbo;->c:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_18

    nop

    nop

    :goto_66
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    new-instance v0, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-eq p1, v0, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_10
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_6b
    new-instance p1, Lfbp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_6c
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-eq p1, v0, :cond_11

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_6f
    iput-object p2, p1, Lfay;->d:Lffl;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_70
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_18

    nop

    nop

    :goto_72
    goto/32 :goto_34

    nop

    nop

    :goto_73
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_74
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    new-instance v0, Lffm;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_79
    check-cast v0, Lfbl;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_7a
    iput-object p2, p0, Lfay;->d:Lffl;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_7b
    if-eqz p1, :cond_12

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_12
    goto/32 :goto_53

    nop

    nop

    :goto_7c
    new-instance v0, Lffj;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_7d
    new-instance p1, Lfbp;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_7e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    new-instance v0, Lffj;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_80
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

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

    :goto_82
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_83
    sget-object v0, Lezr;->D:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const v1, 0xd

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_85
    invoke-direct {p1, p2, v0}, Lfbp;-><init>(Lffl;Ljava/lang/Object;)V

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_86
    iget-object p1, p0, Lfbo;->h:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_87
    if-eq p1, v0, :cond_13

    nop

    goto/32 :goto_6d

    nop

    :cond_13
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-direct {p1, v0}, Lfbc;-><init>(Ljava/util/List;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_89
    check-cast v0, Lfbl;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object v0, p0, Lfbo;->b:Lfay;

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iput-object p2, p1, Lfay;->d:Lffl;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_8c
    new-instance p1, Lfbp;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    instance-of v1, v0, Lfbl;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_8e
    if-lez v0, :cond_14

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_14
    goto/32 :goto_38

    nop

    :goto_8f
    if-eqz p1, :cond_15

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_90
    goto/16 :goto_18

    nop

    nop

    :goto_91
    goto/32 :goto_11

    nop

    nop

    :goto_92
    iput-object p2, v0, Lfbl;->e:Lffl;

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_93
    goto/16 :goto_18

    nop

    :goto_94
    goto/32 :goto_4a

    nop

    nop

    :goto_95
    iput-object p1, p0, Lfbo;->i:Lfay;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-direct {p1, p2, v0}, Lfbp;-><init>(Lffl;Ljava/lang/Object;)V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_99
    add-int v0, v0, v1

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_9a
    new-instance p1, Lfbp;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_9b
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    if-eqz p1, :cond_16

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iput-object p1, p0, Lfbo;->c:Lfay;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object p0, v0, Lfbl;->f:Lffl;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_a0
    iget-object p0, v0, Lfbl;->e:Lffl;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_a1
    iput-object p1, p0, Lfbo;->h:Lfay;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
