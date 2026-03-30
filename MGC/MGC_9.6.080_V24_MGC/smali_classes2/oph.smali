.class public final Loph;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:Ljava/lang/String;

.field public final d:[Lopg;

.field public final e:Ljava/util/Map;

.field public final f:Z

.field public final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    new-instance v0, Lomr;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    const v0, 0x17

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Loph;->CREATOR:Landroid/os/Parcelable$Creator;

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

    :goto_a
    invoke-direct {v0, v1}, Lomr;-><init>(I)V

    goto/32 :goto_9

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lopg;Z[BJ)V
    .locals 0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    array-length p1, p3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Loph;->d:[Lopg;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    iget p6, p4, Lopg;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    const/4 p2, 0x0

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Loph;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Loph;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    iget-object p5, p0, Loph;->e:Ljava/util/Map;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean p4, p0, Loph;->f:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Loph;->e:Ljava/util/Map;

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

    :goto_b
    aget-object p4, p3, p2

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

    :goto_c
    iput-object p5, p0, Loph;->b:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    iput-wide p6, p0, Loph;->g:J

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
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

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

    :goto_14
    invoke-interface {p5, p6, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lt p2, p1, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p1, Ljava/util/TreeMap;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_12

    nop

    nop

    :goto_0
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Loph;->b:[B

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

    nop

    :goto_3
    if-eq v0, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Loph;

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

    :goto_8
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p1, Loph;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Loph;->a:Ljava/lang/String;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-wide p0, p1, Loph;->g:J

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    :goto_f
    invoke-static {v0, v2}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

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

    :goto_10
    iget-boolean v2, p1, Loph;->f:Z

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

    :goto_11
    iget-boolean v0, p0, Loph;->f:Z

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

    nop

    :goto_12
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    const/4 p0, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, v2}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

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
    iget-object v0, p0, Loph;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    :goto_1c
    cmp-long p0, v2, p0

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

    :goto_1d
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    instance-of v0, p1, Loph;

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

    :goto_20
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, p1, Loph;->b:[B

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

    :goto_22
    iget-object v0, p0, Loph;->e:Ljava/util/Map;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_23
    iget-object v2, p1, Loph;->c:Ljava/lang/String;

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

    :goto_24
    if-eqz p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_26
    iget-object v2, p1, Loph;->e:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_27
    iget-wide v2, p0, Loph;->g:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public final hashCode()I
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1d

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

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

    :goto_6
    iget-boolean v3, p0, Loph;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xd

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v4, p0, Loph;->b:[B

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    iget-wide v5, p0, Loph;->g:J

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
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

    nop

    nop

    :goto_d
    iget-object v1, p0, Loph;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Loph;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Loph;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Loph;->b:[B

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_22

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

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
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "\', \'"

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

    :goto_b
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    :goto_12
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_13
    const/16 p0, 0x29

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Loph;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "\', ("

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "Configurations(\'"

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_17
    const-string v1, "null"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    const-string v3, ", "

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Loph;->e:Ljava/util/Map;

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

    :goto_1a
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, "), "

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_21
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

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

    :goto_24
    iget-object v1, p0, Loph;->c:Ljava/lang/String;

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

    :goto_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-boolean v1, p0, Loph;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    :goto_2a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2a

    nop

    :goto_2d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v2, Lopg;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2f
    iget-wide v1, p0, Loph;->g:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    iget-wide v1, p0, Loph;->g:J

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
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

    :goto_4
    invoke-static {p1, p2, v1}, Lolx;->p(Landroid/os/Parcel;I[B)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_6
    invoke-static {p1, p2, v1}, Lolx;->j(Landroid/os/Parcel;IZ)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, v1, v2}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_9
    const/4 p2, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Loph;->d:[Lopg;

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

    :goto_d
    invoke-static {p1, p2, v1, v2}, Lolx;->n(Landroid/os/Parcel;IJ)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p2, 0x6

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    const v1, 0x1d

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
    const/4 v1, 0x2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean v1, p0, Loph;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    const/4 p2, 0x5

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    invoke-static {p1, v1, v2, p2}, Lolx;->y(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1, v1, v2}, Lolx;->v(Landroid/os/Parcel;ILjava/lang/String;)V

    goto/32 :goto_a

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

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v2, p0, Loph;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Loph;->b:[B

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    iget-object v2, p0, Loph;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_b

    nop

    nop

    :goto_1d
    invoke-static {p1, v0}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method
