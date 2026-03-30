.class public Lkkj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkki;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Lhco;

.field private final c:Loyd;

.field private final d:Lpnu;

.field private final e:Lhif;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lkkj;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_2
    return-void

    nop

    :goto_3
    const-string v0, "kkj"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhco;Loyd;Lpnu;Lhif;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-object p2, p0, Lkkj;->c:Loyd;

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
    iput-object p4, p0, Lkkj;->e:Lhif;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-object p3, p0, Lkkj;->d:Lpnu;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkkj;->b:Lhco;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lozg;)Lpck;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lozg;->b()Lpck;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p1, Lozg;->j:Lozg;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lpnu;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lozg;->ordinal()I

    move-result p1

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

    :goto_4
    if-ne p1, v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_2a

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const/4 v0, 0x7

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_2a

    nop

    :goto_a
    goto/32 :goto_26

    nop

    nop

    :goto_b
    sget-object p1, Lozg;->l:Lozg;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lozg;->a:Lozg;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Lozg;->b()Lpck;

    move-result-object p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1b

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lozg;->b()Lpck;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_12
    const v0, 0x16

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_15
    const-string v1, "Unable to find suitable viewfinder size %s from supported list: %s"

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x6

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lkkj;->b:Lhco;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    goto/16 :goto_2a

    nop

    :goto_19
    goto/32 :goto_1f

    nop

    nop

    :goto_1a
    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1c
    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v0}, Lpby;->m(Lpby;)Z

    move-result p1

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

    :goto_1e
    invoke-virtual {p0}, Lhco;->d()Lrss;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object p1, Lozg;->h:Lozg;

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
    sget-object v0, Lpby;->c:Lpby;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_22
    const/16 v0, 0xb

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p1}, Lpby;->j(Lpck;)Lpby;

    move-result-object p1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_25
    if-ne p1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object p1, Lozg;->g:Lozg;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_27
    if-ne p1, v0, :cond_3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    nop

    :goto_28
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Lozg;->b()Lpck;

    move-result-object p1

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p0}, Lpnu;->z()Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_2d
    sget-object p1, Lozg;->i:Lozg;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_4
    goto/32 :goto_e

    nop

    :goto_2f
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v0, v1, p1, p0}, Lrrf;->t(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_31
    sget-object p1, Lozg;->h:Lozg;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1}, Lozg;->b()Lpck;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_33
    sget-object p1, Lozg;->g:Lozg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_35
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Lozg;->b()Lpck;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Lozg;->b()Lpck;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1}, Lozg;->b()Lpck;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_2a

    nop

    nop

    :goto_3d
    goto/32 :goto_c

    nop

    nop

    :goto_3e
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Lkkj;->c:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lozg;Lpnx;)Lphj;
    .locals 1

    goto/32 :goto_e

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lphi;->o(Lphm;)V

    goto/32 :goto_10

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
    invoke-virtual {p0, p1}, Lphi;->c(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/16 p1, 0x100

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

    :goto_4
    invoke-virtual {p0, p1, p2}, Lphi;->p(J)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lkkj;->c:Loyd;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lphi;->l(Lpck;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lphi;->a()Lphj;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x7

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    sget-object v0, Lphm;->a:Lphm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lphj;->a()Lphi;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Lkkj;->a(Lozg;)Lpck;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    const/16 p1, 0x22

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p2}, Lphi;->b(Lpnx;)V

    goto/32 :goto_6

    nop

    nop

    :goto_11
    return-object p0

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1}, Lphi;->i(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p2, p1}, Lpuq;->bw(Lpnx;Lpck;)Lphj;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lozg;Lpnx;Z)Ljava/util/Map;
    .locals 5

    goto/32 :goto_2f

    nop

    nop

    :goto_0
    const/16 p1, 0x1a

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lkkj;->e:Lhif;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2
    const/16 v0, 0xbc6

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p3, v0}, Lscz;->s(Ljava/lang/String;)V

    :goto_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3}, Lscs;->c()Lsdo;

    move-result-object p3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    if-lt p1, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

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

    nop

    nop

    :goto_7
    if-eqz p2, :cond_1

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_8
    const-class v0, Llhv;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lkkj;->d:Lpnu;

    nop

    nop

    :try_start_0
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_USE_CASES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    invoke-interface {p0, p1}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    sget-object p3, Lkkj;->a:Lsdb;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, p1}, Lphi;->o(Lphm;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
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

    :goto_10
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    :goto_11
    invoke-virtual {p1}, Lozg;->b()Lpck;

    move-result-object p1

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

    :goto_12
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    invoke-direct {p3, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_18

    nop

    nop

    :goto_15
    aget-wide v1, p0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_16
    const-wide/32 p1, 0x10000

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, p1}, Lphi;->f(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Lphj;->a()Lphi;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p1, p2}, Lphi;->p(J)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 p1, 0x22

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1b
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    goto :goto_13

    nop

    nop

    nop

    nop

    :catchall_0
    :goto_1d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p0, [J

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

    :goto_1f
    return-object p3

    nop

    nop

    :goto_20
    goto/32 :goto_28

    nop

    nop

    :goto_21
    sget-object p0, Llhv;->x:Llhv;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, p1}, Lphi;->i(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_23
    sget-object p1, Lphm;->a:Lphm;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    array-length p2, p0

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

    :goto_25
    new-instance p3, Ljava/util/EnumMap;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_26
    const-string v0, "Raw streams aren\'t supported. Ignore the flag."

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

    :goto_27
    invoke-interface {p3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Lhif;->g()I

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, p1}, Lphi;->l(Lpck;)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2b
    if-nez p0, :cond_4

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    cmp-long p2, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2f
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Lphi;->a()Lphj;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0, v3, v4}, Lphi;->q(J)V

    :goto_32
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_33
    invoke-interface {p3, v0}, Lscz;->M(I)Lsdo;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0, p2}, Lphi;->b(Lpnx;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-wide/16 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0xb

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

    :goto_37
    check-cast p3, Lscz;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, p1}, Lphi;->c(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method
