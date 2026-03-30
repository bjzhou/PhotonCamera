.class public abstract Lfaa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfat;
.implements Lfaj;
.implements Lfad;


# instance fields
.field protected final a:Lfdc;

.field final b:Landroid/graphics/Paint;

.field c:F

.field private final d:Landroid/graphics/PathMeasure;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/RectF;

.field private final h:Lezm;

.field private final i:Ljava/util/List;

.field private final j:[F

.field private final k:Lfay;

.field private final l:Lfay;

.field private final m:Ljava/util/List;

.field private final n:Lfay;

.field private o:Lfay;

.field private p:Lfay;

.field private q:Lfbb;


# direct methods
.method public constructor <init>(Lezm;Lfdc;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLfcc;Lfca;Ljava/util/List;Lfca;)V
    .locals 2

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_0
    new-array p1, p1, [F

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_3
    check-cast p3, Lfay;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4
    invoke-virtual {p5}, Lfca;->a()Lfay;

    move-result-object p5

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p3, p0, Lfaa;->k:Lfay;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p4, p0, Lfaa;->m:Ljava/util/List;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move p3, p1

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Lfaa;->a:Lfdc;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lezy;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p3, p0, Lfaa;->k:Lfay;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2, p3}, Lfdc;->i(Lfay;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_55

    nop

    nop

    :goto_13
    invoke-virtual {p3, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    if-lt p3, p4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_5a

    nop

    nop

    :goto_15
    invoke-direct {v0, v1}, Lezy;-><init>(I)V

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_16
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :cond_3
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_17
    new-instance v0, Landroid/graphics/PathMeasure;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_59

    nop

    nop

    :goto_19
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p3, p0}, Lfay;->h(Lfat;)V

    :goto_1c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lfaa;->i:Ljava/util/List;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1e
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    :cond_4
    goto/32 :goto_71

    nop

    :goto_1f
    goto/32 :goto_72

    nop

    :goto_20
    new-instance v0, Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_21
    invoke-virtual {p3, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_53

    nop

    nop

    :goto_22
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_23
    iput-object p1, p0, Lfaa;->p:Lfay;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_27
    iput-object p1, p0, Lfaa;->q:Lfbb;

    nop

    nop

    :goto_28
    goto/32 :goto_6a

    nop

    nop

    :goto_29
    iget-object p3, p0, Lfaa;->m:Ljava/util/List;

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

    :goto_2a
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2}, Lfdc;->q()Lhwy;

    move-result-object p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2d
    iget-object p1, p1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_2e
    check-cast p4, Lfay;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p2, p4}, Lfdc;->i(Lfay;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz p9, :cond_5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0x2

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_34
    iput-object p1, p0, Lfaa;->j:[F

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

    nop

    nop

    :goto_35
    goto/16 :goto_b

    nop

    :goto_36
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_37
    add-int/lit8 p3, p3, 0x1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_38
    if-lt p1, p3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :cond_6
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v0, p0, Lfaa;->f:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance p1, Lfbb;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Lfca;->a()Lfay;

    move-result-object p1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p3, p0, Lfaa;->n:Lfay;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_3f
    const v1, 0xf

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

    :goto_40
    invoke-virtual {p6}, Lfcc;->a()Lfay;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_41
    iput-object p1, p0, Lfaa;->n:Lfay;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_42
    iget-object p4, p0, Lfaa;->m:Ljava/util/List;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p2}, Lfdc;->q()Lhwy;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    new-instance v0, Landroid/graphics/RectF;

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

    :goto_45
    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p1, p0, Lfaa;->p:Lfay;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p2, p3}, Lfdc;->i(Lfay;)V

    :goto_48
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_49
    if-nez p3, :cond_7

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_4a
    iget-object p1, p0, Lfaa;->n:Lfay;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p2}, Lfdc;->r()Lfdn;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p2, p3}, Lfdc;->i(Lfay;)V

    goto/32 :goto_5

    nop

    nop

    :goto_4e
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_51
    iput-object v0, p0, Lfaa;->b:Landroid/graphics/Paint;

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

    :goto_52
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_53
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_54
    iput-object p1, p0, Lfaa;->h:Lezm;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_55
    iget-object p3, p0, Lfaa;->l:Lfay;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p7}, Lfca;->a()Lfay;

    move-result-object p1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iput-object p1, p0, Lfaa;->k:Lfay;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_58
    iput-object p1, p0, Lfaa;->n:Lfay;

    nop

    nop

    :goto_59
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p4, p0, Lfaa;->m:Ljava/util/List;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5b
    new-instance v0, Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p2, p1}, Lfdc;->i(Lfay;)V

    :goto_5d
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p9}, Lfca;->a()Lfay;

    move-result-object p1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast p5, Lfca;

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

    :goto_60
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_61
    new-instance p1, Ljava/util/ArrayList;

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

    :goto_62
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_63
    iput-object p1, p0, Lfaa;->l:Lfay;

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

    :goto_64
    iput-object v0, p0, Lfaa;->d:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_65
    invoke-virtual {p2}, Lfdc;->r()Lfdn;

    move-result-object p1

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

    :goto_66
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_67
    iget-object p3, p0, Lfaa;->l:Lfay;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_68
    add-int/lit8 p3, p3, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_69
    if-lt p3, p4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_6a
    return-void

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6c
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-direct {p1, p0, p2, p3}, Lfbb;-><init>(Lfat;Lfdc;Lhwy;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p1, p0}, Lfay;->h(Lfat;)V

    :goto_70
    goto/32 :goto_65

    nop

    nop

    :goto_71
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    move p3, p1

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    check-cast p1, Lfca;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_78
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iput-object v0, p0, Lfaa;->g:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7a
    iput-object v0, p0, Lfaa;->e:Landroid/graphics/Path;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_7d
    iput v1, p0, Lfaa;->c:F

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iput-object p1, p0, Lfaa;->m:Ljava/util/List;

    nop

    goto/32 :goto_78

    nop

    nop
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lffl;)V
    .locals 1

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    :goto_2
    invoke-virtual {p1, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_3e

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, p2}, Lfbp;-><init>(Lffl;)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p2}, Lfbb;->g(Lffl;)V

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    if-eqz p2, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_4c

    nop

    nop

    :goto_9
    sget-object v0, Lezr;->G:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, p0}, Lfdc;->i(Lfay;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lfaa;->p:Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lezr;->J:Ljava/lang/Float;

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_d
    return-void

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    if-eq p1, v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lfaa;->p:Lfay;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    new-instance p1, Lfbp;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p1, Lfbp;

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

    :goto_15
    return-void

    nop

    :goto_16
    sget-object v0, Lezr;->I:Ljava/lang/Float;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, p0}, Lfdc;->i(Lfay;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v0, Lezr;->s:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_5b

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lfaa;->q:Lfbb;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lfaa;->a:Lfdc;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, p2}, Lfbb;->e(Lffl;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eq p1, v0, :cond_3

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lfaa;->o:Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    iput-object p2, p0, Lfay;->d:Lffl;

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

    :goto_23
    sget-object v0, Lezr;->e:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_24
    if-nez p1, :cond_4

    nop

    goto/32 :goto_50

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lfaa;->l:Lfay;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_49

    nop

    nop

    :goto_28
    sget-object v0, Lezr;->j:Ljava/lang/Float;

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

    :goto_29
    iput-object p2, p0, Lfay;->d:Lffl;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, p2}, Lfbb;->b(Lffl;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, p2}, Lfbb;->f(Lffl;)V

    goto/32 :goto_39

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lfaa;->q:Lfbb;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object p2, p1, Lfay;->d:Lffl;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_30
    if-eqz v0, :cond_5

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_31
    if-eq p1, v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_6
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p1, p0, Lfaa;->o:Lfay;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_33
    sget-object v0, Lezr;->H:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p1, p2}, Lfbp;-><init>(Lffl;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eq p1, v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    :goto_36
    if-eqz v0, :cond_8

    nop

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

    :cond_8
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_37
    iput-object p1, p0, Lfaa;->o:Lfay;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_38
    iget-object v0, p0, Lfaa;->q:Lfbb;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_33

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lfaa;->q:Lfbb;

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

    :goto_3c
    sget-object v0, Lezr;->d:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3d
    if-eqz v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p1, p0, Lfaa;->a:Lfdc;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_3f
    if-eqz v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    :goto_43
    goto/32 :goto_23

    nop

    nop

    :goto_44
    iget-object p0, p0, Lfaa;->k:Lfay;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-eq p1, v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, p2}, Lfbb;->c(Lffl;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_47
    iput-object p1, p0, Lfaa;->o:Lfay;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p0, p0, Lfaa;->p:Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_49
    sget-object v0, Lezr;->K:Landroid/graphics/ColorFilter;

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_4a
    if-nez p0, :cond_c

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Lfaa;->q:Lfbb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0, p1}, Lfdc;->k(Lfay;)V

    :goto_50
    goto/32 :goto_8

    nop

    nop

    :goto_51
    goto/16 :goto_41

    nop

    :goto_52
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-eq p1, v0, :cond_d

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-nez p1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-eq p1, v0, :cond_f

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_32

    nop

    nop

    :goto_58
    if-eq p1, v0, :cond_10

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_2b

    nop

    nop

    :goto_5b
    iget-object p1, p0, Lfaa;->a:Lfdc;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method

