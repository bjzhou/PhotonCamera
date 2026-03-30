.class public final Lfdp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_4

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    const v0, 0x1b

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

    :goto_5
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_6
    const-string v2, "k"

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

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    const-string v1, "y"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lfdp;->a:Liof;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    :goto_c
    invoke-static {v0}, Liof;->Z([Ljava/lang/String;)Liof;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "x"

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

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public static a(Lfew;Lezb;)Lfcd;
    .locals 9

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lfew;->p()I

    move-result v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    goto/32 :goto_14

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    :goto_7
    invoke-static {}, Lffi;->a()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v3, Lfbg;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lfew;->i()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v6, Lfdx;->d:Lfdx;

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

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_10
    move v7, v1

    nop

    :goto_11
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lfew;->n()Z

    move-result v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_13
    move-object v4, p1

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

    :goto_14
    new-instance p0, Lfcd;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    :goto_16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    const v0, 0x8

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

    nop

    nop

    :goto_18
    new-instance v0, Ljava/util/ArrayList;

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

    :goto_19
    invoke-static {v0}, Lfef;->b(Ljava/util/List;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0, v1}, Lfed;->c(Lfew;F)Landroid/graphics/PointF;

    move-result-object p0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static/range {v3 .. v8}, Lfee;->a(Lfew;Lezb;FLfet;ZZ)Lffj;

    move-result-object v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_11

    nop

    :goto_1e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lfew;->p()I

    move-result v1

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

    :goto_20
    move v7, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    if-eq v1, v3, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    :goto_23
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x0

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

    :goto_25
    invoke-virtual {p0}, Lfew;->g()V

    :goto_26
    goto/32 :goto_12

    nop

    nop

    :goto_27
    goto :goto_26

    nop

    nop

    :goto_28
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2b
    const v1, 0xc

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v3, p1, v1}, Lfbg;-><init>(Lezb;Lffj;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_2d
    new-instance p1, Lffj;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2e
    move-object v3, p0

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

    :goto_2f
    invoke-static {}, Lffi;->a()F

    move-result v5

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

    :goto_30
    invoke-direct {p1, p0}, Lffj;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p0, v0}, Lfcd;-><init>(Ljava/util/List;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method static b(Lfew;Lezb;)Lfck;
    .locals 8

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_19

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Lfdp;->a(Lfew;Lezb;)Lfcd;

    move-result-object v1

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_4
    const-string p0, "Lottie doesn\'t support expressions."

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v0, v6

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v7, 0x2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v4, v5, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lfew;->m()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, p1}, Landroidx/wear/ambient/SharedLibraryVersion;->i(Lfew;Lezb;)Lfca;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    if-ne v4, v7, :cond_2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p1}, Landroidx/wear/ambient/SharedLibraryVersion;->i(Lfew;Lezb;)Lfca;

    move-result-object v3

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

    :goto_e
    invoke-virtual {p0}, Lfew;->l()V

    goto/32 :goto_8

    nop

    nop

    :goto_f
    sget-object v4, Lfdp;->a:Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_29

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lfew;->p()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_19

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    :goto_18
    move-object v3, v2

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v4}, Lfew;->q(Liof;)I

    move-result v4

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

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lfew;->p()I

    move-result v4

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

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lfew;->p()I

    move-result v4

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x1c

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

    :goto_22
    goto :goto_19

    nop

    nop

    :goto_23
    goto/32 :goto_15

    nop

    nop

    :goto_24
    if-ne v4, v6, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    :goto_25
    const/4 v0, 0x0

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

    :goto_26
    invoke-virtual {p0}, Lfew;->j()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p0, Lfch;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lfew;->m()V

    :goto_29
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2a
    const v0, 0x5

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2b
    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_19

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2f
    const/4 v5, 0x6

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_30
    invoke-direct {p0, v2, v3}, Lfch;-><init>(Lfca;Lfca;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v1, 0x0

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

    :goto_32
    invoke-virtual {p0}, Lfew;->m()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_34
    if-ne v4, v5, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eq v4, v5, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_6
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v0, :cond_7

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

    :cond_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1, p0}, Lezb;->d(Ljava/lang/String;)V

    :goto_39
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3b
    const/4 v5, 0x4

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3c
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Lfew;->h()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop
.end method
