.class public Llej;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkuc;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lphh;

.field public final c:Lksl;

.field private final d:Lpgo;

.field private final e:Lkqa;

.field private final f:Lpik;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const-string v0, "lej"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    sput-object v0, Llej;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpik;Lphh;Lpgo;Lksl;Lkqa;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Llej;->b:Lphh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p3, p0, Llej;->d:Lpgo;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Llej;->e:Lkqa;

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

    :goto_4
    iput-object p4, p0, Llej;->c:Lksl;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Llej;->f:Lpik;

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


# virtual methods
.method public final a()Loyd;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    new-instance v0, Loyg;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b()Loyd;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Loyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Llej;->e:Lkqa;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lkub;Llko;)V
    .locals 5

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Lkub;->close()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_6
    new-instance v3, Llei;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lscz;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p0, Llej;->a:Lsdb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v0, 0xd9d

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Lhui;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    :goto_c
    goto/32 :goto_31

    nop

    :goto_d
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v3}, Lpik;->b(Lpgo;)Lpge;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v3, p0, v0, p2, v1}, Llei;-><init>(Llej;Lpge;Llko;Lsuu;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v1, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_11
    invoke-interface {v0, v3}, Lpge;->j(Lpuq;)V

    :try_start_0
    invoke-virtual {v1}, Lsuu;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lhui;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, p2, v0}, Llxa;->D(Lnik;Ljava/lang/Throwable;)V

    :goto_14
    goto/32 :goto_4

    nop

    nop

    :goto_15
    add-int/lit8 v4, v0, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v3, :cond_0

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_2

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Llej;->f:Lpik;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v0, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_1d
    const/16 v1, 0xd9e

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v0, Llej;->a:Lsdb;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1f
    invoke-direct {v1}, Lsuu;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v0, v1, v2}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    const-string v0, "Aborting shot."

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move v0, v4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p2, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_30

    nop

    :goto_25
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v3, p0, Llej;->d:Lpgo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_27
    const-string v1, "Image capture failed. Aborting capture!"

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

    :goto_28
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2a
    const/16 v3, 0xda1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1, v3, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_2c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v1, "Couldn\'t capture image after %s attempts."

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p0}, Lktq;->f()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1

    nop

    nop

    :goto_32
    const-string v1, "Error acquiring image."

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_33
    if-nez v1, :cond_4

    nop

    goto/32 :goto_2c

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_34
    const v1, 0x13

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_35
    sget-object p2, Lnim;->a:Lnik;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop
.end method