.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 18

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v8, v0, Lfaa;->b:Landroid/graphics/Paint;

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

    :goto_2
    move v13, v5

    nop

    :goto_3
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_0
    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_5
    if-ltz v17, :cond_1

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v8}, Lfay;->e()Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_7
    mul-float/2addr v9, v12

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_8
    if-ltz v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_c6

    nop

    nop

    :goto_9
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    :goto_a
    const v12, 0x3f7d70a4    # 0.99f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-gtz v16, :cond_3

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_c
    const/high16 v7, 0x437f0000    # 255.0f

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v4, v8, Lezz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e6

    nop

    :goto_f
    iget-object v8, v0, Lfaa;->a:Lfdc;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_10
    sub-float v4, v9, v13

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_11
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    :goto_13
    if-gtz v17, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    :cond_5
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_b3

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v14, v0, Lfaa;->f:Landroid/graphics/Path;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_ef

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v3, :cond_6

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_69

    nop

    nop

    :goto_1a
    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v14, v0, Lfaa;->d:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_1c
    aput v7, v3, v9

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sub-float v13, v9, v12

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v15}, Lfal;->i()Landroid/graphics/Path;

    move-result-object v15

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v13

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    check-cast v9, Lfas;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_21
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_22
    add-float/2addr v12, v13

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_23
    if-eqz v3, :cond_7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_155

    nop

    nop

    :goto_25
    goto/32 :goto_db

    nop

    nop

    nop

    :goto_26
    aget v10, v9, v8

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_27
    invoke-virtual {v8, v3}, Lfdc;->h(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_28
    invoke-static {}, Leyu;->a()V

    :goto_29
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/high16 v6, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_2c
    mul-float/2addr v11, v12

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2d
    iget-object v15, v8, Lezz;->a:Ljava/lang/Object;

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

    :goto_2e
    goto/16 :goto_92

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_31
    cmpl-float v4, v13, v10

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_33
    cmpg-float v12, v9, v12

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_34
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_35
    iget-object v9, v8, Lezz;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v8, :cond_8

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v9, v9, Lfas;->b:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_38
    aget v8, v3, v8

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_39
    check-cast v11, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_3a
    iget-object v13, v0, Lfaa;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_3b
    iget-object v3, v0, Lfaa;->p:Lfay;

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

    :goto_3c
    iget-object v13, v0, Lfaa;->d:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v10}, Lfay;->e()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v3, v0, Lfaa;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    :goto_3f
    mul-float/2addr v10, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    :goto_40
    check-cast v10, Lfay;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_41
    sub-float v13, v10, v13

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_42
    aput v5, v3, v4

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    div-float/2addr v13, v14

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v9, v0, Lfaa;->j:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_29

    nop

    :goto_47
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v10, v11, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_49
    iget-object v11, v8, Lezz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_c2

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_4c
    new-instance v10, Landroid/graphics/DashPathEffect;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_4d
    iget-object v15, v0, Lfaa;->f:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_4e
    iget-object v9, v0, Lfaa;->e:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v14, v15}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_51
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_160

    nop

    nop

    :goto_52
    iget-object v8, v0, Lfaa;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    :goto_53
    move v8, v5

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    :goto_56
    if-nez v3, :cond_9

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v9, v0, Lfaa;->m:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-gtz v3, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_a
    goto/32 :goto_14b

    nop

    nop

    :goto_59
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_5a
    iget-object v9, v8, Lezz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-gez v4, :cond_b

    nop

    nop

    goto/32 :goto_ef

    nop

    :cond_b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    cmpg-float v17, v13, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_5d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const v0, 0x14

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    :goto_60
    div-float/2addr v4, v14

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_62
    cmpg-float v10, v10, v11

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_63
    goto :goto_61

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v3, v8}, Lfbb;->a(Landroid/graphics/Paint;)V

    :goto_66
    goto/32 :goto_78

    nop

    nop

    :goto_67
    iget-object v13, v0, Lfaa;->d:Landroid/graphics/PathMeasure;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_68
    iget-object v4, v0, Lfaa;->f:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_69
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_ac

    nop

    nop

    :goto_6a
    add-float/2addr v10, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    :goto_6b
    cmpg-float v4, v15, v9

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_6c
    cmpl-float v7, v7, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const v7, 0x471a973c

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    mul-float/2addr v10, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_70
    add-float/2addr v13, v11

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_d

    nop

    nop

    :goto_72
    invoke-static/range {p2 .. p2}, Lffi;->b(Landroid/graphics/Matrix;)F

    move-result v8

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v14, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_74
    add-int/lit8 v11, v11, -0x1

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_75
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_76
    aget v7, v3, v4

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_77
    div-float/2addr v13, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_78
    move v3, v4

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_120

    nop

    nop

    nop

    :goto_7a
    invoke-static {v14, v7}, Ljava/lang/Math;->min(FF)F

    move-result v14

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v3, v0, Lfaa;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_7d
    iget-object v11, v11, Lfas;->d:Lfay;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_7e
    cmpg-float v4, v9, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7f
    iget-object v11, v8, Lezz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_153

    nop

    nop

    :goto_80
    sub-float v16, v10, v12

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_81
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_82
    div-float v14, v16, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_83
    cmpg-float v4, v15, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_84
    const/high16 v12, 0x43b40000    # 360.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-direct {v10, v9, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    goto/32 :goto_be

    nop

    nop

    :goto_86
    invoke-interface {v11}, Lfal;->i()Landroid/graphics/Path;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v11}, Lfay;->e()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_3e

    nop

    nop

    :goto_89
    check-cast v7, Lfbc;

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v6, v7, v8}, Lfbe;->k(Lffj;F)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8b
    add-float v13, v9, v12

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_8c
    iput v3, v0, Lfaa;->c:F

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_129

    nop

    nop

    :goto_8e
    iget-object v8, v0, Lfaa;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_8f
    iget-object v9, v0, Lfaa;->j:[F

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_90
    mul-float/2addr v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v12}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v12

    nop

    nop

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_93
    invoke-interface {v10}, Lfal;->i()Landroid/graphics/Path;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_94
    goto/16 :goto_15a

    nop

    nop

    nop

    :goto_95
    goto/32 :goto_6

    nop

    nop

    :goto_96
    iget-object v8, v0, Lfaa;->i:Ljava/util/List;

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

    :goto_97
    iget-object v14, v0, Lfaa;->f:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_98
    const v12, 0x3c23d70a    # 0.01f

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    if-nez v9, :cond_c

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    move-object/from16 v0, p0

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_9c
    if-ltz v10, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    :cond_d
    goto/32 :goto_169

    nop

    nop

    :goto_9d
    add-float v15, v13, v14

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    cmpl-float v12, v10, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object v4, v0, Lfaa;->e:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object v9, v0, Lfaa;->j:[F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_a1
    aput v5, v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    add-int/lit8 v4, v4, -0x1

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    if-lt v8, v9, :cond_e

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_13b

    nop

    nop

    nop

    :goto_a5
    iget-object v10, v8, Lezz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_a6
    mul-float/2addr v7, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_a7
    aput v7, v9, v8

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object v12, v0, Lfaa;->d:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_a9
    check-cast v3, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_aa
    if-gtz v13, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v11, v8, Lezz;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_ac
    goto/16 :goto_136

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_ae
    aget v10, v9, v8

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-eqz v8, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_b0
    iget-object v3, v0, Lfaa;->o:Lfay;

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_b1
    add-int/lit8 v9, v9, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_b5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_b6
    iget-object v13, v0, Lfaa;->e:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_b7
    if-gez v11, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :cond_11
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    aput v10, v9, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_b9
    aput v10, v9, v8

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-static {v14, v4, v13, v5}, Lffi;->d(Landroid/graphics/Path;FFF)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    :goto_bc
    if-lez v4, :cond_12

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :cond_12
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    div-float/2addr v3, v7

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    goto/16 :goto_f9

    nop

    :goto_c0
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    move v13, v5

    nop

    nop

    nop

    :goto_c2
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v3}, Lfay;->e()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_c4
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_14f

    nop

    nop

    :goto_c5
    div-float/2addr v9, v6

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object v4, v0, Lfaa;->f:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_c7
    iget v8, v0, Lfaa;->c:F

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    :goto_c8
    invoke-static {v3}, Lffd;->e(I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    cmpl-float v17, v10, v15

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_cc
    invoke-virtual {v1, v4, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_145

    nop

    nop

    :goto_cd
    goto :goto_ca

    nop

    nop

    :goto_ce
    goto/32 :goto_35

    nop

    nop

    :goto_cf
    iget-object v10, v0, Lfaa;->e:Landroid/graphics/Path;

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

    nop

    :goto_d0
    if-ltz v4, :cond_13

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

    :cond_13
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_d1
    move-object/from16 v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v6}, Lfbe;->d()Lffj;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    goto/16 :goto_44

    nop

    nop

    :goto_d4
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    iget-object v14, v0, Lfaa;->d:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object v9, v0, Lfaa;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    move v13, v7

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_d8
    iget-object v14, v0, Lfaa;->f:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    move/from16 v3, p3

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

    :goto_db
    iget-object v8, v0, Lfaa;->n:Lfay;

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-static/range {p2 .. p2}, Lffi;->b(Landroid/graphics/Matrix;)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    :goto_dd
    cmpl-float v16, v10, v12

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_de
    move v4, v5

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

    :goto_df
    if-eqz v8, :cond_14

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :cond_14
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_e0
    check-cast v6, Lfbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    iget-object v10, v0, Lfaa;->m:Ljava/util/List;

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_e2
    if-nez v3, :cond_15

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    if-nez v7, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_e5
    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_e6
    goto/32 :goto_141

    nop

    nop

    nop

    :goto_e7
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_ea
    aget v10, v9, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_eb
    invoke-static {v4, v13, v14, v5}, Lffi;->d(Landroid/graphics/Path;FFF)V

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_ec
    if-nez v13, :cond_17

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_67

    nop

    nop

    :goto_ed
    add-int/lit8 v11, v11, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v1, v4, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_ef
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v9, v10, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_f2
    goto/16 :goto_16a

    nop

    nop

    :goto_f3
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-virtual {v10}, Lfay;->e()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_f5
    goto/16 :goto_14e

    nop

    nop

    :goto_f6
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    if-ltz v10, :cond_18

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_f8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_fa
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

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

    :goto_fb
    iget-object v10, v8, Lezz;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    cmpl-float v3, v6, v3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_fd
    if-ltz v12, :cond_19

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_a

    nop

    nop

    :goto_fe
    cmpg-float v3, v3, v5

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    aput v7, v3, v8

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    iget-object v8, v0, Lfaa;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_101
    cmpg-float v10, v10, v7

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_102
    iget-object v9, v0, Lfaa;->j:[F

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual {v7}, Lfbc;->k()F

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_104
    if-lez v4, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_1a
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_105
    iget-object v13, v0, Lfaa;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_106
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_107
    mul-float/2addr v3, v7

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    :goto_108
    aget v6, v3, v6

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_109
    if-ltz v17, :cond_1b

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_118

    nop

    nop

    nop

    :goto_10a
    check-cast v11, Lfas;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_10b
    if-eqz v9, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_10c
    invoke-static {v10, v13}, Ljava/lang/Math;->min(FF)F

    move-result v10

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_10d
    iget-object v13, v0, Lfaa;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    :goto_10e
    rem-int/lit8 v9, v8, 0x2

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_10f
    cmpg-float v4, v9, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    check-cast v3, Landroid/graphics/ColorFilter;

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_111
    invoke-virtual {v12, v13, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_112
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_140

    nop

    nop

    :goto_113
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_114
    move v13, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_115
    const/4 v4, 0x0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_116
    check-cast v10, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_117
    invoke-virtual {v14, v15, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_118
    cmpl-float v13, v9, v12

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_119
    if-gtz v12, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    iget-object v10, v10, Lfas;->c:Lfay;

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_11b
    if-gez v4, :cond_1e

    nop

    goto/32 :goto_c0

    nop

    nop

    :cond_1e
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    iget-object v4, v0, Lfaa;->f:Landroid/graphics/Path;

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_11d
    iget-object v9, v0, Lfaa;->b:Landroid/graphics/Paint;

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    :goto_11e
    check-cast v10, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_11f
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_120
    iget-object v8, v0, Lfaa;->i:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_121
    check-cast v15, Lfal;

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

    nop

    :goto_122
    invoke-virtual {v1, v4, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_28

    nop

    nop

    :goto_123
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_124
    const v11, 0x3dcccccd    # 0.1f

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_125
    aget v3, v3, v9

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_126
    check-cast v10, Lfal;

    nop

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

    nop

    :goto_127
    iget-object v8, v0, Lfaa;->e:Landroid/graphics/Path;

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

    :goto_128
    invoke-virtual {v6}, Lfbe;->b()F

    move-result v8

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    iget-object v3, v0, Lfaa;->q:Lfbb;

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

    :goto_12a
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    int-to-float v6, v6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12c
    if-lt v3, v8, :cond_1f

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    :cond_1f
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_12d
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_12e
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_12f
    goto/32 :goto_2

    nop

    nop

    :goto_130
    const/high16 v11, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_131
    check-cast v11, Lfal;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_132
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_133
    cmpl-float v8, v3, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_134
    iget-object v12, v0, Lfaa;->d:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_135
    invoke-static {}, Leyu;->a()V

    :goto_136
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_137
    div-float/2addr v11, v12

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_138
    iget-object v4, v0, Lfaa;->f:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_139
    float-to-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    check-cast v8, Lezz;

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    iget-object v9, v0, Lfaa;->j:[F

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_13c
    iget-object v6, v0, Lfaa;->l:Lfay;

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_13d
    invoke-virtual {v9}, Lfay;->e()Ljava/lang/Object;

    move-result-object v9

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_13e
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_13f
    check-cast v8, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_140
    return-void

    nop

    nop

    nop

    :goto_141
    goto/32 :goto_15c

    nop

    nop

    nop

    :goto_142
    div-float/2addr v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_143
    iget-object v9, v8, Lezz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_144
    check-cast v10, Lfas;

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_145
    goto/16 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_146
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_147
    invoke-virtual {v3}, Lfay;->e()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_148
    const/4 v9, 0x3

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

    :goto_149
    iget-object v8, v0, Lfaa;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    check-cast v3, [F

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_14b
    iget-object v3, v0, Lfaa;->m:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_14c
    const v1, 0x5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_14d
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_14e
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    iget-object v4, v0, Lfaa;->e:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_150
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto/32 :goto_f5

    nop

    nop

    :goto_151
    iget-object v7, v0, Lfaa;->k:Lfay;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_152
    check-cast v9, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_153
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_154
    move v8, v4

    nop

    nop

    nop

    nop

    nop

    :goto_155
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    cmpl-float v8, v3, v5

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_157
    invoke-virtual {v13}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_158
    add-float/2addr v9, v11

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_159
    mul-float/2addr v8, v3

    nop

    nop

    nop

    nop

    :goto_15a
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_15b
    iget-object v9, v0, Lfaa;->e:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_15c
    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_15d
    if-gez v9, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    :cond_20
    goto/32 :goto_cf

    nop

    nop

    :goto_15e
    goto/16 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_160
    iget-object v3, v0, Lfaa;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_161
    cmpg-float v17, v16, v15

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_162
    const v7, 0x471212bb

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_163
    goto/16 :goto_29

    nop

    nop

    :goto_164
    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_165
    sget-object v3, Lffi;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    :goto_166
    div-float/2addr v10, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_167
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    :goto_168
    invoke-virtual {v1, v4, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_169
    aput v11, v9, v8

    nop

    nop

    :goto_16a
    goto/32 :goto_45

    nop

    nop
.end method

.method public final c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

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

    :goto_1
    iget v0, p3, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

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

    :goto_3
    sub-float/2addr v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_4
    iget-object v1, p0, Lfaa;->i:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_5
    iget-object v0, p0, Lfaa;->g:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_6
    add-float/2addr p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_3a

    nop

    nop

    :goto_8
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    div-float/2addr p2, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lfaa;->g:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    const v0, 0xe

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_f
    add-float/2addr p3, p2

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

    :goto_10
    move v0, p3

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    if-lt v2, v3, :cond_0

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

    :cond_0
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_13
    iget v2, v2, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p3, p0, Lfaa;->g:Landroid/graphics/RectF;

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

    nop

    :goto_16
    move v2, p3

    nop

    :goto_17
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, p0, p3, p2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-float/2addr v3, p2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1c
    const/high16 v0, 0x40000000    # 2.0f

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

    :goto_1d
    iget-object v1, p0, Lfaa;->i:Ljava/util/List;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-float/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1f
    check-cast v1, Lezz;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_20
    const/high16 v0, 0x3f800000    # 1.0f

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

    :goto_21
    iget-object v1, p0, Lfaa;->g:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_22
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v3, p0, Lfaa;->g:Landroid/graphics/RectF;

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

    :goto_24
    iget p0, p1, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v4, Lfal;

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

    :goto_26
    goto/16 :goto_11

    nop

    :goto_27
    goto/32 :goto_31

    nop

    nop

    :goto_28
    iget v1, v1, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_29
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p2}, Lfbc;->k()F

    move-result p2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v4}, Lfal;->i()Landroid/graphics/Path;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2c
    add-float/2addr p0, p2

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v2, v2, 0x1

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

    :goto_2e
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_46

    nop

    :goto_2f
    if-lt v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_31
    iget-object p2, p0, Lfaa;->e:Landroid/graphics/Path;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_32
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

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

    nop

    :goto_33
    iget-object p2, p0, Lfaa;->k:Lfay;

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

    :goto_34
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v4, v1, Lezz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_37
    iget p2, p1, Landroid/graphics/RectF;->right:F

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_38
    iget-object v3, v1, Lezz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_39
    add-float/2addr v2, p2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sub-float/2addr v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast p2, Lfbc;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_40
    const/high16 p2, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_41
    const/4 p3, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p3, p0, Lfaa;->e:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_43
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_44
    iget-object v2, p0, Lfaa;->g:Landroid/graphics/RectF;

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

    nop

    nop

    :goto_45
    iget-object v3, p0, Lfaa;->e:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_48
    iget p3, p1, Landroid/graphics/RectF;->top:F

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lezm;->invalidateSelf()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfaa;->h:Lezm;

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
.end method

.method public final e(Lfbv;ILjava/util/List;Lfbv;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, p2, p3, p4, p0}, Lffd;->d(Lfbv;ILjava/util/List;Lfbv;Lfaj;)V

    goto/32 :goto_1

    nop

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

.method public final f(Ljava/util/List;Ljava/util/List;)V
    .locals 6

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iget v5, v4, Lfas;->e:I

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

    :goto_1
    check-cast v4, Lfab;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v4, v0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3
    iget v5, v4, Lfas;->e:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lfab;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    if-eq v5, v3, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    const v0, 0xb

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    instance-of v4, v0, Lfas;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_a

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v2, v1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_12
    instance-of v4, v0, Lfal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    :goto_14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_15
    goto/32 :goto_29

    nop

    nop

    :goto_16
    check-cast v0, Lfal;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_17
    instance-of v5, v4, Lfas;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    new-instance v1, Lezz;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, v4}, Lezz;-><init>(Lfas;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-gez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    :goto_20
    check-cast v4, Lfas;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_23
    if-nez v1, :cond_5

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

    :cond_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

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

    :goto_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v4, v1, Lezz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object v2, v4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_29
    new-instance v0, Lezz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2a
    const/4 v3, 0x2

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

    :goto_2b
    goto/32 :goto_2d

    nop

    nop

    :goto_2c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lfaa;->i:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_32
    if-gez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_6
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_33
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_34
    invoke-direct {v1, v2}, Lezz;-><init>(Lfas;)V

    :goto_35
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Lfaa;->i:Ljava/util/List;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_37
    if-eq v5, v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_7
    goto/32 :goto_27

    nop

    nop

    :goto_38
    const v1, 0x2

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

    :goto_39
    if-nez v2, :cond_8

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_8
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3a
    if-nez v4, :cond_9

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v1, :cond_a

    nop

    goto/32 :goto_d

    nop

    :cond_a
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3c
    if-nez v5, :cond_b

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v4, p0}, Lfas;->a(Lfat;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v2, p0}, Lfas;->a(Lfat;)V

    :goto_40
    goto/32 :goto_2f

    nop

    nop

    :goto_41
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_42
    goto/16 :goto_11

    nop

    :goto_43
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v4, Lfas;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_45
    move-object v1, v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method
