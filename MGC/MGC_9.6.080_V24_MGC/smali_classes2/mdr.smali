.class public Lmdr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmcb;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Ltxm;

.field private final c:Llgc;

.field private final d:Lpik;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lmdr;->a:Lsdb;

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

    :goto_1
    return-void

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_3
    const-string v0, "mdr"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpik;Ltxm;Llgc;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lmdr;->c:Llgc;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmdr;->d:Lpik;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lmdr;->b:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m(Lpge;)Loel;
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Lmdm;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    goto/32 :goto_b

    nop

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

    goto/32 :goto_4

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x5

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_b
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Loel;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    new-instance p0, Lmdm;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0, p1}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    :goto_14
    invoke-direct {p0, p1, v1}, Lmdm;-><init>(ILjava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lmdr;->c:Llgc;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Loel;->h()Lprw;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p0, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, p1, v1}, Lmdm;-><init>(ILjava/lang/Throwable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x16

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

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Loiq;)V
    .locals 11

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v4, Lmdr;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1
    check-cast v2, Lkug;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v5}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v5}, Lj$/util/Optional;->isEmpty()Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_6
    invoke-virtual {v3}, Loel;->h()Lprw;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v7}, Lscs;->c()Lsdo;

    move-result-object v7

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_9
    if-eqz v3, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_56

    nop

    nop

    :goto_a
    check-cast p1, Lmbz;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v7, v8, v5}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct/range {v3 .. v9}, Lkiv;-><init>(Lpck;IILsxy;J)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v6, v2

    nop

    nop

    :goto_e
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p1, Loiq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v10, Lkiv;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v7, Lscz;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_15
    iget-object v5, v5, Lmbz;->b:Lmcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_16
    check-cast v5, Lmbz;

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

    nop

    nop

    :goto_17
    move-object v3, v10

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    invoke-direct {v4, v2, v1}, Lpck;-><init>(II)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_19
    const-string v8, "Attempt #%s to get a valid frame failed"

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
    div-int/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    if-lt v5, v1, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    :try_start_0
    invoke-interface {v0}, Lljk;->g()Lpgo;

    move-result-object v7

    nop

    nop

    sget-object v8, Lmdr;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lscs;->c()Lsdo;

    move-result-object v8

    nop

    nop

    nop

    nop

    const/16 v9, 0x108e

    nop

    nop

    invoke-interface {v8, v9}, Lscz;->M(I)Lsdo;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    check-cast v8, Lscz;

    nop

    nop

    nop

    nop

    const-string v9, "Fetching high resolution image failed, frame is null. Submitting a new request."

    nop

    nop

    invoke-interface {v8, v9}, Lscz;->s(Ljava/lang/String;)V

    iget-object v8, p0, Lmdr;->d:Lpik;

    nop

    invoke-virtual {v8, v7}, Lpik;->b(Lpgo;)Lpge;

    move-result-object v7

    nop

    nop
    :try_end_0
    .catch Lmdm; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v7}, Lpuq;->bC(Lpge;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmdm; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {p0, v7}, Lmdr;->f875135777c17da3cef2ea6eeff5be29m(Lpge;)Loel;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v6

    nop

    nop

    nop

    nop

    new-instance v7, Lmdm;

    nop

    nop

    nop

    nop

    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    invoke-direct {v7, v8, v6}, Lmdm;-><init>(ILjava/lang/Throwable;)V

    throw v7

    nop
    :try_end_2
    .catch Lmdm; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v6

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p0}, Lphh;->d()Lpnx;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_70

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    throw v6

    nop

    :goto_20
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v6, 0x1090

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, v3, Lkxj;->b:Lpck;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    :goto_26
    goto/32 :goto_68

    nop

    nop

    :goto_27
    invoke-virtual {v6}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v6}, Lj$/util/Optional;->isEmpty()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

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

    nop

    nop

    :goto_2a
    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2b
    invoke-static {v5, v6, v4, v3}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v5, "Attempt to fetch frame from ring buffer failed"

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2d
    const-wide/16 v8, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v3, v3, Loel;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_2f
    if-nez v7, :cond_2

    nop

    nop

    goto/32 :goto_6b

    nop

    :cond_2
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lmdr;->b:Ltxm;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_3

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    :goto_32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1, v0, p0, v10, v1}, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->a(Lprw;Lrle;Lkiv;Lkiu;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_35
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_4
    :try_start_3
    invoke-direct {p0, v3}, Lmdr;->f875135777c17da3cef2ea6eeff5be29m(Lpge;)Loel;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v3, Lmdm;

    nop

    nop

    invoke-direct {v3, v1, v2}, Lmdm;-><init>(ILjava/lang/Throwable;)V

    throw v3

    nop

    :catch_2
    move-exception v3

    nop

    nop

    nop

    nop

    goto :goto_37

    nop

    nop

    nop

    :catch_3
    move-exception v3

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Lmdm;

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    invoke-direct {v4, v5, v3}, Lmdm;-><init>(ILjava/lang/Throwable;)V

    throw v4

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Lmdm; {:try_start_3 .. :try_end_3} :catch_2

    :goto_37
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_39
    invoke-interface {p0, v2}, Lmed;->a(Landroid/graphics/Bitmap;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v2, Lkxj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3c
    return-void

    nop

    :goto_3d
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3e
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3f
    check-cast v0, Lljk;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sget-object p0, Lmbz;->a:Lsdb;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_41
    const v0, 0x7

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_43
    iget v2, v2, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_44
    const/16 v0, 0x1085

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_45
    move-object v3, v2

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_47
    if-eqz v7, :cond_5

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

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_48
    check-cast v7, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v2, v2, Lkxj;->b:Lpck;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_6
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_4b
    iget-object p0, p1, Loiq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v5}, Lmcc;->d()Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4d
    invoke-virtual {v5}, Lmcc;->e()Lj$/util/Optional;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v7, v6}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v7

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

    nop

    :goto_4f
    invoke-interface {v3}, Lpge;->d()Lpro;

    move-result-object v3

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v6}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_51
    div-int/2addr v2, v1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_52
    invoke-interface {v7, v8}, Lscz;->M(I)Lsdo;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_53
    const/4 v5, 0x0

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

    nop

    :goto_54
    rem-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_55
    iget-object v5, p1, Loiq;->a:Ljava/lang/Object;

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

    :goto_56
    move-object v6, v2

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_57
    mul-int/lit8 v2, v2, 0x4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_58
    iget v3, v3, Lpck;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v2, p0, v3, v4}, Lkug;->a(Lpnx;Lpro;I)Lrle;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5a
    add-int/lit8 v5, v5, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5b
    sget-object v7, Lsxy;->b:Lsxy;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5c
    sget-object v7, Lmdr;->a:Lsdb;

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

    :goto_5d
    invoke-virtual {v5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {v1, p1, v0}, Lmby;-><init>(Loiq;Lprw;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    new-instance v4, Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_60
    div-int/2addr v3, v1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v3}, Loel;->d()Lphh;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_62
    iget-object p1, p1, Lmbz;->c:Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v4, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_64
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_65
    add-int/2addr v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_66
    invoke-interface {p0, v0, v1}, Lscz;->P(ZZ)V

    goto/32 :goto_4b

    nop

    nop

    :goto_67
    new-instance v1, Lmby;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_68
    if-eqz v6, :cond_7

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_7
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_69
    const/4 v2, 0x0

    nop

    :try_start_4
    invoke-interface {v0}, Lljk;->c()Lpge;

    move-result-object v3

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lmdm; {:try_start_4 .. :try_end_4} :catch_2

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_50

    nop

    nop

    :goto_6c
    const v1, 0x13

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    div-int/lit8 v2, v2, 0x4

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

    :goto_6e
    check-cast v3, Lkxj;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    move v5, v4

    nop

    :goto_70
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_72
    const/16 v8, 0x108f

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop
.end method
