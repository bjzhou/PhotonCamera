.class final Leks;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Landroid/graphics/Matrix;


# instance fields
.field b:Landroid/graphics/Paint;

.field c:Landroid/graphics/Paint;

.field final d:Lekq;

.field e:F

.field f:F

.field g:F

.field h:F

.field i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/Boolean;

.field final l:Lwu;

.field private final m:Landroid/graphics/Path;

.field private final n:Landroid/graphics/Path;

.field private final o:Landroid/graphics/Matrix;

.field private p:Landroid/graphics/PathMeasure;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_3

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
    new-instance v0, Landroid/graphics/Matrix;

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

    :goto_3
    sput-object v0, Leks;->a:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_b

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

    :goto_1
    iput v0, p0, Leks;->e:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Leks;->i:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Leks;->j:Ljava/lang/String;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_14

    nop

    nop

    :goto_5
    new-instance v0, Lwu;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Leks;->g:F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Landroid/graphics/Path;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Leks;->k:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Landroid/graphics/Path;

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
    const/16 v0, 0xff

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

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Leks;->o:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0}, Lwu;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Lekq;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Leks;->f:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Leks;->l:Lwu;

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

    nop

    :goto_14
    iput-object v0, p0, Leks;->m:Landroid/graphics/Path;

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

    :goto_15
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Leks;->d:Lekq;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_18
    iput v0, p0, Leks;->h:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    iput-object v0, p0, Leks;->n:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lekq;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Leks;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    iget v1, p1, Leks;->h:F

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, p1, Leks;->i:I

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    iput v1, p0, Leks;->e:F

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

    :goto_3
    const/16 v0, 0xff

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    iput-object v0, p0, Leks;->o:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v1, p0, Leks;->j:Ljava/lang/String;

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

    :goto_6
    iget-object p1, p1, Leks;->k:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_8
    iput v0, p0, Leks;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_b
    iput v1, p0, Leks;->q:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    goto/32 :goto_26

    nop

    nop

    :goto_d
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Leks;->k:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_11
    iget-object v1, p1, Leks;->j:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    iput v0, p0, Leks;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_13
    new-instance v1, Lekq;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1, v2, v0}, Lekq;-><init>(Lekq;Lwu;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    :goto_16
    iget-object v2, p1, Leks;->d:Lekq;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    new-instance v0, Landroid/graphics/Matrix;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    iput-object v0, p0, Leks;->l:Lwu;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1a
    iput-object v1, p0, Leks;->d:Lekq;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v1, p0, Leks;->i:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1e
    iput v1, p0, Leks;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1f
    iget-object v2, p1, Leks;->m:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput v0, p0, Leks;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    iput-object v0, p0, Leks;->j:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    iget v1, p1, Leks;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_24
    iput v0, p0, Leks;->g:F

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

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    :goto_26
    goto/32 :goto_15

    nop

    nop

    :goto_27
    iget-object v2, p1, Leks;->n:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x0

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

    :goto_29
    new-instance v1, Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2a
    iput-object v1, p0, Leks;->n:Landroid/graphics/Path;

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

    :goto_2b
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p1, Leks;->j:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0}, Lwu;-><init>()V

    goto/32 :goto_18

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v1, p0}, Lyo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v1, p1, Leks;->q:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_31
    new-instance v1, Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_32
    iput v1, p0, Leks;->h:F

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

    :goto_33
    iput-object v1, p0, Leks;->m:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_34
    iget v1, p1, Leks;->e:F

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

    :goto_35
    iput v0, p0, Leks;->h:F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v0, p0, Leks;->k:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_37
    iput v1, p0, Leks;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_38
    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v0, Lwu;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3a
    iget v1, p1, Leks;->g:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lekq;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V
    .locals 17

    goto/32 :goto_2c

    nop

    nop

    :goto_0
    mul-float/2addr v5, v2

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v13, v6, Leks;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_2
    move-object/from16 v3, p3

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sub-float/2addr v5, v13

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v2, v14}, Lekv;->a(IF)I

    move-result v2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v14, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_6
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, v7, Lekq;->a:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    move-object/from16 v0, p0

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

    :goto_9
    invoke-virtual {v8, v0, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v2, v4}, Lekv;->a(IF)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, v0, Lekp;->l:Lnnt;

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, v2, Lnnt;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_f
    iget v2, v2, Lnnt;->a:I

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v13, v6, Leks;->p:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v13, v6, Leks;->c:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v10, v10, 0x1

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, v6, Leks;->n:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v14, v0, Lekp;->o:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_ee

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v4, v0, Lekp;->c:F

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

    :goto_19
    iget v2, v0, Lekp;->c:F

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_1a
    rem-float/2addr v11, v13

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_1b
    if-gtz v11, :cond_1

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v14, 0x1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1d
    if-eqz v14, :cond_2

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v13, v6, Leks;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move v5, v4

    nop

    :goto_20
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v15, 0x1

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_22
    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v11, v2}, Ldsw;->D([Ldub;Landroid/graphics/Path;)V

    :goto_24
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v12, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v2, Landroid/graphics/Shader;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v12, v11}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v14, v6, Leks;->o:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v13, :cond_3

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aget v13, v2, v4

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_2b
    check-cast v1, Lekq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2c
    const v0, 0xa

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v12, v6, Leks;->p:Landroid/graphics/PathMeasure;

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_2f
    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

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

    nop

    :goto_30
    add-float/2addr v14, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_31
    invoke-virtual {v11, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Lekr;->w()Z

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v12}, Landroid/graphics/PathMeasure;-><init>()V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, v7, Lekq;->a:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_35
    new-array v2, v2, [F

    nop

    fill-array-data v2, :array_0

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move-object/from16 v6, p0

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto/32 :goto_89

    nop

    nop

    :goto_38
    iget-object v11, v7, Lekq;->a:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_39
    aget v13, v2, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_3b
    iget v0, v0, Lekr;->o:I

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_3c
    const/4 v12, 0x0

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_3d
    invoke-virtual {v2, v14}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto/32 :goto_14

    nop

    nop

    :goto_3e
    instance-of v1, v0, Lekr;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v11, v6, Leks;->p:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move/from16 v3, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget v12, v0, Lekp;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_ee

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_ba

    nop

    nop

    :goto_44
    if-eqz v13, :cond_4

    nop

    nop

    goto/32 :goto_a9

    nop

    :cond_4
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_46
    add-float/2addr v11, v12

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_48
    goto/32 :goto_ab

    nop

    nop

    :goto_49
    iget-object v11, v6, Leks;->o:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast v0, Ldwc;

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v12}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_4c
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v8, v2, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_4e
    goto/32 :goto_b9

    nop

    nop

    :goto_4f
    move/from16 v5, p5

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_50
    iget-object v2, v0, Lekp;->k:Lnnt;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v4, v2, v11}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v2, v11}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_ae

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_55
    div-float/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v4, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/high16 v13, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/32 :goto_16

    nop

    nop

    :goto_59
    if-nez v14, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5a
    div-float/2addr v5, v2

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_48

    nop

    :goto_5c
    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    :goto_5e
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_20

    nop

    nop

    :goto_62
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_63
    return-void

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :goto_64
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v12, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_68
    goto/16 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_6a
    if-lt v10, v0, :cond_6

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    mul-float/2addr v0, v5

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_6c
    float-to-double v11, v4

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_6d
    iget-object v12, v6, Leks;->o:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_6f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_70
    if-eqz v0, :cond_7

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v2, v0, Lekp;->l:Lnnt;

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_73
    aget v12, v2, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v2, v14}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_75
    iget v2, v2, Lnnt;->a:I

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

    :goto_76
    invoke-virtual {v13, v11, v12, v2, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_77
    if-nez v11, :cond_8

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_60

    nop

    nop

    :goto_79
    cmpl-float v2, v5, v4

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_aa

    nop

    nop

    :goto_7c
    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    aget v13, v2, v12

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_7e
    iget v14, v0, Lekp;->j:F

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v2, v6, Leks;->m:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_80
    double-to-float v4, v4

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_81
    if-nez v2, :cond_9

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_72

    nop

    nop

    :goto_82
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_83
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-eqz v12, :cond_a

    nop

    goto/32 :goto_a3

    nop

    :cond_a
    goto/32 :goto_eb

    nop

    nop

    :goto_85
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_86
    new-instance v13, Landroid/graphics/Paint;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_87
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    nop

    nop

    :goto_88
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v0, v7, Lekq;->a:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v11, v4, v14, v2, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast v2, Landroid/graphics/Shader;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_8c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_8d
    cmpl-float v13, v11, v14

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

    nop

    :goto_8e
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8f
    if-gtz v13, :cond_b

    nop

    nop

    goto/32 :goto_94

    nop

    :cond_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v12, v13, v9}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const/4 v15, 0x3

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_92
    mul-float/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    goto/16 :goto_c2

    nop

    nop

    :goto_94
    goto/32 :goto_96

    nop

    nop

    :goto_95
    mul-float v5, v5, v16

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_96
    const/4 v15, 0x1

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget v2, v0, Lekp;->d:F

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_98
    iget v14, v0, Lekp;->f:F

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_99
    move-object/from16 v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget v3, v6, Leks;->g:F

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    aget v2, v2, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9c
    if-nez v11, :cond_c

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_c
    goto/32 :goto_f2

    nop

    nop

    :goto_9d
    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_9e
    iget-object v0, v7, Lekq;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9f
    if-eqz v12, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    move/from16 v1, p4

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    mul-float/2addr v13, v12

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_a2
    iput-object v12, v6, Leks;->p:Landroid/graphics/PathMeasure;

    nop

    nop

    :goto_a3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_a4
    if-nez v2, :cond_e

    nop

    goto/32 :goto_ee

    nop

    nop

    :cond_e
    goto/32 :goto_c3

    nop

    nop

    :goto_a5
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/32 :goto_10b

    nop

    nop

    :goto_a6
    float-to-double v13, v13

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

    :goto_a7
    if-nez v14, :cond_f

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_a9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iput-object v13, v6, Leks;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v0, v6, Leks;->n:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_ad
    sget-object v14, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    nop

    nop

    :goto_ae
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_af
    iget-object v12, v6, Leks;->p:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :goto_b1
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    move/from16 v4, p4

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :goto_b4
    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    mul-float/2addr v11, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v2}, Lnnt;->h()Z

    move-result v14

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    move/from16 v16, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_b9
    iget-object v2, v0, Lekp;->k:Lnnt;

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_ba
    move/from16 v1, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_bb
    instance-of v1, v0, Lekq;

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_bd
    iget-object v2, v6, Leks;->n:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iget-object v0, v7, Lekq;->b:Ljava/util/ArrayList;

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_bf
    iget-object v4, v6, Leks;->n:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_c0
    double-to-float v11, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_c1
    invoke-virtual {v12, v11, v14, v2, v15}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :goto_c2
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object v2, v6, Leks;->m:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    move-object/from16 v8, p3

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_c5
    iget v14, v0, Lekp;->d:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    mul-float/2addr v2, v4

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_c7
    rem-float/2addr v14, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_c8
    new-instance v13, Landroid/graphics/Paint;

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_c9
    const/high16 v4, 0x437f0000    # 255.0f

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    goto/16 :goto_43

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iput-object v13, v6, Leks;->c:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_cd
    int-to-float v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_ce
    move-object v1, v0

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

    :goto_cf
    iget-object v13, v6, Leks;->m:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v13, v6, Leks;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_d1
    iget-object v1, v7, Lekq;->j:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_d9

    nop

    nop

    :goto_d4
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    iget-object v2, v2, Lnnt;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    goto/16 :goto_88

    nop

    nop

    nop

    nop

    :goto_d7
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_d8
    aget v4, v2, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object v11, v0, Lekr;->m:[Ldub;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_db
    if-lez v0, :cond_10

    nop

    nop

    goto/32 :goto_60

    nop

    :cond_10
    goto/32 :goto_5f

    nop

    :goto_dc
    iget v11, v0, Lekp;->e:F

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_dd
    if-nez v12, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_11
    :goto_de
    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_df
    if-nez v1, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_e0
    iget-object v0, v6, Leks;->n:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {v2}, Lnnt;->k()Z

    move-result v2

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_95

    nop

    nop

    :goto_e6
    cmpl-float v11, v2, v4

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_e7
    check-cast v0, Lekr;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    const/16 v11, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    if-nez v14, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_13
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    new-instance v12, Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    iget-object v11, v6, Leks;->o:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_ed
    move/from16 v3, p5

    nop

    nop

    :goto_ee
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-virtual/range {v0 .. v5}, Leks;->a(Lekq;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    cmpl-float v12, v12, v13

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f2
    iget-object v4, v6, Leks;->n:Landroid/graphics/Path;

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_f3
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_f4
    iget v5, v6, Leks;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_f5
    if-nez v14, :cond_14

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    int-to-float v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_f7
    invoke-virtual {v2}, Lnnt;->h()Z

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_f8
    check-cast v0, Lekp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    iget v0, v0, Lekp;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    aget v12, v2, v12

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_fb
    iget v12, v0, Lekp;->g:F

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_fc
    mul-float/2addr v14, v12

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    cmpl-float v12, v11, v4

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_fe
    aget v5, v2, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_100
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_68

    nop

    nop

    :goto_101
    iget-object v11, v6, Leks;->n:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_102
    goto/16 :goto_115

    nop

    :goto_103
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_104
    float-to-double v4, v12

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_105
    const/4 v14, 0x1

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_106
    const/4 v12, 0x2

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    invoke-virtual {v2}, Lnnt;->k()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_108
    iget-object v14, v0, Lekp;->i:Landroid/graphics/Paint$Join;

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_109
    float-to-double v13, v13

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    iget-object v0, v6, Leks;->n:Landroid/graphics/Path;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_10b
    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_10c
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    if-nez v2, :cond_15

    nop

    goto/32 :goto_ee

    nop

    nop

    :cond_15
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    iget-object v12, v6, Leks;->o:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_110
    iget-object v12, v6, Leks;->p:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_111
    move-object/from16 v7, p1

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    iget-object v14, v0, Lekp;->h:Landroid/graphics/Paint$Cap;

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_113
    iget-object v4, v6, Leks;->o:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_114
    move v10, v9

    nop

    nop

    nop

    nop

    nop

    :goto_115
    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_116
    div-float/2addr v4, v5

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_117
    iget-object v12, v6, Leks;->p:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_118
    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/32 :goto_97

    nop

    nop

    :goto_119
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getAlpha()F
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    div-float/2addr p0, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/high16 v0, 0x437f0000    # 255.0f

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    invoke-virtual {p0}, Leks;->getRootAlpha()I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public getRootAlpha()I
    .locals 0

    goto/32 :goto_1

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
    iget p0, p0, Leks;->i:I

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public setAlpha(F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

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

    :goto_1
    mul-float/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Leks;->setRootAlpha(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    float-to-int p1, p1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public setRootAlpha(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput p1, p0, Leks;->i:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
