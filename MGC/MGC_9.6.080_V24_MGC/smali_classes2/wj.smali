.class public final Lwj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lwi;
.implements Lwk;


# instance fields
.field private final a:Lwi;

.field private final b:Luen;

.field private final c:Lhdu;


# direct methods
.method public constructor <init>(Lwi;Lhdu;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lwj;->c:Lhdu;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-direct {p2, v0, p1}, Luen;-><init>(ZLucu;)V

    goto/32 :goto_5

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object p1, p0, Lwj;->a:Lwi;

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

    :goto_5
    iput-object p2, p0, Lwj;->b:Luen;

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
    new-instance p2, Luen;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p1, Luer;->a:Luer;

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

    nop
.end method


# virtual methods
.method public final a()Lwk;
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lwj;->b:Luen;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xe

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    iget v3, v2, Lueo;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v4, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lwj;

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

    :goto_c
    const-string v0, "Required value was null."

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

    :goto_d
    if-nez v2, :cond_2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Lhdu;->c:Ljava/lang/Object;

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

    :goto_f
    move-object v0, v1

    nop

    nop

    :goto_10
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_11
    return-object v1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    :goto_13
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lwj;->c:Lhdu;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v3, v4}, Lueo;->c(II)Z

    move-result v2

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

    :goto_17
    iget-object v2, v0, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_18
    iget-object v0, p0, Lwj;->a:Lwi;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    :goto_1b
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    :goto_1c
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1, v0, p0}, Lwj;-><init>(Lwi;Lhdu;)V

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v2, Lueo;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_1e

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_25
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_10

    nop

    nop

    :goto_28
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Luen;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lwj;->c:Lhdu;

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v4, :cond_6

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

    :cond_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method public final c(Ludp;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_21

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    iget-object v0, p0, Lwj;->b:Luen;

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

    :goto_2
    new-instance v0, Lucb;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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

    :goto_4
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v2}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v2}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_18

    nop

    nop

    :goto_8
    const-class v2, Landroid/media/Image;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    move-object p0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, " as android.media.Image. Use setFinalizerinstead and close all outstanding references."

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2a

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    goto/32 :goto_5

    nop

    :cond_1
    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v2}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-class v2, Lwk;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_16
    sget v0, Luct;->a:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lucb;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Luen;->b()Z

    move-result v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0, v0, v1}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_1d
    return-object p0

    nop

    :goto_1e
    goto/32 :goto_2d

    nop

    nop

    :goto_1f
    const-class v2, Lwf;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v0, v2}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x5

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

    :goto_22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v0, Lcom/google/android/apps/camera/imax/cyclops/processing/jQJ/fbmdK;->xmHte:Ljava/lang/String;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v0, Lucb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_27
    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_29
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1e

    nop

    nop

    :goto_2b
    goto/32 :goto_1

    nop

    nop

    :goto_2c
    invoke-static {p1, v0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2b

    nop

    nop

    :goto_2e
    new-instance v0, Lucb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-class v2, Lwi;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhdu;->a:Ljava/lang/Object;

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

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0, p0}, Lwd;->a(Ljava/lang/Object;)V

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lwj;->c:Lhdu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    const v1, 0x7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Lueq;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_10
    invoke-virtual {v0, v1, v2}, Luen;->a(ZZ)Z

    move-result v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lhdu;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lhdu;->b:Ljava/lang/Object;

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

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lueo;->a()I

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lwj;->b:Luen;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Lueq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    check-cast v0, Lwd;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v0, Lueo;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    const v0, 0x17

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
