.class public final Ldiw;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIIIII)Landroid/text/StaticLayout;
    .locals 16

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    goto/32 :goto_2a

    nop

    nop

    :goto_2
    move/from16 v13, p12

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, v15, Ldix;->n:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    :goto_7
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v0 .. v14}, Ldix;-><init>(Ljava/lang/CharSequence;ILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIIIII)V

    goto/32 :goto_b

    nop

    nop

    :goto_a
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_b
    iget-object v0, v15, Ldix;->e:Landroid/text/TextDirectionHeuristic;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_c
    iget v0, v15, Ldix;->k:I

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, v15, Ldix;->j:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v15, Ldix;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_f
    iget v0, v15, Ldix;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v0, v0}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v0, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    :try_start_0
    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    nop

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    iget v2, v15, Ldix;->l:I

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    nop

    nop

    iget v2, v15, Ldix;->m:I

    nop

    nop

    invoke-virtual {v0, v2}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

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

    :goto_14
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    goto/32 :goto_35

    nop

    nop

    :goto_15
    iget-object v4, v15, Ldix;->a:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object v0

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move/from16 v12, p11

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

    :goto_1b
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move/from16 v14, p13

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1e
    move-object/from16 v5, p4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v5, 0x0

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

    nop

    :goto_20
    move/from16 v11, p10

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_21
    invoke-virtual {v1, v5}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_23
    move/from16 v9, p8

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_25
    move/from16 v7, p6

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

    :goto_26
    move/from16 v10, p9

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_28
    move-object/from16 v3, p1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_29
    move-object/from16 v6, p5

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget v0, v15, Ldix;->g:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2c
    move/from16 v2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2e
    move-object/from16 v8, p7

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

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object v0, v15

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_31
    invoke-static {v4, v5, v3, v2, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, v15, Ldix;->h:Landroid/text/TextUtils$TruncateAt;

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

    :goto_33
    iget v1, v15, Ldix;->d:I

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v3, v15, Ldix;->b:I

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

    :goto_35
    const/4 v0, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_36
    move/from16 v4, p2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v2, v15, Ldix;->c:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_38
    iget-object v0, v15, Ldix;->f:Landroid/text/Layout$Alignment;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_39
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method
