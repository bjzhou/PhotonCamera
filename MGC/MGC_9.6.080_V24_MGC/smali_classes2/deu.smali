.class public final Ldeu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ScrollCaptureCallback;


# instance fields
.field public final a:Ldgb;

.field public final b:Ldeo;

.field public final c:Ldez;

.field private final d:Ldpm;

.field private final e:Lufs;


# direct methods
.method public constructor <init>(Ldgb;Ldpm;Lufs;Ldeo;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p3, p0, p4}, Ldet;-><init>(Ldeu;Ltzy;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ldeu;->c:Ldez;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Ldeu;->d:Ldpm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    const/4 p4, 0x0

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

    :goto_5
    invoke-direct {p1, p2, p3}, Ldez;-><init>(ILubo;)V

    goto/32 :goto_2

    nop

    nop

    :goto_6
    check-cast p3, Lumx;

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

    :goto_7
    iput-object p4, p0, Ldeu;->e:Lufs;

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
    iget-object p3, p3, Lumx;->a:Luad;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    iput-object p4, p0, Ldeu;->b:Ldeo;

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

    :goto_a
    invoke-direct {p4, p1}, Lumx;-><init>(Luad;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-interface {p3, p1}, Luad;->plus(Luad;)Luad;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    sget-object p1, Ldex;->b:Ldex;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Ldeu;->a:Ldgb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    invoke-virtual {p2}, Ldpm;->a()I

    move-result p2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    new-instance p1, Ldez;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p3, Ldet;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    new-instance p4, Lumx;

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
.end method


# virtual methods
.method public final a(Landroid/view/ScrollCaptureSession;Ldpm;Ltzy;)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/view/ScrollCaptureSession;->getSurface()Landroid/view/Surface;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    int-to-float v6, p3

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_2
    cmpg-float v6, v6, v7

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3
    iget v4, v5, Ldez;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_4
    add-float/2addr v9, v7

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_5
    move-object v0, p0

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget p3, p2, Ldpm;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_7
    const-string p0, "Expected min="

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_8
    const v0, 0x1c

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, v0, Lder;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    move p1, p3

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_d
    iput v2, v0, Lder;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_e
    const-string p1, "Could not find coordinator for semantics node."

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Landroid/view/ScrollCaptureSession;->getSurface()Landroid/view/Surface;

    move-result-object p0

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

    :goto_10
    if-eq v2, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :cond_0
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_1b

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    if-le v6, v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v4, v0, Lder;->g:Ldeu;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_16
    iput p3, v0, Lder;->b:I

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v4, v0}, Lbnt;->b(Lubk;Ltzy;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_25

    nop

    :goto_19
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sub-int v4, v2, v4

    nop

    :goto_1b
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/high16 v2, -0x80000000

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, p0, p3}, Lder;-><init>(Ldeu;Ltzy;)V

    :goto_1f
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, p1, p2, p3, v0}, Ldpm;-><init>(IIII)V

    goto/32 :goto_28

    nop

    nop

    :goto_22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_24
    iget-object p0, v0, Ldeu;->c:Ldez;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_25
    goto/32 :goto_a3

    nop

    :goto_26
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget p2, v2, Ldpm;->c:I

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_29
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v4, Ldes;->a:Ldes;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput v4, v0, Lder;->f:I

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string p1, " \u2264 max="

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_2d
    move-object v0, p3

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v5, p0, Ldeu;->c:Ldez;

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

    nop

    :goto_2f
    iput-object p0, v0, Lder;->g:Ldeu;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_31
    if-nez v3, :cond_4

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_4
    goto/32 :goto_48

    nop

    nop

    :goto_32
    sget-object p0, Ldpm;->a:Ldpm;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :cond_5
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sget-object v4, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_35
    if-eq p1, p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

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

    :goto_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_37
    iput-object p2, v0, Lder;->h:Ldpm;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_38
    sget-object v5, Luag;->a:Luag;

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3b
    if-ltz v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_7
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3d
    if-nez v0, :cond_8

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_8
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3e
    iget p0, p0, Ldez;->b:F

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_3f
    add-int/2addr v0, p0

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

    nop

    :goto_40
    iget-object p3, v0, Ldeu;->c:Ldez;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast v0, Lder;

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_42
    int-to-float v8, v2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v2, :cond_9

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_44
    int-to-float v9, v4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_45
    if-ne v4, v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :cond_a
    :goto_46
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_48
    sub-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_49
    iget p1, v0, Lder;->b:I

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_4a
    iget-object p2, v0, Lder;->h:Ldpm;

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_4c
    iget p1, v5, Ldez;->a:I

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move-object p0, v4

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

    nop

    :goto_4e
    iget-object p0, v0, Ldeu;->a:Ldgb;

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

    :goto_4f
    if-gez v8, :cond_b

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_b
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_57

    nop

    nop

    :goto_52
    return-object v1

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_54
    throw p0

    nop

    nop

    :goto_55
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_56
    const v1, 0x18

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v0, Lder;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_58
    iput-object p2, v0, Lder;->h:Ldpm;

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

    :goto_59
    const-string p1, "Expected range ("

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_46

    nop

    :goto_5b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    throw p0

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move p3, p1

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_5f
    iget v2, v0, Lder;->f:I

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_60
    instance-of v0, p3, Lder;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v0, v2, Ldpm;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_62
    cmpl-float v8, v6, v7

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

    nop

    :goto_63
    goto/16 :goto_96

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget v2, p2, Ldpm;->e:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_66
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p3, p1}, Ldez;->a(I)I

    move-result p1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_68
    check-cast v1, Landroid/view/ScrollCaptureSession;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_69
    if-lez v8, :cond_c

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_6a
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_6d
    invoke-direct {v2, p3, p1, p2, p0}, Ldpm;-><init>(IIII)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_6e
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iput v2, v0, Lder;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_70
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_71
    iget p1, v0, Lder;->b:I

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

    nop

    :goto_72
    iput-object p0, v0, Lder;->g:Ldeu;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_73
    move-object p1, v2

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_74
    invoke-virtual {p2, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v0, v0, Lder;->g:Ldeu;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p3, p0}, Ldez;->a(I)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-static {p3}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_78
    iget v7, v5, Ldez;->b:F

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

    nop

    :goto_79
    iput-object p1, v0, Lder;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_7a
    iget p0, v0, Lder;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_7b
    if-ne v2, v4, :cond_d

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object p3, v0, Lder;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    and-int v3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_7e
    iget p1, v2, Ldpm;->b:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7f
    iput p3, v0, Lder;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_80
    iget p3, p2, Ldpm;->b:I

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_81
    move p0, v2

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v1, v0, Lder;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_84
    iput-object p1, v0, Lder;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_85
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_54

    nop

    nop

    :goto_86
    const/4 v3, 0x2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_87
    const-string p1, ") to be \u2264 viewportSize="

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_88
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    if-le p3, v2, :cond_e

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8a
    sub-int v6, v2, p3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-static {v2, p3, p0, p1}, La;->bh(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_8f
    if-ne v4, v5, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object p2, v0, Lder;->h:Ldpm;

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

    :goto_91
    throw p0

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_93
    new-instance v2, Ldpm;

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_94
    iput v1, v0, Lder;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_95
    sget-object v4, Ltyg;->a:Ltyg;

    nop

    :goto_96
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_97
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget p2, p2, Ldpm;->d:I

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_99
    invoke-virtual {p0}, Ldgb;->d()Lcva;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_9a
    move v4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9b
    goto/32 :goto_26

    nop

    :goto_9c
    add-int/2addr p2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    cmpg-float v8, v8, v9

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_9e
    invoke-static {p0}, Luda;->q(F)I

    move-result p0

    nop

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

    :goto_9f
    iput v3, v0, Lder;->f:I

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

    :goto_a0
    invoke-virtual {p1}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    nop

    nop

    :try_start_0
    sget-object p2, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    nop

    nop

    nop

    nop

    nop

    const/4 p3, 0x0

    nop

    nop

    nop

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/BlendMode;)V

    invoke-static {p1}, Lcdr;->b(Landroid/graphics/Canvas;)Lcei;

    move-result-object p2

    nop

    iget p3, v2, Ldpm;->b:I

    nop

    nop

    nop

    int-to-float p3, p3

    nop

    nop

    nop

    nop

    nop

    iget v3, v2, Ldpm;->c:I

    nop

    nop

    nop

    nop

    neg-float p3, p3

    nop

    int-to-float v3, v3

    nop

    nop

    neg-float v3, v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, p3, v3}, Lcei;->m(FF)V

    const/4 p3, 0x0

    nop

    nop

    nop

    invoke-virtual {p0, p2, p3}, Lcva;->W(Lcei;Lcid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a1
    move v2, p0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_a2
    throw p1

    nop

    :goto_a3
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_a4
    add-int v0, v0, v1

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    sget-object p1, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->KlomoPIm:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_a6
    iget p0, v0, Lder;->c:I

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_a7
    throw p1

    nop

    nop

    nop

    nop

    :goto_a8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v5, v4, v0}, Ldez;->c(FLtzy;)Ljava/lang/Object;

    move-result-object v4

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

    :goto_aa
    iget p3, v2, Ldpm;->d:I

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_ab
    new-instance p0, Ldpm;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v1}, Landroid/view/ScrollCaptureSession;->getSurface()Landroid/view/Surface;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget v1, v0, Lder;->f:I

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_ae
    iget-object p3, v0, Ldeu;->c:Ldez;

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

    nop
