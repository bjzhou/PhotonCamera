.class public final Ldif;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldie;

.field public final b:Ldhk;

.field public final c:J

.field public final d:F

.field public final e:F

.field private final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Ldie;Ldhk;J)V
    .locals 0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

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

    :goto_1
    iget-object p1, p2, Ldhk;->g:Ljava/util/List;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p2, Ldhk;->g:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Ldif;->e:F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Lrkm;->av(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

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

    :goto_6
    iget-object p1, p1, Ldhq;->a:Ldhp;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    check-cast p1, Ldhq;

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

    nop

    :goto_8
    invoke-interface {p3}, Ldhp;->c()F

    move-result p3

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    iget-object p1, p2, Ldhk;->g:Ljava/util/List;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_1e

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p3, p1, Ldhq;->a:Ldhp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p2, Ldhk;->f:Ljava/util/List;

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

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    iput p1, p0, Ldif;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    if-nez p1, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p1, Ldhq;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Ldif;->a:Ldie;

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

    :goto_15
    invoke-interface {p1}, Ldhp;->a()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    :goto_17
    iget-object p1, p2, Ldhk;->g:Ljava/util/List;

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

    nop

    nop

    :goto_18
    goto :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p3, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p4, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p3}, Ldhq;->a(F)F

    move-result p3

    nop

    nop

    :goto_1e
    goto/32 :goto_3

    nop

    nop

    :goto_1f
    iput-object p2, p0, Ldif;->b:Ldhk;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    move p1, p3

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

    :goto_21
    iput-object p1, p0, Ldif;->f:Ljava/util/List;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-wide p3, p0, Ldif;->c:J

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
.end method

