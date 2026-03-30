.class public final synthetic Lnts;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loqu;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnts;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lnts;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lntu;->N:I

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Lnoo;->k()V

    goto/32 :goto_45

    nop

    nop

    :goto_4
    const-string v1, "Failed to get app update info"

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

    :goto_5
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean v2, p0, Lntu;->G:Z

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lnts;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lnts;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lnts;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    const-string v0, "Wearable api is not available"

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_24

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_11
    invoke-static {v1, v2, v0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    const-string p1, "Committing phenotypeflags for %s failed. %s"

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    const/16 v2, 0x140f

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v0, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/uebAI;->oSfd:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p1, Lntu;->a:Lsdb;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lnts;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string p1, "Fail to register phenotypeflags for %s. %s"

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Lntu;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    :goto_1e
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lnts;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p1, Lscz;

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

    :goto_22
    check-cast p0, Lntu;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_25
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    :goto_27
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_28
    sget-boolean v0, Lpuw;->a:Z

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_29
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2a
    iget p1, p0, Lntu;->N:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2c
    sget-boolean v0, Lpuw;->a:Z

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2d
    const v0, 0x3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 v0, 0x1468

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_30
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object p1, Lntu;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_34
    iput-boolean v2, p0, Lntu;->E:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput v2, p0, Lntu;->N:I

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eq p1, v0, :cond_3

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

    :cond_3
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-ne v0, v1, :cond_4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v2, "CBVerifier"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3d
    iput-boolean v2, p0, Lntu;->F:Z

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lnot;->b:Lnoo;

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

    :goto_3f
    const/4 v2, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_40
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_41
    iget-object p0, p0, Lnts;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_42
    sget-object v0, Lnot;->a:Lsdb;

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

    :goto_43
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

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

    :goto_45
    return-void

    nop

    :goto_46
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_48
    check-cast p0, Lnot;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast p1, Lscz;

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

    :goto_4a
    const/16 v0, 0x1469

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/16 v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_4c
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_4d
    add-int/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
