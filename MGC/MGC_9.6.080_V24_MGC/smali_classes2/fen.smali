.class public final Lfen;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfet;


# static fields
.field public static final a:Lfen;

.field private static final b:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "o"

    nop

    goto/32 :goto_e

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
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lfen;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lfen;->b:Liof;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lfen;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    const-string v3, "v"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    const/4 v0, 0x0

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

    :goto_a
    sget-object v0, Lcom/google/android/libraries/phenotype/client/stable/NyRu/FYEOygtxYXoPt;->kdY:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    const-string v2, "c"

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

    nop

    :goto_f
    const v1, 0x18

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Liof;->Z([Ljava/lang/String;)Liof;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    sput-object v0, Lfen;->a:Lfen;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lfew;F)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v5, :cond_0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Lfew;->m()V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v1, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_4
    if-eq p2, v6, :cond_1

    nop

    goto/32 :goto_a

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

    nop

    :goto_5
    invoke-virtual {p1}, Lfew;->p()I

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

    :goto_6
    check-cast p0, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lfew;->h()V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lfew;->i()V

    :goto_a
    goto/32 :goto_17

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_c
    move-object v3, v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    :goto_f
    invoke-static {v0, v1}, Lffd;->c(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

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

    :goto_10
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

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

    :goto_11
    check-cast p1, Landroid/graphics/PointF;

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

    :goto_12
    new-instance p0, Lfcv;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, p2}, Lfed;->d(Lfew;F)Ljava/util/List;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v9, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_16
    invoke-direct {v1, p0, p1, v0}, Lfbr;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    if-nez p0, :cond_2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lfew;->j()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1e
    invoke-static {p1, p2}, Lfed;->d(Lfew;F)Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_1f
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_21
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_22
    move v4, v1

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x5

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

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-ne v5, v6, :cond_3

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-ne v5, v6, :cond_4

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_58

    nop

    nop

    :goto_29
    invoke-static {v8, v7}, Lffd;->c(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    nop

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

    :goto_2a
    goto :goto_23

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2d
    new-instance v9, Lfbr;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 p0, 0x0

    nop

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

    :goto_30
    invoke-virtual {p1}, Lfew;->p()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v8, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_32
    if-lt v0, p1, :cond_5

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_42

    nop

    nop

    :goto_33
    invoke-virtual {p1}, Lfew;->g()V

    :goto_34
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v1, Lfbr;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_36
    if-nez v5, :cond_6

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_6
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v6, Landroid/graphics/PointF;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {v9, v7, v8, v6}, Lfbr;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p0, p2, v4, v5}, Lfcv;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    :goto_3b
    goto/32 :goto_1b

    nop

    nop

    :goto_3c
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_23

    nop

    nop

    :goto_3e
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_40
    throw p0

    nop

    nop

    :goto_41
    goto/32 :goto_62

    nop

    nop

    :goto_42
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v6, v9}, Lffd;->c(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v8

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

    nop

    nop

    :goto_44
    check-cast v7, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_45
    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_46
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto :goto_3b

    nop

    :goto_48
    goto/32 :goto_1d

    nop

    nop

    :goto_49
    if-eq p0, v0, :cond_7

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_7
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

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

    nop

    nop

    :goto_4c
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_4d
    const-string p1, "Shape data was missing information."

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4e
    invoke-static {p1, p2}, Lfed;->d(Lfew;F)Ljava/util/List;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_4f
    sget-object v5, Lfen;->b:Liof;

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

    :goto_50
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_53
    if-ne v5, v0, :cond_8

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_54
    const/4 v6, 0x3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct {p0, p1, v1, p2}, Lfcv;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1}, Lfew;->o()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_57
    if-nez v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1}, Lfew;->l()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_59
    add-int/lit8 v7, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p1, v5}, Lfew;->q(Liof;)I

    move-result v5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    new-instance p0, Lfcv;

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
    invoke-virtual {p1}, Lfew;->n()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {p0, p1}, Lffd;->c(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_a
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_60
    check-cast p2, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_61
    const/4 v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_6c

    nop

    nop

    :goto_63
    new-instance p1, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_64
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_67
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_68
    move-object v2, p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_69
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_6a
    if-lez v0, :cond_b

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

    nop

    :cond_b
    goto/32 :goto_6b

    nop

    :goto_6b
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v4, :cond_c

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_23

    nop

    nop

    :goto_6f
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_70
    if-nez p1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method
