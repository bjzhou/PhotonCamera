.class final Lscl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lscm;

.field b:Lsam;

.field final synthetic c:Lsco;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lsco;I)V
    .locals 4

    goto/32 :goto_30

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

    :goto_1
    goto/32 :goto_2d

    nop

    nop

    :goto_2
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_0
    :goto_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Lsco;->range:Lrxb;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    check-cast p2, Lscm;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, p1, Lrvd;->comparator:Ljava/util/Comparator;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8
    iget-object v1, p2, Lscm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iget-object v1, p1, Lsco;->header:Lscm;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lscl;->c:Lsco;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Lscm;->e()Lscm;

    move-result-object p2

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p2, p0, Lscl;->a:Lscm;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_f
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    invoke-virtual {p2, v2, v1}, Lscm;->d(Ljava/util/Comparator;Ljava/lang/Object;)Lscm;

    move-result-object p2

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

    nop

    :goto_11
    iget v2, v2, Lrxb;->g:I

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

    :goto_12
    if-eq v2, v3, :cond_1

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

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_13
    iget-object v1, p1, Lsco;->range:Lrxb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_14
    iget-object v1, v1, Lrxb;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    iget-object v2, p1, Lsco;->range:Lrxb;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v1}, Lrxb;->b(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_3

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p2, p1, Lsco;->header:Lscm;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p2, p1, Lsco;->rootReference:Lscn;

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

    :goto_20
    iget-object v2, p1, Lrvd;->comparator:Ljava/util/Comparator;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0xa

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    iget-boolean v2, v1, Lrxb;->d:Z

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Lscl;->b:Lsam;

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

    :goto_24
    iget-object v3, p2, Lscm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_25
    goto/16 :goto_3

    nop

    :goto_26
    goto/32 :goto_e

    nop

    nop

    :goto_27
    invoke-interface {v2, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

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

    :goto_28
    invoke-virtual {p2}, Lscm;->e()Lscm;

    move-result-object p2

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

    :goto_29
    goto/16 :goto_d

    nop

    nop

    :goto_2a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2b
    iput p2, p0, Lscl;->d:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    :goto_2f
    if-eqz p2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    :goto_30
    const v0, 0x1c

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

    :goto_31
    if-ne p2, v1, :cond_6

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

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_32
    move-object p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_33
    goto/16 :goto_26

    nop

    nop

    :goto_34
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_35
    if-eqz p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p2, p2, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public constructor <init>(Lsco;I[B)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object p3, p2

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2f

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, v1, v0}, Lscm;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lscm;

    move-result-object p2

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

    :goto_8
    invoke-virtual {p1, v0}, Lrxb;->b(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p1, Lsco;->range:Lrxb;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    const/4 p3, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Lscm;->g()Lscm;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1f

    nop

    nop

    :goto_e
    const v0, 0x14

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2a

    nop

    nop

    :goto_10
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p2, Lscm;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p2}, Lscm;->g()Lscm;

    move-result-object p2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, v0, Lrxb;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, p1, Lrvd;->comparator:Ljava/util/Comparator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_17
    if-eqz p1, :cond_2

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz p2, :cond_3

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

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p2, p2, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1b
    const v1, 0x1f

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_4

    nop

    goto/32 :goto_21

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v1, v1, Lrxb;->f:I

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

    :goto_1e
    check-cast p2, Lscm;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p1, Lsco;->header:Lscm;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_d

    nop

    :goto_21
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p2, p1, Lsco;->header:Lscm;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p2, p1, Lsco;->rootReference:Lscn;

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

    :goto_24
    iget-object v1, p1, Lrvd;->comparator:Ljava/util/Comparator;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, p2, Lscm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_26
    iget-boolean v1, v0, Lrxb;->b:Z

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_5

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    :goto_28
    iget-object v1, p1, Lsco;->range:Lrxb;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2b

    nop

    nop

    :goto_2b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2c
    if-ne p2, v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2d
    iput-object p1, p0, Lscl;->c:Lsco;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p1, Lsco;->range:Lrxb;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object p3, p0, Lscl;->a:Lscm;

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

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_31
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput p2, p0, Lscl;->d:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eq v1, v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsam;
    .locals 4

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, v2, Lsco;->header:Lscm;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lscm;->e()Lscm;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    if-eq v0, v2, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_5
    iput-object v0, p0, Lscl;->a:Lscm;

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_a
    iget-object v0, p0, Lscl;->a:Lscm;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Lscm;->g()Lscm;

    move-result-object v0

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

    :goto_e
    iput-object v0, p0, Lscl;->a:Lscm;

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_21

    nop

    nop

    :goto_10
    iget-object v2, v2, Lsco;->header:Lscm;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lscl;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_12
    iget-object v2, p0, Lscl;->a:Lscm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_13
    iput-object v3, p0, Lscl;->b:Lsam;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Lscl;->c:Lsco;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    iget-object v2, p0, Lscl;->c:Lsco;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Lscl;->c:Lsco;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_18
    throw p0

    nop

    nop

    :goto_19
    goto/32 :goto_38

    nop

    nop

    :goto_1a
    new-instance v3, Lsck;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v3, p0, Lscl;->b:Lsam;

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

    :goto_1c
    iget-object v0, p0, Lscl;->a:Lscm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1d
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lscl;->a:Lscm;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1f
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lscm;->e()Lscm;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_21
    return-object v3

    nop

    nop

    :goto_22
    goto/32 :goto_1d

    nop

    nop

    :goto_23
    if-eq v0, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lscl;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v0, p0, Lscl;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lscl;->c:Lsco;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_29
    const v1, 0x5

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

    :goto_2a
    invoke-direct {v3, v0, v2}, Lsck;-><init>(Lsco;Lscm;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2e
    throw p0

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Lscm;->g()Lscm;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v1, p0, Lscl;->a:Lscm;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v1, p0, Lscl;->a:Lscm;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v3, Lsck;

    nop

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

    :goto_36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_35

    nop

    nop

    :goto_37
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_39
    const v0, 0xa

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3a
    invoke-direct {v3, v2, v0}, Lsck;-><init>(Lsco;Lscm;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3b
    return-object v3

    nop

    :goto_3c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hasNext()Z
    .locals 5

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v4, v0}, Lrxb;->d(Ljava/lang/Object;)Z

    move-result v0

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
    iget-object v4, v4, Lsco;->range:Lrxb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xa

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v4, p0, Lscl;->c:Lsco;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    :goto_9
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lscl;->a:Lscm;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_b
    iput-object v2, p0, Lscl;->a:Lscm;

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
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_12
    iput-object v2, p0, Lscl;->a:Lscm;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    return v3

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_16
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    :goto_17
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    return v1

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_12

    nop

    nop

    :goto_1b
    invoke-virtual {v4, v0}, Lrxb;->c(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_1c
    iget-object v0, v0, Lscm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1e
    iget-object v4, p0, Lscl;->c:Lsco;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Lscl;->d:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return v3

    nop

    :goto_21
    goto/32 :goto_2c

    nop

    nop

    :goto_22
    iget-object v0, v0, Lscm;->a:Ljava/lang/Object;

    nop

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

    :goto_23
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v4, v4, Lsco;->range:Lrxb;

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

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_17

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_7

    nop

    nop

    :goto_2a
    move v1, v3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2b
    move v1, v3

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lscl;->a:Lscm;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lscl;->a()Lsam;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

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
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lscl;->a()Lsam;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iget v0, p0, Lscl;->d:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final remove()V
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1f

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

    :goto_1
    iget-object v0, p0, Lscl;->b:Lsam;

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

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lscl;->b:Lsam;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_13

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v1, p0, Lscl;->b:Lsam;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lscl;->b:Lsam;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v3, v2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v3, v4

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    :goto_f
    iget v0, p0, Lscl;->d:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    const/4 v4, 0x0

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

    :goto_11
    if-lez v0, :cond_1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    :goto_12
    move v3, v4

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, p0, Lscl;->c:Lsco;

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

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lscl;->b:Lsam;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, v0}, Lsco;->w(Ljava/lang/Object;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    invoke-static {v3, v2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v1, p0, Lscl;->b:Lsam;

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

    :goto_1e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Lsam;->b()Ljava/lang/Object;

    move-result-object v0

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

    :goto_20
    iget-object v2, p0, Lscl;->c:Lsco;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0}, Lsam;->b()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_17

    nop

    nop

    :goto_24
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_25
    const-string v2, "no calls to next() since the last call to remove()"

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    :goto_27
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2, v0}, Lsco;->w(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    :goto_29
    const/4 v3, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method
