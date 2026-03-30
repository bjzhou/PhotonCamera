.class public final Lcdg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput v0, p0, Lcdg;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Lcdg;->d:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lcdg;->b:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

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

    :goto_6
    iput v0, p0, Lcdg;->c:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final a(FFFF)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {p4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    nop

    goto/32 :goto_6

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
    iget v0, p0, Lcdg;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lcdg;->a:F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lcdg;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    iget p1, p0, Lcdg;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    iput p1, p0, Lcdg;->d:F

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

    :goto_7
    iget p1, p0, Lcdg;->d:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

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

    :goto_a
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    iget p1, p0, Lcdg;->c:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    iput p1, p0, Lcdg;->c:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final b(FFFF)V
    .locals 0

    goto/32 :goto_3

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
    iput p2, p0, Lcdg;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput p4, p0, Lcdg;->d:F

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
    iput p1, p0, Lcdg;->a:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Lcdg;->c:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Z
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_16

    nop

    :goto_1
    iget v1, p0, Lcdg;->c:F

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    if-gez p0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    const v1, 0x1e

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

    :goto_5
    if-gez v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_9

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    move v0, v3

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    :goto_a
    const/4 v2, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Lcdg;->a:F

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    :goto_e
    goto :goto_d

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    cmpl-float v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    const v0, 0x19

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

    :goto_13
    move v0, v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    or-int p0, v0, v2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    :goto_17
    iget p0, p0, Lcdg;->d:F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_19
    cmpl-float p0, v1, p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1b
    iget v1, p0, Lcdg;->b:F

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    return p0

    nop

    nop

    :goto_1d
    goto/32 :goto_0

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "MutableRect("

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    iget v1, p0, Lcdg;->a:F

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

    :goto_4
    iget v2, p0, Lcdg;->b:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_7
    const-string v1, ", "

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x19

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v2}, Lcdf;->a(F)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    invoke-static {p0}, Lcdf;->a(F)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    iget v2, p0, Lcdg;->c:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Lcdg;->d:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2}, Lcdf;->a(F)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    :goto_19
    const/16 p0, 0x29

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    invoke-static {v1}, Lcdf;->a(F)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x20

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
