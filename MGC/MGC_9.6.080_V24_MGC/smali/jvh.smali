.class final Ljvh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field final synthetic a:Ljvj;

.field final synthetic b:Ljvi;

.field final synthetic c:Ljvk;


# direct methods
.method public constructor <init>(Ljvk;Ljvj;Ljvi;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljvh;->c:Ljvk;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Ljvh;->b:Ljvi;

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Ljvh;->a:Ljvj;

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, p1}, Llxa;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljvh;->a:Ljvj;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Ljvh;->a:Ljvj;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ljvh;->c:Ljvk;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ljvj;->r:Lrss;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1, p1, v2}, Ljvk;->d(Ljvj;Ljava/lang/Throwable;Ljvi;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, p0, Ljvh;->b:Ljvi;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x7

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

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Ljvh;->a:Ljvj;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Ljvh;->a:Ljvj;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    iget-object v1, p0, Ljvh;->a:Ljvj;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    :goto_12
    iget-object v2, p0, Ljvh;->b:Ljvi;

    nop

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

    :goto_13
    iget-object v0, v0, Ljvj;->k:Llxa;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v0}, Ljvk;->c(Ljvj;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Ljvh;->a:Ljvj;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, v0, Ljvj;->o:Lqem;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    goto :goto_20

    nop

    nop

    :goto_18
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_19
    sget-object v1, Lnim;->a:Lnik;

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

    :goto_1a
    invoke-interface {v0}, Lsui;->isCancelled()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v0, Ljvj;->k:Llxa;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Ljvh;->a:Ljvj;

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

    nop

    :goto_1d
    invoke-interface {v0}, Lqem;->b()Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v0, v1, p1}, Llxa;->D(Lnik;Ljava/lang/Throwable;)V

    :goto_20
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p1, p0, Ljvh;->c:Ljvk;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1, p1, v2}, Ljvk;->e(Ljvj;Ljava/lang/Throwable;Ljvi;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Ljvh;->c:Ljvk;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 5

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, v1, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    :goto_1
    invoke-direct {v3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Ljvh;->a:Ljvj;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Llko;->a(Lkbz;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p1, "No video frames available. Trigger backup shot."

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string p1, "No video frames in long shot. Shot=%s"

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Ljvh;->a:Ljvj;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p1, Ljvj;->r:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Ljvh;->c:Ljvk;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v3, p0, Ljvh;->b:Ljvi;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v3, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p1, Ljvj;->d:Ljxe;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_13
    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v0, 0xa56

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ljxe;->a()Ljxe;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0, v2, v3}, Llxa;->D(Lnik;Ljava/lang/Throwable;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v2, v3, v4}, Ljvk;->d(Ljvj;Ljava/lang/Throwable;Ljvi;)V

    :goto_1a
    goto/32 :goto_36

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

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
    iget-object p1, p1, Ljvj;->r:Lrss;

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_1d
    sub-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1f
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_3
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Ljvh;->a:Ljvj;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_23
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

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

    :goto_24
    iget-object v0, p0, Ljvh;->a:Ljvj;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

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

    :goto_27
    const/16 v0, 0xa54

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_28
    const-string v1, "No key video frames in long shot. Shot=%s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_29
    const-string v0, "Didn\'t take second shot since UI resources are missing"

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_60

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p1, Ljvk;->x:Llko;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2d
    sget-object p1, Ljvk;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2e
    const-string p1, "No video frames available. Unable to trigger backup shot."

    nop

    nop

    :goto_2f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Ljvh;->a:Ljvj;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_31
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v1, 0x0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_33
    iget-wide v2, p1, Ljxe;->c:J

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_34
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v1, Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Ljvh;->c:Ljvk;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p1, p0, Ljvh;->a:Ljvj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_60

    nop

    :goto_39
    goto/32 :goto_61

    nop

    nop

    :goto_3a
    sget-object v2, Lnim;->a:Lnik;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_3b
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v2}, Ljvk;->c(Ljvj;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Ljvh;->a:Ljvj;

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

    nop

    :goto_3e
    sget-object p1, Ljvk;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3f
    iget-object v0, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Ljvh;->c:Ljvk;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_42
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v0, v0, Ljvj;->k:Llxa;

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

    :goto_44
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_45
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v4, p0, Ljvh;->b:Ljvi;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_47
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v1, v0, Ljvj;->a:Llxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_49
    iget-object v0, v0, Ljvj;->r:Lrss;

    nop

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

    nop

    :goto_4a
    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4b
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-boolean v0, p1, Ljvj;->p:Z

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4d
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    :goto_4e
    iget-object v0, v0, Ljvj;->a:Llxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4f
    iget v0, p1, Ljxe;->a:I

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

    :goto_50
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_46

    nop

    nop

    :goto_51
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v0, Lfdo;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    :goto_54
    new-instance v3, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_55
    iget-object v4, v2, Ljvj;->a:Llxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_56
    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_57
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Ljvh;->a:Ljvj;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_59
    iget-object v2, p0, Ljvh;->a:Ljvj;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5a
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5b
    iget-object p0, p0, Ljvh;->a:Ljvj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5c
    iget-object p1, p0, Ljvh;->c:Ljvk;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_5d
    iget-object v0, v0, Ljvj;->k:Llxa;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_5e
    iput-object p1, p0, Ljvj;->r:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p1, v2, v3, v0, v1}, Ljvk;->h(Ljvj;Ljvi;J)V

    :goto_60
    goto/32 :goto_5b

    nop

    nop

    :goto_61
    iget-wide v0, p1, Ljxe;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_62
    invoke-interface {v0, v1}, Llxa;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v2, p0, Ljvh;->a:Ljvj;

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

    :goto_64
    return-void

    nop

    nop

    :goto_65
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop
.end method
