.class public final Ldit;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/TextPaint;

.field public c:F

.field private final d:I

.field private e:F

.field private f:Landroid/text/BoringLayout$Metrics;

.field private g:Z

.field private h:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ldit;->b:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput p1, p0, Ldit;->c:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

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
    iput p3, p0, Ldit;->d:I

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iput-object p1, p0, Ldit;->a:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/high16 p1, 0x7fc00000    # Float.NaN

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

    :goto_7
    iput p1, p0, Ldit;->e:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()Ljava/lang/CharSequence;
    .locals 7

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v3, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1
    move-object v1, v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2
    aget-object v5, v1, v4

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_5
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1e

    nop

    nop

    :goto_9
    array-length v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a
    const-class v2, Landroid/text/style/CharacterStyle;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_f

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    :goto_d
    invoke-static {v1, v2}, Ldiv;->a(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v2

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

    :goto_e
    move-object v0, v3

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    check-cast v1, [Landroid/text/style/CharacterStyle;

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

    :goto_12
    if-eqz v2, :cond_2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v3, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    :goto_17
    goto/32 :goto_10

    nop

    nop

    :goto_18
    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_19
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2a

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    :goto_1d
    if-eqz v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lt v4, v2, :cond_5

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x15

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_20
    new-instance v3, Landroid/text/SpannableString;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Ldit;->a:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Ldit;->h:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-object v0

    nop

    nop

    :goto_24
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_29

    nop

    :goto_26
    goto/16 :goto_f

    nop

    :goto_27
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-class v3, Landroid/text/style/CharacterStyle;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2b
    check-cast v1, Landroid/text/Spanned;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2c
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2e
    if-nez v1, :cond_8

    nop

    goto/32 :goto_f

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v3, :cond_9

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_30
    instance-of v6, v5, Landroid/text/style/MetricAffectingSpan;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_31
    instance-of v1, v0, Landroid/text/Spanned;

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

    :goto_32
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_34
    iput-object v0, p0, Ldit;->h:Ljava/lang/CharSequence;

    nop

    nop

    :goto_35
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(II)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldit;->da190e616797844b591057d0190e7728m()Ljava/lang/CharSequence;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Ldit;->b:Landroid/text/TextPaint;

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
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1, p2, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result p0

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
.end method

.method public final b()F
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1
    const v0, 0x1e

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    double-to-float v0, v2

    nop

    :goto_3
    goto/32 :goto_20

    nop

    nop

    :goto_4
    cmpg-float v2, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_5
    iput v0, p0, Ldit;->e:F

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    float-to-double v2, v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

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

    :goto_9
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    invoke-static {v2, v4}, Ldiv;->a(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v2

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

    nop

    :goto_b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v3}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    const-class v4, Ldji;

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

    :goto_10
    instance-of v4, v2, Landroid/text/Spanned;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    move p0, v0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    const v1, 0x15

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_16

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_16
    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

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

    nop

    :goto_17
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_3
    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_5
    :goto_1b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1c
    return p0

    nop

    nop

    :goto_1d
    goto/32 :goto_32

    nop

    nop

    :goto_1e
    check-cast v2, Landroid/text/Spanned;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Ldit;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    iget-object v2, p0, Ldit;->a:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_21
    iget p0, p0, Ldit;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_22
    goto :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_27

    nop

    nop

    :goto_24
    goto/16 :goto_12

    nop

    nop

    :goto_25
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_26
    const-class v4, Ldjj;

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

    :goto_27
    const/4 v0, -0x1

    nop

    :goto_28
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2a
    const/high16 v1, 0x3f000000    # 0.5f

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

    :goto_2b
    invoke-virtual {p0}, Ldit;->c()Landroid/text/BoringLayout$Metrics;

    move-result-object v0

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

    :goto_2c
    invoke-static {v2, v4}, Ldiv;->a(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-ltz v2, :cond_6

    nop

    goto/32 :goto_3

    nop

    :cond_6
    goto/32 :goto_33

    nop

    nop

    :goto_2e
    const/4 v2, 0x0

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

    nop

    nop

    :goto_2f
    iget-object v3, p0, Ldit;->b:Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_31
    cmpg-float v4, v0, v1

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

    :goto_32
    goto/32 :goto_c

    nop

    nop

    :goto_33
    invoke-direct {p0}, Ldit;->da190e616797844b591057d0190e7728m()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_34
    goto :goto_3a

    nop

    :goto_35
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_36
    if-eqz v4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_37
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_38
    if-eqz v4, :cond_8

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

    :cond_8
    goto/32 :goto_34

    nop

    nop

    :goto_39
    add-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3b
    cmpg-float v1, v2, v1

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

    :goto_3c
    invoke-virtual {p0, v2, v0}, Ldit;->a(II)F

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final c()Landroid/text/BoringLayout$Metrics;
    .locals 5

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-boolean v4, p0, Ldit;->g:Z

    nop

    nop

    nop

    nop

    :catchall_0
    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldit;->f:Landroid/text/BoringLayout$Metrics;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
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

    :goto_5
    const v0, 0x3

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
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    :try_start_0
    iget v0, p0, Ldit;->d:I

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ldit;->a:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    iget-object v2, p0, Ldit;->b:Landroid/text/TextPaint;

    nop

    nop

    nop

    invoke-static {v0}, Ldjb;->b(I)Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, v0, v4, v3}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1f

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    iput-object v0, p0, Ldit;->f:Landroid/text/BoringLayout$Metrics;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Ldit;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