.end method

.method public final onScrollCaptureEnd(Ljava/lang/Runnable;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0, p1, v1, v2}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    if-lez v0, :cond_0

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
    goto/32 :goto_9

    nop

    :goto_3
    iget-object p0, p0, Ldeu;->e:Lufs;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    sget-object v0, Luhl;->a:Luhl;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    new-instance v1, Ldep;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p1, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    invoke-direct {v1, p0, p1, v2}, Ldep;-><init>(Ldeu;Ljava/lang/Runnable;Ltzy;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .locals 7

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, p2}, Ldew;-><init>(Landroid/os/CancellationSignal;)V

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldeu;->e:Lufs;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const/4 v5, 0x0

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

    :goto_4
    const v0, 0xd

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const v1, 0x13

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1}, Lugy;->n(Lubk;)Lugg;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v2, p1

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

    :goto_8
    move-object v3, p3

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

    :goto_9
    const/4 p3, 0x3

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

    :goto_a
    move-object v0, v6

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    new-instance v6, Ldeq;

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

    :goto_e
    new-instance p1, Ldev;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    move-object v4, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    :goto_11
    invoke-direct {p1, p0}, Ldev;-><init>(Lugy;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, p4, p1, v6, p3}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    move-result-object p0

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

    :goto_15
    invoke-virtual {p2, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p1, Ldew;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

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

    :goto_18
    move-object v1, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 p4, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    invoke-direct/range {v0 .. v5}, Ldeq;-><init>(Ldeu;Landroid/view/ScrollCaptureSession;Landroid/graphics/Rect;Ljava/util/function/Consumer;Ltzy;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop
.end method

.method public final onScrollCaptureSearch(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lcfl;->b(Ldpm;)Landroid/graphics/Rect;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ldeu;->d:Ldpm;

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

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

    nop

    :goto_1
    iput p2, p1, Ldez;->b:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Ldeu;->c:Ldez;

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

    :goto_3
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    check-cast p0, Ldfd;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    invoke-virtual {p0, p1}, Ldfd;->a(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ldeu;->b:Ldeo;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const/4 p2, 0x0

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
.end method
