.class public final Ldmg;
.super Ldjs;
.source "PG"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ldme;

.field public final e:Ldlh;

.field public final f:I

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ldme;Ldlh;)V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_1
    iput-object p2, p0, Ldmg;->d:Ldme;

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

    :goto_2
    const v0, 0x2

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

    :goto_3
    new-array v3, v2, [Ldlf;

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

    :goto_4
    const/4 v2, 0x0

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

    :goto_5
    invoke-direct {p0, v3, v0, v1}, Ldjs;-><init>(ILdjr;Ldlg;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    iput v2, p0, Ldmg;->f:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    iput-boolean p1, p0, Ldmg;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    sget-object v0, Ldmi;->a:Ldmi;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    iput-object p1, p0, Ldmg;->c:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1, v3}, Ldlg;-><init>([Ldlf;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    iput-object p3, p0, Ldmg;->e:Ldlh;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v1, Ldlg;

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
.end method


# virtual methods
.method public final b()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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
.end method

.method public final c()Ldlh;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldmg;->e:Ldlh;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v2

    nop

    nop

    :goto_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    :goto_5
    instance-of v1, p1, Ldmg;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

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

    :goto_7
    if-eq p0, p1, :cond_2

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

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget p0, p1, Ldmg;->f:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, p1, Ldmg;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    iget-object v3, p1, Ldmg;->d:Ldme;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    :goto_f
    return v0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Ldmg;->e:Ldlh;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v2, v2}, La;->p(II)Z

    move-result p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xc

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

    :goto_14
    iget-boolean p0, p1, Ldmg;->g:Z

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

    :goto_15
    const/4 v2, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return v2

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    :goto_18
    iget-object v1, p0, Ldmg;->d:Ldme;

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

    :goto_19
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    if-nez p0, :cond_5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1b
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p1, Ldmg;->e:Ldlh;

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

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_20
    return v2

    nop

    :goto_21
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_24
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Ldmg;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p1, Ldmg;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p0, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

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

    :goto_29
    const v0, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Ldmg;->d:Ldme;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Ldlh;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    return v0

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit16 v0, v0, 0x4cf

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

    :goto_6
    const v0, 0x3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ldme;->hashCode()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    add-int/2addr v0, p0

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

    :goto_9
    iget-object v0, p0, Ldmg;->c:Ljava/lang/String;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x20

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Ldmg;->e:Ldlh;

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

    :goto_12
    goto/32 :goto_3

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    mul-int/lit16 v0, v0, 0x3c1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

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

    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    iget-object v1, p0, Ldmg;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "\", bestEffort=true), weight="

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

    :goto_d
    goto/32 :goto_18

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x0

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

    :goto_13
    const-string p0, ", style="

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
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    :goto_15
    invoke-static {p0}, Ldlc;->a(I)Ljava/lang/String;

    move-result-object p0

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

    :goto_16
    iget-object p0, p0, Ldmg;->e:Ldlh;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, "Font(GoogleFont(\""

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 p0, 0x29

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