.method public static synthetic i(Ldif;I)I
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ldhb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ldhq;->e(I)I

    move-result p1

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
    invoke-virtual {p0, p1}, Ldhk;->b(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Ldhb;->b:Ldja;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Ldja;->f(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ldif;->b:Ldhk;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, Ldho;->b(Ljava/util/List;I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Ldhq;->b(I)I

    move-result p0

    nop

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

    :goto_9
    iget-object v0, p0, Ldhq;->a:Ldhp;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Ldhq;

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

    :goto_c
    iget-object p0, p0, Ldhk;->g:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ldhb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldhk;->g:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    invoke-virtual {p0, p1}, Ldhq;->e(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Ldhq;->a:Ldhp;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

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

    nop

    :goto_6
    invoke-virtual {p0, p1}, Ldhq;->a(F)F

    move-result p0

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

    :goto_7
    invoke-virtual {v0, p1}, Ldja;->b(I)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    iget-object v0, v0, Ldhb;->b:Ldja;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, Ldho;->b(Ljava/util/List;I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Ldhk;->b(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ldif;->b:Ldhk;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    check-cast p0, Ldhq;

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldif;->b:Ldhk;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Ldhk;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

.method public final c(I)I
    .locals 1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ldhk;->a()Ldhe;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Ldja;->g(I)I

    move-result p1

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

    :goto_4
    invoke-virtual {p0, p1}, Ldhq;->d(I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    if-ltz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ldhe;->a()I

    move-result v0

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

    :goto_7
    iget-object v0, v0, Ldhb;->b:Ldja;

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

    :goto_8
    iget-object p0, p0, Ldhk;->g:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_17

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    :goto_c
    iget-object v0, p0, Ldhk;->g:Ljava/util/List;

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

    :goto_d
    check-cast v0, Ldhb;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Ldif;->b:Ldhk;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Ldhk;->g:Ljava/util/List;

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

    :goto_10
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    if-ge p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Ldhq;->a:Ldhp;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1}, Ldhq;->c(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, p1}, Ldho;->a(Ljava/util/List;I)I

    move-result v0

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    :goto_18
    check-cast p0, Ldhq;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public final d(F)I
    .locals 9

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ldhq;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2
    move v4, v1

    nop

    nop

    :goto_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_14

    nop

    nop

    :goto_5
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_6
    if-lez v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ldhk;->g:Ljava/util/List;

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

    :goto_8
    check-cast v2, Ldhq;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_4a

    nop

    nop

    :goto_b
    goto/32 :goto_2a

    nop

    nop

    :goto_c
    iget-object p0, p0, Ldif;->b:Ldhk;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_e
    if-gez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_f
    iget v1, v0, Ldja;->d:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    ushr-int/2addr v6, v5

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_4d

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_13
    move v5, v1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_42

    nop

    nop

    :goto_15
    invoke-static {v0}, Lrkm;->av(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    iget v8, v7, Ldhq;->f:F

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_17
    add-int/lit8 v4, v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_18
    cmpg-float v5, v5, p1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sub-int/2addr p1, v1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v0, Ldhb;->b:Ldja;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sub-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Ldhb;

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

    :goto_1e
    float-to-int p1, p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    iget p0, p0, Ldhq;->d:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_3

    nop

    :goto_21
    goto/32 :goto_4b

    nop

    nop

    :goto_22
    move v1, v6

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

    nop

    :goto_23
    iget-object v0, v0, Ldja;->b:Landroid/text/Layout;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-le v4, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_27
    goto/16 :goto_4d

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4f

    nop

    nop

    :goto_29
    if-gtz v8, :cond_4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Ldhq;->a:Ldhp;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2b
    iget v1, p0, Ldhq;->f:F

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v2, v2, Ldhq;->g:F

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

    nop

    :goto_2d
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2e
    iget v5, v7, Ldhq;->g:F

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

    :goto_2f
    goto/32 :goto_41

    nop

    :goto_30
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_22

    nop

    nop

    :goto_36
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_37
    const/4 v0, 0x0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_38
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_39
    iget v1, p0, Ldhq;->b:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_4d

    nop

    :goto_3b
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

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

    nop

    :goto_3d
    invoke-static {v0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3e
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    cmpg-float v0, p1, v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_40
    return p0

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_0

    nop

    nop

    :goto_42
    if-ltz v5, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v7, Ldhq;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_44
    if-lez v0, :cond_7

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2f

    nop

    :goto_45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_46
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_47
    add-int v6, v4, v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, p1}, Ldhq;->c(I)I

    move-result p0

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-gtz v5, :cond_8

    nop

    goto/32 :goto_35

    nop

    :cond_8
    goto/32 :goto_4e

    nop

    nop

    :goto_4c
    neg-int v1, v4

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    add-int/lit8 v2, v6, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_4f
    add-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_50
    iget v0, p0, Ldhq;->c:I

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v0, p0, Ldhk;->g:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_52
    cmpl-float v2, p1, v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_53
    cmpl-float v8, v8, p1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_55
    sub-float/2addr p1, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop
.end method

.method public final e(I)I
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    check-cast v0, Ldhb;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ldhq;->b(I)I

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Ldhk;->b(I)V

    goto/32 :goto_b

    nop

    nop

    :goto_4
    iget-object v0, p0, Ldhq;->a:Ldhp;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ldif;->b:Ldhk;

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

    :goto_6
    invoke-static {p0, p1}, Ldho;->b(Ljava/util/List;I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Ldja;->b:Landroid/text/Layout;

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

    :goto_8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Ldhb;->b:Ldja;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    :goto_b
    iget-object p0, p0, Ldhk;->g:Ljava/util/List;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Ldhq;->e(I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, Ldhq;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, p1, Ldif;->b:Ldhk;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldif;->f:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Ldif;->b:Ldhk;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v1, :cond_0

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

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    cmpg-float v1, v1, v3

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

    :goto_6
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_2
    goto/32 :goto_27

    nop

    :goto_9
    cmpg-float v1, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_a
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p0, :cond_4

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    :goto_c
    iget v3, p1, Ldif;->d:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    goto/32 :goto_28

    nop

    nop

    :goto_e
    iget-object v1, p0, Ldif;->a:Ldie;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    iget-object v3, p1, Ldif;->a:Ldie;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    if-eqz v1, :cond_5

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

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    :goto_11
    iget-wide v3, p0, Ldif;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    check-cast p1, Ldif;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x2

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

    :goto_14
    const v0, 0x7

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

    :goto_15
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

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

    :goto_16
    return v2

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq p0, p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    iget-wide v5, p1, Ldif;->c:J

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    return v2

    nop

    nop

    :goto_1b
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1c
    invoke-static {v3, v4, v5, v6}, La;->q(JJ)Z

    move-result v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return v0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1f
    return v2

    nop

    :goto_20
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return v2

    nop

    nop

    :goto_22
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    return v0

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p1, p1, Ldif;->f:Ljava/util/List;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

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

    :goto_27
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2c
    iget v1, p0, Ldif;->e:F

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

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

    :goto_2e
    instance-of v1, p1, Ldif;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v0, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_30
    iget v3, p1, Ldif;->e:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_31
    return v2

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2

    nop

    nop

    :goto_33
    iget v1, p0, Ldif;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_34
    if-eqz v1, :cond_7

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v1, :cond_8

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final f(Ldie;J)Ldif;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {v0, p1, p0, p2, p3}, Ldif;-><init>(Ldie;Ldhk;J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    :goto_2
    new-instance v0, Ldif;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object p0, p0, Ldif;->b:Ldhk;

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

.method public final g(I)Ldnz;
    .locals 2

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_4
    check-cast v0, Ldhb;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5
    const/16 p0, 0x5d

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

    :goto_6
    iget-object v0, p0, Ldhq;->a:Ldhp;

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

    nop

    :goto_7
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ldhe;->a()I

    move-result p0

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

    nop

    :goto_9
    if-le p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ldif;->b:Ldhk;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    if-gez p1, :cond_1

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

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    :goto_f
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    const-string p1, ") is out of bounds [0, "

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p0, Ldhq;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    if-eq p1, v0, :cond_2

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, p0}, Ldja;->g(I)I

    move-result p0

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
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_35

    nop

    nop

    :goto_18
    goto/32 :goto_2e

    nop

    nop

    :goto_19
    goto :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_38

    nop

    nop

    :goto_1c
    sget-object p0, Ldnz;->b:Ldnz;

    nop

    nop

    :goto_1d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Ldhk;->a()Ldhe;

    move-result-object v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eq p0, p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_21
    iget-object p0, p0, Ldhk;->g:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

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

    :goto_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Ldhk;->g:Ljava/util/List;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_25
    invoke-virtual {p0, p1}, Ldhq;->d(I)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_26
    throw p1

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Ldhe;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Ldhk;->a()Ldhe;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Ldhk;->a()Ldhe;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2e
    iget-object v0, p0, Ldhk;->g:Ljava/util/List;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_f

    nop

    :goto_30
    iget-object p1, v0, Ldhb;->b:Ldja;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_31
    iget-object v0, v0, Ldhe;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_32
    sget-object p0, Ldnz;->a:Ldnz;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_33
    const-string v1, "offset("

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v0, p1}, Ldho;->a(Ljava/util/List;I)I

    move-result v0

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1, p0}, Ldja;->h(I)I

    move-result p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop
.end method

.method public final h()Z
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    and-long/2addr v0, v2

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

    nop

    :goto_1
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldif;->b:Ldhk;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    :goto_6
    iget-wide v0, p0, Ldif;->c:J

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    long-to-int v0, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    cmpg-float p0, v0, p0

    nop

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

    :goto_c
    long-to-int v2, v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    int-to-float v2, v2

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

    :goto_e
    iget v3, p0, Ldhk;->c:F

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_f
    const-wide v2, 0xffffffffL

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

    :goto_10
    if-ltz v2, :cond_0

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    const/16 v2, 0x20

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_14
    const v1, 0x8

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_15
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    if-gez p0, :cond_2

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    cmpg-float v2, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_19
    const v0, 0x11

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean v2, p0, Ldhk;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p0, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
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

    :goto_1f
    iget p0, p0, Ldhk;->d:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_20
    shr-long v2, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_21
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_16

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
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Ldif;->d:F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1f

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

    :goto_2
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

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

    :goto_5
    iget-object v1, p0, Ldif;->b:Ldhk;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Ldif;->e:F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    mul-int/lit8 v0, v0, 0x1f

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2, v3}, La;->r(J)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_d
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_f
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Ldhk;->hashCode()I

    move-result v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-wide v2, p0, Ldif;->c:J

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Ldif;->a:Ldie;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    return v0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ldie;->hashCode()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Ldif;->f:Ljava/util/List;

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

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1e
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, ", multiParagraph="

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

    :goto_1
    invoke-static {v1, v2}, Ldpo;->a(J)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    const-string v1, ", placeholderRects="

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const-string v1, ", firstBaseline="

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    iget v1, p0, Ldif;->d:F

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, p0, Ldif;->e:F

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

    :goto_a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Ldif;->b:Ldhk;

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

    :goto_c
    iget-object v1, p0, Ldif;->a:Ldie;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    const/16 p0, 0x29

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, ", lastBaseline="

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    iget-wide v1, p0, Ldif;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    :goto_1e
    const-string v1, ", size="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    :goto_22
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Ldif;->f:Ljava/util/List;

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

    :goto_25
    const-string v1, "TextLayoutResult(layoutInput="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method
