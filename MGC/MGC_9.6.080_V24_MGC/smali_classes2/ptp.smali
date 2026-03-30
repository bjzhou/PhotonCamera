.class public final Lptp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpti;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop
.end method

.method public constructor <init>(Lpti;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    :goto_2
    iput-object p3, p0, Lptp;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lptp;->b:Ljava/lang/String;

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

    :goto_6
    iput-object p5, p0, Lptp;->e:Ljava/lang/String;

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

    :goto_7
    iput-object p4, p0, Lptp;->d:Ljava/lang/String;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lptp;->a:Lpti;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public static a(Lpti;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lptp;
    .locals 8

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    invoke-static {p3}, Lpuq;->aQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

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

    goto/32 :goto_21

    nop

    nop

    :goto_4
    move-object v7, p4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_28

    nop

    nop

    :goto_9
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x1

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

    :goto_d
    move-object v4, p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "text/plain"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lptp;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, "Cannot publish %s to %s"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct/range {v2 .. v7}, Lptp;-><init>(Lpti;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    :goto_16
    invoke-static {v1}, La;->au(Z)V

    goto/32 :goto_17

    nop

    nop

    :goto_17
    invoke-virtual {p0, p4}, Lpti;->c(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x8

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v6, p3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v3, p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1f
    move-object v5, p2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v0, "application/octet-stream"

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

    :goto_21
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_5
    goto/32 :goto_25

    nop

    :goto_22
    goto/32 :goto_26

    nop

    :goto_23
    invoke-static {v0, v1, p4, p0}, Lrrf;->t(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_24
    invoke-static {p4}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_27
    move v1, v2

    nop

    nop

    :goto_28
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_29
    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final b(Lptf;)Ljava/io/File;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    return-object v1

    nop

    :goto_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    move-object p1, v1

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x8

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lptp;->d:Ljava/lang/String;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lptp;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

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
    add-int v0, v0, v1

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

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_e
    iget-object p1, p1, Lptf;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    new-instance v1, Ljava/io/File;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lptp;->a:Lpti;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    const-string v0, "."

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lptp;->b:Ljava/lang/String;

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

    :goto_16
    iget-object v0, p0, Lptp;->b:Ljava/lang/String;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, p1}, Lpti;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    const v1, 0x12

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

    :goto_1a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    new-instance v1, Ljava/io/File;

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

    :goto_1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method final b_ex(Lptf;)Ljava/io/File;
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lptp;->a:Lpti;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    const-string v0, "."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    new-instance v1, Ljava/io/File;

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
    invoke-virtual {v0, p1}, Lpti;->a_ex(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x18

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

    :goto_b
    iget-object p1, p1, Lptf;->a:Landroid/content/Context;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    iget-object p0, p0, Lptp;->d:Ljava/lang/String;

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

    :goto_d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lptp;->b:Ljava/lang/String;

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

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lptp;->c:Ljava/lang/String;

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

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    return-object v1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    new-instance v1, Ljava/io/File;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1b

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

    :goto_1b
    goto/32 :goto_18

    nop

    nop

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    move-object p1, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lptp;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method final c()Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Lpti;->c(Ljava/lang/String;)Z

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

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lptp;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iget-object v0, p0, Lptp;->a:Lpti;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lptp;->a:Lpti;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lpti;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lrrf;->H(Ljava/lang/String;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lptp;->b:Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

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

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, p1, Lptp;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lptp;->b:Ljava/lang/String;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    iget-object v1, p0, Lptp;->a:Lpti;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    :goto_a
    iget-object p1, p1, Lptp;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    :goto_c
    instance-of v1, p1, Lptp;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lptp;->c:Ljava/lang/String;

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

    :goto_e
    check-cast p1, Lptp;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lptp;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v3, p1, Lptp;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    iget-object v3, p1, Lptp;->a:Lpti;

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

    :goto_13
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lptp;->e:Ljava/lang/String;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_16
    if-nez v1, :cond_3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    :goto_1b
    if-eq p1, p0, :cond_5

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p1, Lptp;->d:Ljava/lang/String;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1d
    return v0

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    nop

    :goto_22
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

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

    :goto_24
    const/4 v2, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v3}, Lpti;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_26
    const v0, 0x12

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

    :goto_27
    if-nez p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    xor-int/2addr v0, v2

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

    :goto_1
    xor-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Lptp;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lptp;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lptp;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lptp;->b:Ljava/lang/String;

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
    mul-int/2addr v0, v1

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

    :goto_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const v1, 0xf4243

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
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_f
    xor-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lpti;->hashCode()I

    move-result v0

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

    :goto_11
    mul-int/2addr v0, v1

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

    :goto_12
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x3

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

    :goto_17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    return p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lptp;->a:Lpti;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
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

    :goto_1c
    mul-int/2addr v0, v1

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

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lptp;->a:Lpti;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Lptp;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v4, p0, Lptp;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    iget-object v3, p0, Lptp;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
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

    :goto_7
    const-string v1, "%s/%s%s.%s (%s)"

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

    :goto_8
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    const-string v2, ""

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    const v1, 0x7

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

    :goto_b
    const-string v3, "/"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    if-nez v2, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    goto :goto_13

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    :goto_12
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    :goto_14
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    const v0, 0x19

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

    :goto_16
    filled-new-array {v1, v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Lptp;->b:Ljava/lang/String;

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

    :goto_1a
    iget-object p0, p0, Lptp;->e:Ljava/lang/String;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1}, Lpti;->toString()Ljava/lang/String;

    move-result-object v1

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

    :goto_1c
    invoke-static {v2}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method
