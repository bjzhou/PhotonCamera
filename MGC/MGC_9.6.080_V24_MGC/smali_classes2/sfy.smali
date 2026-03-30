.class final Lsfy;
.super Lsfm;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/util/logging/Level;

.field private final d:Z

.field private final e:Ljava/util/Set;

.field private final f:Lsew;

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/util/logging/Level;ZLjava/util/Set;Lsew;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p6, p0, Lsfy;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p7, p0, Lsfy;->e:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p8, p0, Lsfy;->f:Lsew;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p2}, Lsfm;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x2

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

    :goto_6
    iput-boolean p3, p0, Lsfy;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Lsfy;->c:Ljava/util/logging/Level;

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
    iput-object p1, p0, Lsfy;->a:Ljava/lang/String;

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

    nop

    :goto_9
    iput p1, p0, Lsfy;->g:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method


# virtual methods
.method public final c(Lsej;)V
    .locals 9

    goto/32 :goto_23

    nop

    nop

    :goto_0
    iget-boolean v1, p0, Lsfy;->d:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v1, 0x2e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    check-cast v0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_4
    invoke-static/range {v3 .. v8}, Lsfz;->e(Lsej;Ljava/lang/String;ILjava/util/logging/Level;Ljava/util/Set;Lsew;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v8, p0, Lsfy;->f:Lsew;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lsdj;->b()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v2, p0, Lsfy;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Lsej;->o()Ljava/util/logging/Level;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    :goto_b
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_e
    iget-object v6, p0, Lsfy;->c:Ljava/util/logging/Level;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    const/16 v2, 0x24

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_15
    if-gez v1, :cond_2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object v3, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1}, Lsej;->k()Lsep;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_31

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Lsep;->d(Lsdr;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_1f
    invoke-static {v0}, Lsgj;->e(Ljava/util/logging/Level;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_20
    iget-object v7, p0, Lsfy;->e:Ljava/util/Set;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_21
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    :goto_22
    const/4 v5, 0x2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0xd

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p1}, Lsej;->f()Lsdj;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v1, "all"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_26
    invoke-static {v1, v0, v2}, Lsgj;->d(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

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

    :goto_27
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_1d

    nop

    :goto_29
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, p0, Lsfy;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v1, :cond_5

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

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lsfm;->a()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v0, :cond_6

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/util/logging/Level;)Z
    .locals 0

    goto/32 :goto_1

    nop

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
    const/4 p0, 0x1

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
.end method
