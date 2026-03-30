.class public final Ldja;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Landroid/text/Layout;

.field public final c:I

.field public final d:I

.field public final e:Landroid/graphics/Paint$FontMetricsInt;

.field public final f:Landroid/graphics/Rect;

.field private final g:Landroid/text/TextPaint;

.field private final h:Ldit;

.field private final i:I

.field private final j:F

.field private final k:F

.field private final l:Z

.field private final m:I

.field private final n:[Ldjk;

.field private o:Ldir;


# direct methods
.method private final 3fd9578e124c68aa49885b22b61b4ec8m(I)F
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Ldja;->k:F

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

    nop

    :goto_1
    iget p1, p0, Ldja;->j:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    add-float/2addr p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    if-eq p1, v0, :cond_0

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget v0, p0, Ldja;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    return p1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IIIIIIILdit;)V
    .locals 20

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v9, v1, Ldjk;->c:F

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_54

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_132

    nop

    nop

    :goto_3
    const-class v7, Ldjk;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_4
    iput v1, v0, Ldja;->k:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_5
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_6
    iget-boolean v2, v1, Ldjk;->b:Z

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_7
    invoke-static {v1, v3, v2}, Ldjh;->a(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result v1

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_8
    const/4 v11, 0x0

    nop

    :goto_9
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ne v2, v6, :cond_0

    nop

    nop

    goto/32 :goto_c0

    nop

    :cond_0
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1, v2}, Ldjc;->b(J)I

    move-result v4

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

    nop

    nop

    :goto_c
    goto/16 :goto_6b

    nop

    :goto_d
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v4, v0, Ldja;->d:I

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

    :goto_f
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

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

    nop

    nop

    :goto_10
    sget-wide v6, Ldjb;->b:J

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    :goto_12
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_14
    move v11, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

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

    nop

    :goto_16
    invoke-interface {v4, v8, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_17
    move v2, v13

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v6, 0x2

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

    :goto_19
    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move/from16 p12, v9

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v2, v0, Ldja;->c:I

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_1d
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static/range {p6 .. p6}, Ldjb;->b(I)Landroid/text/TextDirectionHeuristic;

    move-result-object v16

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_20
    invoke-static {v6, v7}, Ldjc;->b(J)I

    move-result v8

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_11

    nop

    :goto_22
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_23
    if-gtz v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_25
    sub-int/2addr v8, v6

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

    nop

    nop

    :goto_26
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_28
    move v11, v6

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_2a
    add-int/lit8 v6, v2, -0x1

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_2c
    invoke-static {v6, v7}, Ldjc;->a(J)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move/from16 p11, v8

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v6, Landroid/text/SpannableString;

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_2f
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_30
    const/16 v19, 0x0

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_cb

    nop

    nop

    :goto_32
    goto/32 :goto_2b

    nop

    nop

    :goto_33
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v6, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_36
    invoke-static {v1, v3, v2}, Ldjh;->b(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_37
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    nop

    :goto_38
    goto/32 :goto_9d

    nop

    nop

    :goto_39
    goto/16 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move v11, v2

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    array-length v8, v4

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move-object v2, v15

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1}, Landroid/text/Layout;->getBottomPadding()I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_41
    invoke-static/range {v6 .. v19}, Ldiw;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIIIII)Landroid/text/StaticLayout;

    move-result-object v1

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

    nop

    :goto_42
    const-class v6, Ldjk;

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_43
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v6, v0, Ldja;->b:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_46
    iput-object v4, v0, Ldja;->n:[Ldjk;

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sget-wide v6, Ldjb;->b:J

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v1, v0, Ldja;->n:[Ldjk;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4b
    if-lt v11, v8, :cond_3

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4f

    nop

    nop

    :goto_4c
    new-instance v5, Landroid/graphics/Paint$FontMetricsInt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_4d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v9, v8, Ldjk;->e:I

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_4f
    aget-object v8, v4, v11

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-lt v2, v15, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_52
    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-eqz v4, :cond_5

    nop

    goto/32 :goto_d4

    nop

    nop

    :cond_5
    :goto_54
    goto/32 :goto_138

    nop

    nop

    :goto_55
    if-lt v6, v8, :cond_6

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_6
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_117

    nop

    nop

    :goto_57
    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, v3}, Ldja;->a(I)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_59
    iget-object v4, v0, Ldja;->b:Landroid/text/Layout;

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_7
    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    move-object/from16 v4, p13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_5c
    iget v6, v7, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5d
    float-to-int v2, v2

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_113

    nop

    nop

    :goto_61
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p13 .. p13}, Ldit;->c()Landroid/text/BoringLayout$Metrics;

    move-result-object v8

    nop

    nop

    nop

    nop

    float-to-double v9, v1

    nop

    nop

    nop

    nop

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    double-to-float v5, v11

    nop

    nop

    float-to-int v11, v5

    nop

    nop

    if-eqz v8, :cond_9

    nop

    nop

    invoke-virtual/range {p13 .. p13}, Ldit;->b()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    cmpg-float v1, v4, v1

    nop

    nop

    nop

    if-gtz v1, :cond_9

    nop

    if-nez v2, :cond_9

    nop

    nop

    nop

    nop

    iput-boolean v13, v0, Ldja;->l:Z

    nop

    nop

    nop

    nop

    if-ltz v11, :cond_8

    nop

    nop

    nop

    new-instance v17, Landroid/text/BoringLayout;

    nop

    const/4 v9, 0x0

    nop

    nop

    const/4 v12, 0x1

    nop

    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    move-object/from16 v1, v17

    nop

    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v3, p3

    nop

    nop

    move v4, v11

    nop

    move-object v5, v6

    nop

    nop

    nop

    nop

    nop

    move v6, v7

    nop

    move v7, v10

    nop

    move-object/from16 v10, p5

    nop

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    const/16 v18, -0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v1 .. v12}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V

    move v15, v14

    nop

    nop

    nop

    nop

    nop

    goto :goto_62

    nop

    :cond_8
    const-string v0, "negative width"

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    :cond_9
    const/4 v15, 0x0

    nop

    nop

    const/16 v18, -0x1

    nop

    nop

    nop

    nop

    iput-boolean v15, v0, Ldja;->l:Z

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    nop

    nop

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    double-to-float v1, v1

    nop

    nop

    nop

    nop

    float-to-int v9, v1

    nop

    move-object/from16 v1, p1

    nop

    nop

    move-object/from16 v2, p3

    nop

    nop

    move v3, v11

    nop

    nop

    nop

    nop

    move-object/from16 v5, v16

    nop

    nop

    nop

    nop

    move/from16 v7, p7

    nop

    nop

    nop

    move-object/from16 v8, p5

    nop

    nop

    nop

    move/from16 v10, p12

    nop

    nop

    nop

    nop

    nop

    move/from16 v11, p8

    nop

    nop

    move/from16 v12, p9

    nop

    nop

    nop

    move/from16 v13, p10

    nop

    nop

    nop

    nop

    nop

    move v15, v14

    nop

    nop

    nop

    move/from16 v14, p11

    nop

    nop

    invoke-static/range {v1 .. v14}, Ldiw;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIIIII)Landroid/text/StaticLayout;

    move-result-object v17

    nop

    :goto_62
    move-object/from16 v1, v17

    nop

    iput-object v1, v0, Ldja;->b:Landroid/text/Layout;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget v1, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_65
    iput-object v3, v0, Ldja;->g:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_66
    invoke-static {v4, v5, v7, v8}, Ldiu;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v7

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_67
    add-int/lit8 v3, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-lez v0, :cond_a

    nop

    goto/32 :goto_bd

    nop

    :cond_a
    goto/32 :goto_bc

    nop

    :goto_69
    const/16 v4, 0x21

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

    :goto_6a
    invoke-static {v11, v1}, Ldjb;->a(II)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_6c
    if-nez v1, :cond_b

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

    :cond_b
    goto/32 :goto_da

    nop

    nop

    nop

    :goto_6d
    iput-object v5, v0, Ldja;->f:Landroid/graphics/Rect;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_6e
    new-instance v5, Landroid/graphics/Rect;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_6f
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_70
    iput v4, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_71
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_72
    iget v6, v7, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

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

    :goto_74
    iget-object v1, v0, Ldja;->b:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-eqz v11, :cond_c

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_100

    nop

    nop

    nop

    :goto_76
    const/4 v8, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-nez v4, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :cond_d
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_7a
    invoke-virtual/range {p0 .. p0}, Ldja;->j()Ljava/lang/CharSequence;

    move-result-object v4

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7b
    iput v4, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_7c
    goto/16 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_80
    const-string v5, "TextLayout:initLayout"

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {v4, v6}, Ldiv;->a(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v4

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

    :goto_82
    if-eq v4, v6, :cond_e

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_83
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_85
    const v14, 0x7fffffff

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    :goto_87
    invoke-direct/range {p7 .. p13}, Ldjk;-><init>(FIZZFZ)V

    goto/32 :goto_44

    nop

    nop

    :goto_88
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_89
    const/4 v11, 0x0

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_8a
    iput v11, v0, Ldja;->m:I

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    if-lez v4, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-gt v4, v2, :cond_10

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    :cond_10
    goto/32 :goto_5

    nop

    nop

    :goto_8d
    sget-object v6, Ldiy;->a:Landroid/text/Layout$Alignment;

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_8e
    if-eqz v7, :cond_11

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

    :cond_11
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_8f
    move/from16 p10, v11

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

    :goto_90
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_91
    move/from16 v16, v1

    nop

    nop

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

    :goto_92
    check-cast v4, [Ldjk;

    nop

    nop

    :goto_93
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    const/4 v15, 0x0

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    goto/16 :goto_3a

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_98
    iput v4, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_99
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    :goto_9a
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9c
    move v12, v14

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9d
    iget v8, v8, Ldjk;->f:I

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    :goto_9e
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_9f
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    instance-of v2, v15, Landroid/text/Spanned;

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_a1
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-ltz v9, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_12
    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iput v1, v0, Ldja;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual/range {p0 .. p0}, Ldja;->j()Ljava/lang/CharSequence;

    move-result-object v6

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual/range {p0 .. p0}, Ldja;->j()Ljava/lang/CharSequence;

    move-result-object v4

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    goto/16 :goto_6b

    nop

    nop

    nop

    :goto_a8
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    if-eqz v4, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    const/4 v6, 0x0

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_ab
    iget-boolean v11, v1, Ldjk;->b:Z

    nop

    :goto_ac
    goto/32 :goto_10a

    nop

    nop

    :goto_ad
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v8

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

    :goto_ae
    goto/16 :goto_7f

    nop

    :goto_af
    goto/32 :goto_4d

    nop

    nop

    :goto_b0
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v4

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-direct {v6, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_b4
    const-string v4, "\u200b"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-direct {v5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iput-object v4, v0, Ldja;->h:Ldit;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_b7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    goto/16 :goto_49

    nop

    :goto_b9
    goto/32 :goto_48

    nop

    nop

    :goto_ba
    if-nez v2, :cond_14

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_bb
    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_bc
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_bd
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_bf
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    :goto_c0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_c1
    aget-object v1, v1, v4

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_c2
    if-nez v5, :cond_15

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_c3
    const/4 v13, 0x1

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_c4
    iput v1, v0, Ldja;->j:F

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_c5
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

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

    :goto_c6
    iget-boolean v8, v1, Ldjk;->b:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c7
    move/from16 p9, v4

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

    :goto_c8
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_c9
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    :goto_cb
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

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

    :goto_cd
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    rem-int v0, v0, v1

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_cf
    move/from16 p8, v5

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v1, v0, Ldja;->b:Landroid/text/Layout;

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_d1
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_d3
    goto/16 :goto_93

    nop

    :goto_d4
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    nop

    nop

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

    :goto_d6
    iput v1, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

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

    :goto_d7
    iput-boolean v13, v0, Ldja;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_d8
    goto/16 :goto_b3

    nop

    nop

    nop

    nop

    :goto_d9
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    array-length v4, v1

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-interface {v2, v12, v5, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_dc
    goto :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    goto/32 :goto_2a

    nop

    nop

    :goto_de
    if-nez v2, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :cond_16
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget-object v7, v0, Ldja;->g:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    move-object v6, v2

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-static {v11, v7}, Ldjb;->a(II)J

    move-result-wide v6

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_e3
    move-object/from16 v15, p1

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    if-ne v2, v6, :cond_17

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_105

    nop

    nop

    :goto_e5
    invoke-static {v4, v5, v7, v6}, Ldiu;->a(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v7

    nop

    :goto_e6
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    const/4 v12, -0x1

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_e8
    move-object v4, v1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    check-cast v4, Landroid/text/StaticLayout;

    nop

    nop

    invoke-virtual {v4}, Landroid/text/StaticLayout;->isFallbackLineSpacingEnabled()Z

    move-result v4

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    sub-int v11, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    :goto_eb
    goto/32 :goto_3f

    nop

    nop

    :goto_ec
    const v0, 0xa

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_ed
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    const/4 v6, 0x1

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {v0, v3}, Ldja;->b(I)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v6, v2, v5, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_f3
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

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

    :goto_f4
    sget-object v2, Ldiy;->a:Landroid/text/Layout$Alignment;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    move/from16 p13, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_f6
    move-object/from16 v10, v16

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_f7
    move-object/from16 v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_f8
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_f9
    move/from16 v2, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_fa
    invoke-virtual/range {p0 .. p0}, Ldja;->j()Ljava/lang/CharSequence;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_fb
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_fc
    if-ltz v8, :cond_18

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    :cond_18
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_fd
    iget-boolean v1, v1, Ldjk;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_fe
    const/4 v6, 0x3

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

    :goto_ff
    check-cast v2, Landroid/text/Spanned;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_100
    if-eqz v1, :cond_19

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    iput-object v5, v0, Ldja;->e:Landroid/graphics/Paint$FontMetricsInt;

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_102
    const/4 v7, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_103
    const-class v7, Ldjd;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_104
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_105
    sget-object v2, Ldiy;->b:Landroid/text/Layout$Alignment;

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

    :goto_106
    sub-float/2addr v2, v4

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    const/4 v5, 0x0

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

    :goto_108
    if-eq v2, v6, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    const v8, 0x7fffffff

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_10a
    new-instance v2, Ldjk;

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_10b
    if-nez v2, :cond_1b

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

    :cond_1b
    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_10d
    check-cast v4, Landroid/text/Spanned;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_10e
    iput v2, v0, Ldja;->c:I

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_10f
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_110
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_111
    check-cast v4, Landroid/text/Spanned;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_112
    instance-of v4, v4, Landroid/text/Spanned;

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_113
    move-object v4, v1

    nop

    nop

    nop

    nop

    :try_start_2
    check-cast v4, Landroid/text/BoringLayout;

    nop

    invoke-virtual {v4}, Landroid/text/BoringLayout;->isFallbackLineSpacingEnabled()Z

    move-result v4

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_114
    const/16 v17, 0x0

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_115
    move/from16 v1, p2

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_116
    move v11, v6

    nop

    nop

    nop

    :goto_117
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_118
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_119
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_11a
    const/4 v13, 0x0

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    if-nez v4, :cond_1c

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_11c
    iget-boolean v4, v0, Ldja;->l:Z

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    sub-int/2addr v1, v2

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_11e
    move/from16 v14, p7

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    if-eqz v6, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_8e

    nop

    nop

    :goto_120
    invoke-static {v1, v2}, Ldjc;->a(J)I

    move-result v1

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_121
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_122
    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_123
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_124
    if-nez v2, :cond_1e

    nop

    nop

    goto/32 :goto_7d

    nop

    :cond_1e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_125
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_126
    goto/32 :goto_bd

    nop

    nop

    :goto_127
    if-ne v2, v13, :cond_1f

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_128
    sget-wide v1, Ldjb;->b:J

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_129
    if-ne v4, v5, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_20
    :goto_12a
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_12b
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    goto/32 :goto_126

    nop

    nop

    :goto_12e
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    nop

    nop

    :goto_12f
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    move-object/from16 p7, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_131
    if-lt v2, v5, :cond_21

    nop

    nop

    goto/32 :goto_d9

    nop

    :cond_21
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_132
    invoke-virtual/range {p0 .. p0}, Ldja;->j()Ljava/lang/CharSequence;

    move-result-object v4

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_133
    sget-object v11, Ldip;->a:Landroid/text/Layout$Alignment;

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    :goto_134
    sget-wide v1, Ldjb;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_135
    iget v5, v1, Ldjk;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_136
    const/16 v18, 0x0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_137
    goto/16 :goto_7f

    nop

    :catchall_1
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_138
    move-object v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_139
    invoke-virtual {v1}, Landroid/text/Layout;->getTopPadding()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)F
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_28

    nop

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

    goto/32 :goto_f

    nop

    nop

    :goto_2
    int-to-float v1, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v2, p0, Ldja;->c:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_22

    nop

    nop

    :goto_7
    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    nop

    :goto_8
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_a
    add-float/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    const v0, 0xe

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Ldja;->e:Landroid/graphics/Paint$FontMetricsInt;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    add-int/lit8 v2, v2, -0x1

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

    :goto_11
    iget-object p0, p0, Ldja;->e:Landroid/graphics/Paint$FontMetricsInt;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    goto :goto_13

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Ldja;->b:Landroid/text/Layout;

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

    :goto_17
    iget-object v1, p0, Ldja;->b:Landroid/text/Layout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0xc

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

    :goto_1a
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1b
    iget v0, p0, Ldja;->d:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    if-eq p1, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-float/2addr p1, p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

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

    :goto_1f
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_5

    nop

    nop

    :goto_21
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    int-to-float p1, v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_24
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_21

    nop

    nop

    :goto_26
    iget p0, p0, Ldja;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    int-to-float p1, p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v0, p0, Ldja;->c:I

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

.method public final b(I)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Ldja;->b:Landroid/text/Layout;

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

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_2
    iget p0, p0, Ldja;->d:I

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    add-float/2addr v0, p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop
.end method

.method public final c(IZ)F
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    add-float/2addr p2, p0

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

    :goto_4
    invoke-virtual {p0, p1}, Ldja;->g(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ldja;->i()Ldir;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v0, 0xa

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

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    invoke-virtual {v0, p1, v1, p2}, Ldir;->a(IZZ)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Ldja;->3fd9578e124c68aa49885b22b61b4ec8m(I)F

    move-result p0

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

    :goto_d
    return p2

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final d(IZ)F
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

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
    invoke-virtual {p0}, Ldja;->i()Ldir;

    move-result-object v0

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

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    return p2

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1, v1, p2}, Ldir;->a(IZZ)F

    move-result p2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_4

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Ldja;->g(I)I

    move-result p1

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

    :goto_b
    invoke-direct {p0, p1}, Ldja;->3fd9578e124c68aa49885b22b61b4ec8m(I)F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    add-float/2addr p2, p0

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

    nop

    nop

    :goto_d
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x4

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
.end method

.method public final e()I
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/2addr v0, p0

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

    :goto_1
    add-int/2addr v0, v2

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

    :goto_2
    iget-boolean v0, p0, Ldja;->a:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    const v0, 0x12

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v2, p0, Ldja;->i:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Ldja;->b:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/2addr v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Ldja;->d:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Ldja;->c:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_13
    goto :goto_16

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget p0, p0, Ldja;->m:I

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

    :goto_18
    iget-object v0, p0, Ldja;->b:Landroid/text/Layout;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_19
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

    nop

    :goto_1a
    const v1, 0x9

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method public final f(I)I
    .locals 1

    goto/32 :goto_b

    nop

    nop

    :goto_0
    goto :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ldja;->b:Landroid/text/Layout;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p0

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

    :goto_5
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Ldja;->b:Landroid/text/Layout;

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

    :goto_7
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ldja;->b:Landroid/text/Layout;

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
.end method

.method public final g(I)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p0

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
    iget-object p0, p0, Ldja;->b:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop
.end method

.method public final h(I)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result p0

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

    :goto_1
    iget-object p0, p0, Ldja;->b:Landroid/text/Layout;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()Ldir;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    return-object v1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v1, v0}, Ldir;-><init>(Landroid/text/Layout;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    iget-object v0, p0, Ldja;->b:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    new-instance v1, Ldir;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Ldja;->o:Ldir;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v1, p0, Ldja;->o:Ldir;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final j()Ljava/lang/CharSequence;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

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

    :goto_1
    iget-object p0, p0, Ldja;->b:Landroid/text/Layout;

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

    nop
.end method
