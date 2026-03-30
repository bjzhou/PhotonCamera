.class public final Lfcq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfcn;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lfcq;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-boolean p2, p0, Lfcq;->a:Z

    nop

    nop

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
.end method


# virtual methods
.method public final a(Lezm;Lezb;Lfdc;)Lfab;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x17

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_8
    new-instance p1, Lfak;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    const-string p0, "Animation contains merge paths but they are disabled."

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p1, p0}, Lfak;-><init>(Lfcq;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    :goto_f
    return-object p1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    aput-object p0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_13
    iget-boolean p1, p1, Lezm;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    const/16 v2, 0x176

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v2, v3, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x20

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lfcq;->b:I

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

    :goto_2
    const v0, 0x1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    const-string p0, "MERGE"

    nop

    :goto_5
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6
    if-ne p0, v0, :cond_1

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

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
    const-string p0, "SUBTRACT"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string p0, "INTERSECT"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    const-string v1, "}"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    goto :goto_5

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    goto :goto_5

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    :goto_10
    const-string p0, "ADD"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x5

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

    :goto_12
    const/4 v0, 0x1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_13
    if-ne p0, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    const-string p0, "EXCLUDE_INTERSECTIONS"

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

    :goto_16
    const-string p0, "null"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ne p0, v0, :cond_3

    nop

    goto/32 :goto_18

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0, v0, v1}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_1b
    goto/16 :goto_5

    nop

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x3

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

    :goto_1e
    goto/16 :goto_5

    nop

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v0, "MergePaths{mode="

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_24
    if-ne p0, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_25
    if-ne p0, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_8

    nop

    :goto_28
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

    nop

    nop
.end method
