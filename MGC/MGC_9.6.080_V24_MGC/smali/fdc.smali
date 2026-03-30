.class public abstract Lfdc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfad;
.implements Lfat;
.implements Lfbw;


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:Lezm;

.field final c:Lfdf;

.field public d:Lfbc;

.field public e:Lfdc;

.field public f:Lfdc;

.field final g:Lfbo;

.field h:F

.field i:Landroid/graphics/BlurMaskFilter;

.field private final j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/Matrix;

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/Paint;

.field private final n:Landroid/graphics/Paint;

.field private final o:Landroid/graphics/Paint;

.field private final p:Landroid/graphics/Paint;

.field private final q:Landroid/graphics/Paint;

.field private final r:Landroid/graphics/RectF;

.field private final s:Landroid/graphics/RectF;

.field private final t:Landroid/graphics/RectF;

.field private final u:Landroid/graphics/RectF;

.field private final v:Landroid/graphics/RectF;

.field private w:Ljava/util/List;

.field private final x:Ljava/util/List;

.field private y:Z

.field private z:Lhdu;


# direct methods
.method private final 430f03c2ea70bd28108d593eca0c7c30m()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lfdc;->f:Lfdc;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lfdc;->f:Lfdc;

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lfdc;->w:Ljava/util/List;

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

    :goto_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x8

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_19

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

    :goto_d
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lfdc;->f:Lfdc;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    goto :goto_19

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_13
    if-nez v0, :cond_2

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

    nop

    nop

    :goto_14
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lfdc;->w:Ljava/util/List;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lfdc;->w:Ljava/util/List;

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

    :goto_17
    iget-object v1, p0, Lfdc;->w:Ljava/util/List;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lezm;Lfdf;)V
    .locals 4

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_0
    iget-object p2, p2, Lfdf;->g:Ljava/util/List;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v2, Landroid/graphics/RectF;

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

    :goto_2
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v2, Lezy;

    nop

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

    :goto_4
    iput-object v0, p0, Lfdc;->g:Lfbo;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lezy;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v2, v3}, Lezy;-><init>(Landroid/graphics/PorterDuff$Mode;[B)V

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Lfbo;->d(Lfat;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Landroid/graphics/Matrix;

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

    :goto_9
    if-eq p1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Lfdc;->c:Lfdf;

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_b
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lfdc;->p:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_f
    iput-object v2, p0, Lfdc;->v:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v1}, Lfdc;->n(Z)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x17

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v1}, Lfdc;->n(Z)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p1, Lhdu;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_35

    nop

    nop

    :goto_16
    invoke-direct {v0, v1}, Lezy;-><init>(I)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lezy;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_59

    nop

    nop

    :goto_19
    if-eqz p1, :cond_2

    nop

    nop

    goto/32 :goto_83

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    new-instance p1, Lhdu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    iput-object v2, p0, Lfdc;->x:Ljava/util/List;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, v1}, Lezy;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    :goto_1d
    iput-object p1, p0, Lfdc;->d:Lfbc;

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

    :goto_1e
    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_20
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_21
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_5c

    nop

    nop

    :goto_23
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-boolean v1, p0, Lfdc;->y:Z

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

    :goto_25
    invoke-virtual {p1}, Lfbc;->e()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_26
    new-instance p2, Lfdb;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v2, p0, Lfdc;->u:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2c
    cmpl-float p1, p1, p2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object p1, p0, Lfdc;->b:Lezm;

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

    :goto_2e
    iget-object p1, p1, Lfdf;->r:Ljava/util/List;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p2, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p1, p2}, Lfbc;-><init>(Ljava/util/List;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p1, p1, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_33
    new-instance v0, Lezy;

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_34
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    :goto_35
    iput-object v0, p0, Lfdc;->l:Landroid/graphics/Matrix;

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

    :goto_36
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_37
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    new-instance v0, Landroid/graphics/Path;

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

    :goto_39
    new-instance p1, Lfbc;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_3a
    const/4 v2, 0x3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v2, v3}, Lezy;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_3d
    iput-object v2, p0, Lfdc;->a:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v2, Landroid/graphics/RectF;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p2, p0}, Lfay;->h(Lfat;)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p2, Lfay;

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

    :goto_41
    invoke-direct {v0, p1}, Lfbo;-><init>(Lfcj;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput-object v0, p0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_43
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_44
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {v0, v2, v3}, Lezy;-><init>(Landroid/graphics/PorterDuff$Mode;[B)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p2, p2, Lfdf;->r:Ljava/util/List;

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

    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_49
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {p1, p2}, Lhdu;-><init>(Ljava/util/List;)V

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1, p2}, Lfbc;->h(Lfat;)V

    goto/32 :goto_86

    nop

    nop

    :goto_4c
    iput-object v2, p0, Lfdc;->q:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast p2, Lfay;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object p1, p2, Lfdf;->h:Lfcj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iput-boolean v1, p1, Lfay;->b:Z

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_51
    iget-object p2, p0, Lfdc;->c:Lfdf;

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

    :goto_52
    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_43

    nop

    nop

    :goto_53
    new-instance v0, Lezy;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_55
    if-nez p2, :cond_4

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_56
    iput-object v0, p0, Lfdc;->o:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_57
    iget-object p1, p0, Lfdc;->d:Lfbc;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_58
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_59
    goto/16 :goto_71

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_5b
    return-void

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_63

    nop

    nop

    :goto_5d
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    new-instance v2, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_5f
    new-instance v2, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_29

    nop

    nop

    :goto_61
    goto/32 :goto_73

    nop

    nop

    :goto_62
    invoke-direct {p2, p0}, Lfdb;-><init>(Lfdc;)V

    goto/32 :goto_4b

    nop

    nop

    :goto_63
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_44

    nop

    nop

    :goto_65
    goto/32 :goto_36

    nop

    nop

    :goto_66
    iget-object p1, p0, Lfdc;->c:Lfdf;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_67
    iput-object v2, p0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_69
    iput-object p1, p0, Lfdc;->z:Lhdu;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_6b
    new-instance v2, Landroid/graphics/RectF;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    return-void

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iput-object v2, p0, Lfdc;->s:Landroid/graphics/RectF;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const/4 v1, 0x0

    nop

    nop

    :goto_71
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p0, p1}, Lfdc;->i(Lfay;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_73
    iget-object p1, p0, Lfdc;->z:Lhdu;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-nez p2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    :cond_6
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_77
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

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

    :goto_78
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_79
    iput v2, p0, Lfdc;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_7a
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object p1, p2, Lfdf;->g:Ljava/util/List;

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

    :goto_7c
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_7d
    const/4 v1, 0x1

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

    :goto_7e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    :goto_7f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iput-object v0, p0, Lfdc;->n:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    new-instance v2, Landroid/graphics/RectF;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_82
    goto :goto_7f

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_85
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_86
    iget-object p1, p0, Lfdc;->d:Lfbc;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_87
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_88
    iput-object v2, p0, Lfdc;->t:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_89
    if-eqz p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_8b
    new-instance v0, Lfbo;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p0, p2}, Lfdc;->i(Lfay;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iput-object v0, p0, Lfdc;->k:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_8e
    iget p1, p2, Lfdf;->u:I

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object p1, p2, Lfdf;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iput-object v0, p0, Lfdc;->j:Landroid/graphics/Path;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const v0, 0xe

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

.method private final a2d5024664df85075db576b91d9663e9m()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lezb;->l:Landroidx/wear/ambient/AmbientMode$AmbientCallback;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object v0, p0, Lfdc;->b:Lezm;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lfdf;->c:Ljava/lang/String;

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

    :goto_4
    iget-object v0, v0, Lezm;->a:Lezb;

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
    iget-object p0, p0, Lfdc;->c:Lfdf;

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
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lezm;->invalidateSelf()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfdc;->b:Lezm;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private final e94656b6137dd01f26085f984afe853em(Landroid/graphics/Canvas;)V
    .locals 8

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    add-float v6, v0, v1

    nop

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

    nop

    :goto_1
    iget-object v0, p0, Lfdc;->r:Landroid/graphics/RectF;

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

    nop

    :goto_2
    move-object v2, p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    goto/32 :goto_6

    nop

    :goto_5
    goto/32 :goto_e

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, v0, Landroid/graphics/RectF;->right:F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-float v3, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, v0, Landroid/graphics/RectF;->top:F

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

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    :goto_f
    iget-object v7, p0, Lfdc;->q:Landroid/graphics/Paint;

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

    :goto_10
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    const/high16 v1, -0x40800000    # -1.0f

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-float v4, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    add-float v5, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_13

    nop

    nop

    :goto_17
    iget-object v0, p0, Lfdc;->r:Landroid/graphics/RectF;

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

    :goto_18
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    const v1, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, v0, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lffl;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfdc;->g:Lfbo;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Lfbo;->e(Ljava/lang/Object;Lffl;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 16

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v10, v0, Lfdc;->t:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3}, Lfay;->e()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    :goto_2
    iget-object v13, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_1e0

    nop

    nop

    nop

    :goto_4
    iget v7, v7, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_5
    iget-object v7, v7, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_6
    iget-object v7, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lfdc;->o()Z

    move-result v4

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    if-lt v7, v9, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_177

    nop

    nop

    :goto_9
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v9, v10, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_199

    nop

    nop

    nop

    nop

    :goto_c
    float-to-int v9, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_d
    if-nez v7, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    :cond_2
    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne v13, v15, :cond_3

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    :goto_10
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_11
    mul-float/2addr v3, v6

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v5, v9

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    :goto_13
    check-cast v9, Ljava/lang/Integer;

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    goto/32 :goto_102

    nop

    nop

    :goto_15
    invoke-virtual {v9, v14, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v9, v9, Lhdu;->b:Ljava/lang/Object;

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

    :goto_17
    if-eqz v4, :cond_4

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v4, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

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

    :goto_1b
    add-int/2addr v6, v8

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    :cond_5
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_1d
    check-cast v7, Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v7, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_20
    float-to-int v9, v9

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_21
    iget-object v7, v0, Lfdc;->o:Landroid/graphics/Paint;

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

    :goto_22
    if-nez v9, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    :cond_7
    goto/32 :goto_187

    nop

    nop

    nop

    :goto_23
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_24
    iget-object v7, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v5, v0, Lfdc;->u:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v15, Landroid/graphics/Path;

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_27
    iget-object v3, v3, Lfbo;->e:Lfay;

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v4, v0, Lfdc;->s:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v4, v0, Lfdc;->l:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    :goto_2a
    check-cast v7, Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {}, Leyu;->a()V

    :goto_2c
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_2d
    invoke-static {v1, v4, v6}, Lffi;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_2e
    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2f
    int-to-float v9, v9

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

    :goto_30
    if-gez v3, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    :cond_8
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_32
    iget-object v7, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_33
    iget-object v14, v0, Lfdc;->z:Lhdu;

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

    :goto_34
    return-void

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    :goto_38
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v9, v0, Lfdc;->o:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

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

    :goto_3b
    invoke-virtual {v9, v14, v6, v7, v11}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_3c
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v14, v14, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_3e
    iget-object v10, v0, Lfdc;->u:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v7, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    :goto_40
    iget-object v7, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_12a

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v9}, Lfay;->e()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    :goto_45
    add-int/lit8 v15, v9, -0x1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    :cond_9
    goto/32 :goto_1e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-boolean v7, v7, Lokp;->b:Z

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    :goto_48
    iget-object v5, v5, Lfdc;->g:Lfbo;

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v13, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast v9, Lokp;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_4b
    check-cast v9, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_4c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    add-int/lit8 v13, v11, -0x1

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-ne v13, v8, :cond_a

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v10}, Lfay;->e()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto/32 :goto_14b

    nop

    nop

    :goto_51
    iget-object v4, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_52
    mul-float/2addr v9, v11

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-eqz v5, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1aa

    nop

    nop

    :goto_54
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

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

    :goto_55
    invoke-virtual {v10}, Lfay;->e()Ljava/lang/Object;

    move-result-object v10

    nop

    goto/32 :goto_144

    nop

    nop

    :goto_56
    iget-object v4, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    :goto_57
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_16e

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_fc

    nop

    nop

    :goto_5a
    if-ne v15, v11, :cond_c

    nop

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

    :cond_c
    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v7, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v15, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_5d
    cmpl-float v4, v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    :goto_5e
    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-boolean v3, v3, Lfdf;->s:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v9}, Lfay;->e()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_63
    int-to-float v10, v10

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget v9, v14, Lokp;->a:I

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_65
    iget-object v7, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v5, v0, Lfdc;->g:Lfbo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    :goto_67
    iget-object v4, v0, Lfdc;->l:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v5, v0, Lfdc;->s:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_72

    nop

    nop

    :goto_6a
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_1a2

    nop

    nop

    :goto_6b
    iget-object v9, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_de

    nop

    nop

    :goto_6d
    iget-object v9, v0, Lfdc;->z:Lhdu;

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v9, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v4, v0, Lfdc;->k:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v7, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-direct/range {p0 .. p0}, Lfdc;->a2d5024664df85075db576b91d9663e9m()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v4, v0, Lfdc;->k:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_1c5

    nop

    nop

    :goto_74
    if-ne v13, v14, :cond_d

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v4, v0, Lfdc;->k:Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v13, v0, Lfdc;->o:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    :goto_77
    const/high16 v13, -0x1000000

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_78
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_16e

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_1a4

    nop

    nop

    nop

    :goto_7c
    int-to-float v9, v9

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v9}, Lfay;->e()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    :goto_7e
    if-eqz v4, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :cond_e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v4, v5, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget v9, v9, Lokp;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v3, v0, Lfdc;->c:Lfdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v7, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_83
    iget-object v9, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    :goto_84
    invoke-virtual {v7, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    goto/16 :goto_16e

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_88
    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v4, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual/range {p0 .. p0}, Lfdc;->p()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_8b
    iget-boolean v9, v14, Lokp;->b:Z

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    int-to-float v4, v4

    nop

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

    nop

    :goto_8d
    iget-object v5, v0, Lfdc;->u:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    :goto_8e
    check-cast v9, Lfay;

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    :goto_8f
    if-nez v3, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :cond_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_90
    if-eqz v15, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_91
    const/4 v15, 0x3

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

    :goto_92
    iget-object v9, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_93
    float-to-int v10, v10

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v9, v7}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget-object v13, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v3, v0, Lfdc;->k:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-nez v9, :cond_11

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v9, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget v14, v14, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v4, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    mul-float/2addr v10, v11

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_9e
    iget-object v15, v0, Lfdc;->t:Landroid/graphics/RectF;

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v10, v9, v9, v9, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual/range {p0 .. p0}, Lfdc;->p()Z

    move-result v5

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-static {}, Leyu;->a()V

    :goto_a2
    goto/32 :goto_1d6

    nop

    nop

    nop

    :goto_a3
    iget-object v2, v0, Lfdc;->k:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    :goto_a4
    int-to-float v10, v10

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

    nop

    :goto_a5
    iget-object v6, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-direct/range {p0 .. p1}, Lfdc;->e94656b6137dd01f26085f984afe853em(Landroid/graphics/Canvas;)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v10, v0, Lfdc;->z:Lhdu;

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_a8
    invoke-virtual {v15}, Lfay;->e()Ljava/lang/Object;

    move-result-object v15

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_aa
    iget-object v15, v0, Lfdc;->t:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v6, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v10, v10, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_af
    goto/16 :goto_16e

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual/range {p0 .. p0}, Lfdc;->p()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v0, v4, v5, v6}, Lfdc;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    goto/32 :goto_182

    nop

    nop

    nop

    :goto_b3
    iget-object v4, v0, Lfdc;->l:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

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

    :goto_b5
    iget-object v7, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iget-object v7, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_b7
    goto/16 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v7, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    const/4 v10, 0x4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    iget-object v7, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-static {v1, v7, v13}, Lffi;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_40

    nop

    nop

    :goto_be
    invoke-virtual {v4}, Lfbo;->a()Landroid/graphics/Matrix;

    move-result-object v4

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_bf
    if-nez v7, :cond_12

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    :cond_12
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_c0
    iget-object v5, v0, Lfdc;->c:Lfdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    :goto_c1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_1c1

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    :goto_c3
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    nop

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

    :goto_c5
    invoke-virtual {v9}, Lfay;->e()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_c7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    nop

    :goto_c8
    goto/32 :goto_153

    nop

    nop

    :goto_c9
    const/high16 v6, 0x437f0000    # 255.0f

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    :goto_ca
    iget-object v5, v0, Lfdc;->k:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_cb
    throw v12

    nop

    nop

    :goto_cc
    goto/32 :goto_126

    nop

    nop

    nop

    :goto_cd
    if-lt v6, v7, :cond_13

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    :cond_13
    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :goto_cf
    int-to-float v9, v9

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v4, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget-object v9, v0, Lfdc;->o:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_d2
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    if-eqz v10, :cond_14

    nop

    goto/32 :goto_1e4

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d4
    iget-object v9, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_d5
    if-nez v13, :cond_15

    nop

    goto/32 :goto_59

    nop

    :cond_15
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    iget-object v5, v0, Lfdc;->p:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    :goto_d8
    iget-object v7, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    if-nez v4, :cond_16

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v14, v0, Lfdc;->v:Landroid/graphics/RectF;

    nop

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

    :goto_db
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v10}, Lfay;->e()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    if-nez v7, :cond_17

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :goto_de
    goto/16 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_df
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v0, v1, v4, v3}, Lfdc;->j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto/32 :goto_1b7

    nop

    nop

    :goto_e1
    iget-object v9, v0, Lfdc;->o:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iget-object v6, v0, Lfdc;->v:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    :goto_e3
    iget-object v14, v0, Lfdc;->v:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-direct/range {p0 .. p0}, Lfdc;->a2d5024664df85075db576b91d9663e9m()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_e5
    iget-object v9, v9, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_109

    nop

    nop

    :goto_e7
    if-ne v5, v7, :cond_18

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :cond_18
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v1, v7, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_18a

    nop

    nop

    :goto_e9
    iget-object v9, v0, Lfdc;->t:Landroid/graphics/RectF;

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

    :goto_ea
    if-ne v15, v8, :cond_19

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_5a

    nop

    nop

    :goto_eb
    invoke-direct/range {p0 .. p0}, Lfdc;->430f03c2ea70bd28108d593eca0c7c30m()V

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    goto/16 :goto_c8

    nop

    :goto_ed
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_ee
    iget-object v9, v0, Lfdc;->o:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_ef
    invoke-virtual {v9, v7}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto/32 :goto_179

    nop

    nop

    :goto_f0
    invoke-virtual {v9, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    mul-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    iget-object v4, v0, Lfdc;->e:Lfdc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    :goto_f5
    const v11, 0x40233333    # 2.55f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    const/4 v14, 0x2

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {v7, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_137

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {v9, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/32 :goto_78

    nop

    nop

    :goto_f9
    check-cast v15, Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_fa
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    float-to-int v9, v9

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_fc
    const/4 v14, 0x2

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

    :goto_fd
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_ff
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_100
    move v13, v6

    nop

    nop

    :goto_101
    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_102
    iget-object v4, v0, Lfdc;->l:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_103
    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_1dc

    nop

    nop

    nop

    :goto_104
    move/from16 v3, p3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_105
    goto/16 :goto_14a

    nop

    nop

    nop

    :goto_106
    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    iget-object v9, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_108
    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    :goto_109
    iget-object v6, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_10a
    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_10b
    goto/32 :goto_1bb

    nop

    nop

    :goto_10c
    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_10d
    if-eqz v5, :cond_1a

    nop

    nop

    goto/32 :goto_10b

    nop

    :cond_1a
    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_10e
    iget-object v5, v0, Lfdc;->k:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    :goto_10f
    int-to-float v7, v7

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_110
    iget-object v7, v0, Lfdc;->z:Lhdu;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_111
    iget-boolean v7, v7, Lokp;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_112
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    :goto_113
    goto/32 :goto_174

    nop

    nop

    :goto_114
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_115
    invoke-static {v1, v6, v7}, Lffi;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_116
    const/16 v5, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    :goto_117
    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_118
    move-object/from16 v0, p0

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    :goto_119
    if-nez v11, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_1b
    goto/32 :goto_f5

    nop

    nop

    :goto_11a
    if-lt v13, v10, :cond_1c

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_11b
    float-to-int v3, v3

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    :goto_11c
    if-eqz v6, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_11d
    invoke-virtual {v5}, Lfbo;->a()Landroid/graphics/Matrix;

    move-result-object v5

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/32 :goto_1a5

    nop

    nop

    nop

    :goto_11f
    iget-object v4, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_120
    check-cast v7, Lokp;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    invoke-virtual {v9}, Lfay;->e()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_122
    iget-object v2, v0, Lfdc;->k:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    :goto_123
    div-float/2addr v3, v6

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_124
    iget-object v6, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    :goto_125
    iget-object v13, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_126
    iget-object v5, v0, Lfdc;->t:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    invoke-static {v1, v7, v13}, Lffi;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_128
    mul-float/2addr v9, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_129
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_12a
    goto/32 :goto_110

    nop

    nop

    :goto_12b
    move-object/from16 v2, p2

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    :goto_12c
    invoke-virtual {v7, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    invoke-virtual/range {p0 .. p0}, Lfdc;->o()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    iget-object v15, v0, Lfdc;->t:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    :goto_12f
    mul-float/2addr v10, v11

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    :goto_130
    const/4 v14, 0x2

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_131
    const v0, 0x1e

    nop

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

    :goto_132
    float-to-int v10, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    :goto_133
    invoke-virtual {v10}, Lfay;->e()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_134
    check-cast v9, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_135
    invoke-virtual {v10}, Lfay;->e()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_136
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_137
    iget-object v7, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_138
    invoke-static {v15, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_139
    iget-object v7, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    :goto_13a
    if-nez v3, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    iget-object v7, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13d
    iget-object v7, v0, Lfdc;->m:Landroid/graphics/Paint;

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

    :goto_13e
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    nop

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

    :goto_13f
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_140
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_141
    iget-object v9, v0, Lfdc;->t:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_142
    invoke-virtual {v5}, Lfbo;->a()Landroid/graphics/Matrix;

    move-result-object v5

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_143
    invoke-virtual {v9}, Lfay;->e()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    nop

    :goto_144
    check-cast v10, Ljava/lang/Integer;

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_145
    check-cast v5, Lfdc;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_146
    iget-object v3, v0, Lfdc;->k:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    :goto_147
    iget-object v9, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_148
    iget-object v13, v0, Lfdc;->n:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_149
    goto/16 :goto_18d

    nop

    :goto_14a
    goto/32 :goto_18c

    nop

    nop

    :goto_14b
    iget-object v3, v0, Lfdc;->w:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_14c
    iget-object v7, v0, Lfdc;->n:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14e
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    iget-object v5, v0, Lfdc;->s:Landroid/graphics/RectF;

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

    :goto_150
    invoke-static {v15, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_151
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_152
    invoke-virtual {v9, v7}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_153
    add-int/lit8 v3, v3, -0x1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_154
    iget-object v7, v7, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_155
    const/4 v15, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_156
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_157
    iget-object v10, v0, Lfdc;->z:Lhdu;

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    :goto_158
    invoke-static {v1, v7, v13}, Lffi;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_159
    iget-object v13, v0, Lfdc;->n:Landroid/graphics/Paint;

    nop

    goto/32 :goto_1b9

    nop

    nop

    :goto_15a
    if-nez v7, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :cond_1f
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    int-to-float v6, v6

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    :goto_15c
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_9c

    nop

    nop

    :goto_15d
    if-eqz v13, :cond_20

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_141

    nop

    nop

    :goto_15e
    iget-object v7, v7, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    return-void

    nop

    nop

    nop

    nop

    :goto_160
    goto/32 :goto_18e

    nop

    nop

    nop

    :goto_161
    if-nez v3, :cond_21

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_1d0

    nop

    nop

    nop

    :goto_162
    iget-object v7, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_163
    iget-object v14, v0, Lfdc;->v:Landroid/graphics/RectF;

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

    :goto_164
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    :goto_165
    iget-object v4, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_166
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :goto_167
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_168
    invoke-virtual/range {p0 .. p0}, Lfdc;->o()Z

    move-result v10

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

    :goto_169
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    iget-boolean v3, v0, Lfdc;->y:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    :goto_16b
    iget v15, v15, Landroid/graphics/RectF;->right:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    iget-object v9, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :goto_16d
    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_16e
    goto/32 :goto_1b

    nop

    nop

    :goto_16f
    check-cast v7, Landroid/graphics/Path;

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_170
    goto/16 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_171
    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_172
    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_173
    iget-boolean v7, v7, Lokp;->b:Z

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

    :goto_174
    iget-object v9, v0, Lfdc;->z:Lhdu;

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    :goto_175
    iget-object v15, v15, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    :goto_176
    if-lez v0, :cond_22

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_1d2

    nop

    :goto_177
    iget-object v9, v0, Lfdc;->z:Lhdu;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_178
    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    nop

    :goto_179
    iget-object v7, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_17a
    invoke-virtual {v4, v1, v2, v3}, Lfdc;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    :goto_17b
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_15f

    nop

    nop

    nop

    :goto_17c
    iget-object v4, v0, Lfdc;->g:Lfbo;

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_17d
    iget-object v7, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_17e
    iget v11, v7, Lokp;->a:I

    nop

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

    nop

    :goto_17f
    check-cast v14, Lokp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    :goto_180
    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_181
    iget-object v5, v0, Lfdc;->e:Lfdc;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_182
    iget-object v4, v0, Lfdc;->r:Landroid/graphics/RectF;

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

    nop

    :goto_183
    if-gez v4, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_23
    goto/32 :goto_165

    nop

    nop

    nop

    nop

    :goto_184
    goto/16 :goto_113

    nop

    :goto_185
    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_186
    if-gez v4, :cond_24

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_187
    if-nez v15, :cond_25

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_188
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_a

    nop

    nop

    :goto_189
    invoke-direct/range {p0 .. p1}, Lfdc;->e94656b6137dd01f26085f984afe853em(Landroid/graphics/Canvas;)V

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_18a
    iget-object v7, v0, Lfdc;->o:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_18b
    iget-object v7, v0, Lfdc;->v:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    const/4 v5, 0x0

    nop

    nop

    :goto_18d
    goto/32 :goto_28

    nop

    nop

    :goto_18e
    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    :goto_18f
    div-float/2addr v3, v4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_190
    iget-object v11, v0, Lfdc;->v:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_191
    goto/16 :goto_16e

    nop

    nop

    :goto_192
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_193
    iget v5, v5, Lfdf;->u:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_194
    iget-object v9, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_195
    iget-object v13, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    :goto_196
    invoke-virtual {v1, v6, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    :goto_197
    invoke-static {v15, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_198
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_199
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    :goto_19a
    invoke-virtual {v0, v1, v2, v3}, Lfdc;->j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19b
    iget-object v7, v0, Lfdc;->z:Lhdu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    const/4 v6, 0x0

    nop

    nop

    :goto_19d
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    check-cast v7, Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_19f
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_1a0
    check-cast v10, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_1a1
    invoke-virtual {v9, v15}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto/32 :goto_1af

    nop

    nop

    nop

    :goto_1a2
    iget-object v7, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    iget-object v9, v9, Lhdu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_1a4
    iget-object v7, v0, Lfdc;->z:Lhdu;

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :goto_1a5
    iget-object v4, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a6
    invoke-virtual {v4, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    check-cast v7, Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    invoke-virtual {v9, v7}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto/32 :goto_82

    nop

    nop

    :goto_1a9
    iget-object v7, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_1aa
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :goto_1ab
    if-nez v4, :cond_26

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :cond_26
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_1ac
    invoke-static {}, Leyu;->a()V

    :goto_1ad
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    invoke-virtual {v1, v7, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1af
    iget-object v9, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    invoke-virtual {v9, v7}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b1
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_1b2
    const/4 v5, 0x0

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_1b3
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_1b4
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_1b6
    invoke-virtual {v9, v7}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b8
    if-ne v15, v7, :cond_27

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    invoke-static {v1, v7, v13}, Lffi;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_1ba
    iget-object v10, v10, Lhdu;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    :goto_1bb
    iget-object v4, v0, Lfdc;->k:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_1bc
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_1bd
    iget v15, v15, Landroid/graphics/RectF;->top:F

    nop

    goto/32 :goto_1da

    nop

    nop

    :goto_1be
    iget-object v7, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    :goto_1c0
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_1c1
    goto/16 :goto_16e

    nop

    nop

    nop

    :goto_1c2
    goto/32 :goto_143

    nop

    nop

    :goto_1c3
    mul-float/2addr v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c4
    invoke-virtual {v5, v10, v2, v8}, Lfdc;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1c5
    iget-object v5, v0, Lfdc;->w:Ljava/util/List;

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_1c6
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    const/high16 v4, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    :goto_1c8
    if-eqz v5, :cond_28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_28
    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_1c9
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    :goto_1ca
    iget-object v7, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_1cb
    iget-object v7, v0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_1cc
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_1cd
    cmpl-float v4, v4, v5

    nop

    goto/32 :goto_186

    nop

    nop

    :goto_1ce
    check-cast v7, Landroid/graphics/Path;

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cf
    const/4 v15, 0x3

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_1d0
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :goto_1d1
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d2
    goto/32 :goto_160

    nop

    :goto_1d3
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    iget v15, v9, Landroid/graphics/RectF;->left:F

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_1d5
    invoke-virtual {v1, v7, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_1d6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    iget-object v15, v0, Lfdc;->z:Lhdu;

    nop

    goto/32 :goto_175

    nop

    nop

    :goto_1d8
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d9
    iget-object v3, v0, Lfdc;->g:Lfbo;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1da
    iget v6, v6, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    :goto_1db
    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1ea

    nop

    nop

    nop

    nop

    nop

    :goto_1dc
    iget-object v6, v0, Lfdc;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_1dd
    throw v12

    nop

    nop

    nop

    :goto_1de
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_1df
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e0
    invoke-static {}, Leyu;->a()V

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_1e1
    check-cast v10, Lfay;

    nop

    goto/32 :goto_17e

    nop

    nop

    :goto_1e2
    const/16 v4, 0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_1e3
    goto/16 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :goto_1e4
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_1e5
    goto/16 :goto_10b

    nop

    nop

    nop

    nop

    nop

    :goto_1e6
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_1e7
    iget-object v9, v0, Lfdc;->j:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    :goto_1e8
    invoke-virtual {v5, v9, v9, v9, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_181

    nop

    nop

    :goto_1e9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ea
    goto/16 :goto_101

    nop

    nop

    nop

    nop

    :goto_1eb
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ec
    move-object/from16 v1, p1

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    :goto_1ed
    invoke-static {v1, v4, v5}, Lffi;->f(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/32 :goto_1c9

    nop

    nop

    nop
.end method

.method public c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lfdc;->f:Lfdc;

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

    nop

    :goto_1
    invoke-virtual {p0}, Lfbo;->a()Landroid/graphics/Matrix;

    move-result-object p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2
    if-nez p3, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    if-gez p1, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lfdc;->a:Landroid/graphics/Matrix;

    nop

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

    :goto_8
    invoke-virtual {p1}, Lfbo;->a()Landroid/graphics/Matrix;

    move-result-object p1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_9
    invoke-direct {p0}, Lfdc;->430f03c2ea70bd28108d593eca0c7c30m()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto/32 :goto_2

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p3, p3, Lfdc;->g:Lfbo;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Lfdc;->a:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lfdc;->g:Lfbo;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Lfdc;->r:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_3

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Lfdc;->a:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    iget-object p3, p0, Lfdc;->w:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p3, Lfdc;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_18
    invoke-virtual {p3}, Lfbo;->a()Landroid/graphics/Matrix;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p2, p0, Lfdc;->a:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lfdc;->w:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1b
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :goto_1d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/32 :goto_13

    nop

    nop

    :goto_20
    iget-object p1, p1, Lfdc;->g:Lfbo;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0}, Lfdc;->c43d12f4f4da28dd6c943a4effe477b7m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lfbv;ILjava/util/List;Lfbv;)V
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Lfdc;->g()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfdc;->e:Lfdc;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0, p2}, Lfbv;->f(Ljava/lang/String;I)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v1, p2}, Lfbv;->d(Ljava/lang/String;I)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    goto/32 :goto_2d

    nop

    :goto_6
    invoke-virtual {p1, v1, p2}, Lfbv;->a(Ljava/lang/String;I)I

    move-result v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lfdc;->g()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    invoke-virtual {p1, v1, p2}, Lfbv;->f(Ljava/lang/String;I)Z

    move-result v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p4, p0}, Lfbv;->c(Lfbw;)Lfbv;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lfdc;->g()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    const v1, 0x1d

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

    nop

    :goto_d
    invoke-virtual {v1}, Lfdc;->g()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    add-int/2addr v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lfdc;->e:Lfdc;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lfdc;->g()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p4, v0}, Lfbv;->b(Ljava/lang/String;)Lfbv;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_12
    iget-object v1, p0, Lfdc;->e:Lfdc;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0, p2}, Lfbv;->d(Ljava/lang/String;I)Z

    move-result v0

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lfdc;->g()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    const-string v1, "__container"

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lfdc;->e:Lfdc;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lfdc;->g()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p4, v0}, Lfbv;->b(Ljava/lang/String;)Lfbv;

    move-result-object v0

    nop

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

    :goto_1b
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0xd

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lfdc;->g()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1e
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_2

    nop

    goto/32 :goto_36

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

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v0, p2}, Lfbv;->a(Ljava/lang/String;I)I

    move-result v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_22
    add-int/2addr p2, v0

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_23
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_24
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Lfbv;->c(Lfbw;)Lfbv;

    move-result-object v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_27
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v0, :cond_4

    nop

    goto/32 :goto_24

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_5
    goto/32 :goto_2c

    nop

    :goto_2a
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_17

    nop

    nop

    :goto_2d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v2, p0, Lfdc;->e:Lfdc;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Lfdc;->g()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1, v0, p2}, Lfbv;->e(Ljava/lang/String;I)Z

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_32
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lfdc;->g()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v2, p1, v1, p3, v0}, Lfdc;->l(Lfbv;ILjava/util/List;Lfbv;)V

    :goto_36
    goto/32 :goto_33

    nop

    nop

    :goto_37
    invoke-virtual {p0, p1, p2, p3, p4}, Lfdc;->l(Lfbv;ILjava/util/List;Lfbv;)V

    :goto_38
    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method public final f(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfdf;->c:Ljava/lang/String;

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
    iget-object p0, p0, Lfdc;->c:Lfdf;

    nop

    nop

    nop

    goto/32 :goto_0

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

.method public final h(F)Landroid/graphics/BlurMaskFilter;
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lfdc;->i:Landroid/graphics/BlurMaskFilter;

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

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    return-object v1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    div-float v0, p1, v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v1, p0, Lfdc;->i:Landroid/graphics/BlurMaskFilter;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    iget v0, p0, Lfdc;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_13
    const v1, 0x14

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    cmpl-float v0, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    iput p1, p0, Lfdc;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final i(Lfay;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfdc;->x:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public abstract j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public final k(Lfay;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfdc;->x:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public l(Lfbv;ILjava/util/List;Lfbv;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public m(F)V
    .locals 3

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, v0, Lfbo;->c:Lfay;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lfdc;->z:Lhdu;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_4
    goto/16 :goto_29

    nop

    :goto_5
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4f

    nop

    nop

    :goto_9
    iget-object v0, v0, Lfbo;->g:Lfbc;

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

    :goto_a
    iget-object v0, p0, Lfdc;->e:Lfdc;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, p1}, Lfay;->j(F)V

    :goto_c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_d
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, p1}, Lfay;->j(F)V

    :goto_12
    goto/32 :goto_31

    nop

    nop

    :goto_13
    iget-object v2, p0, Lfdc;->z:Lhdu;

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

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1

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

    nop

    :goto_16
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, p1}, Lfay;->j(F)V

    :goto_18
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_3

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

    :cond_3
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1a
    if-lt v0, v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, p1}, Lfay;->j(F)V

    :goto_1d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_6

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    :goto_1f
    if-nez v0, :cond_7

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

    :cond_7
    goto/32 :goto_28

    nop

    nop

    :goto_20
    iget-object v0, p0, Lfdc;->x:Ljava/util/List;

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

    :goto_21
    iget-object v1, v0, Lfbo;->a:Lfay;

    nop

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

    :goto_22
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v1, :cond_8

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, p1}, Lfay;->j(F)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, v0, Lfbo;->d:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_26
    invoke-virtual {v1, p1}, Lfbc;->j(F)V

    :goto_27
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, p1}, Lfdc;->m(F)V

    :goto_29
    goto/32 :goto_32

    nop

    nop

    :goto_2a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2b
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_9
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_a

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

    :cond_a
    goto/32 :goto_45

    nop

    nop

    :goto_2d
    iget-object v2, p0, Lfdc;->z:Lhdu;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2f
    iget-object v1, v0, Lfbo;->e:Lfay;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, v0, Lfbo;->h:Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lfdc;->x:Ljava/util/List;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_c
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_e

    nop

    :goto_38
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_39
    iget-object v1, v0, Lfbo;->f:Lfbc;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, p1}, Lfbc;->j(F)V

    :goto_3b
    goto/32 :goto_a

    nop

    nop

    :goto_3c
    invoke-virtual {v1, p1}, Lfay;->j(F)V

    :goto_3d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0, p1}, Lfay;->j(F)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3f
    if-lt v1, v0, :cond_d

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1, p1}, Lfay;->j(F)V

    :goto_41
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_42
    check-cast v2, Lfay;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_43
    goto/32 :goto_8

    nop

    :goto_44
    iget-object v0, p0, Lfdc;->d:Lfbc;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0, p1}, Lfbc;->j(F)V

    :goto_46
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1, p1}, Lfay;->j(F)V

    :goto_48
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v1, v0, Lfbo;->i:Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4a
    if-nez v1, :cond_e

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_e
    goto/32 :goto_40

    nop

    nop

    :goto_4b
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4c
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v1, v0, Lfbo;->b:Lfay;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v2, v2, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4f
    iget-object v0, p0, Lfdc;->g:Lfbo;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_50
    check-cast v0, Lfay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_51
    iget-object v2, v2, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_30

    nop

    nop
.end method

.method public final n(Z)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-boolean v0, p0, Lfdc;->y:Z

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lfdc;->c43d12f4f4da28dd6c943a4effe477b7m()V

    :goto_3
    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Lfdc;->y:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final o()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfdc;->z:Lhdu;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

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

    :goto_4
    if-eqz p0, :cond_0

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method final p()Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

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

    :goto_4
    const/4 p0, 0x1

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

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lfdc;->e:Lfdc;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public q()Lhwy;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfdf;->w:Lhwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfdc;->c:Lfdf;

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
.end method

.method public r()Lfdn;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfdf;->x:Lfdn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfdc;->c:Lfdf;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
