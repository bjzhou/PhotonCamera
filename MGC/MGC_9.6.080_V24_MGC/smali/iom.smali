.class public Liom;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lirz;


# static fields
.field public static final a:Lsdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    sput-object v0, Liom;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    const-string v0, "iom"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lcom/google/googlex/gcam/ShotMetadata;Llxa;Lijd;Lioy;)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    :goto_0
    iget-boolean v0, p4, Ltll;->b:Z

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lsjf;->j(Ljava/util/Map;)Lsjf;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget-object p2, p0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p3, Lirc;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    if-eqz p3, :cond_0

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

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p4, p2, Lirc;->c:Ltll;

    nop

    nop

    :goto_9
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_a
    const/16 p1, 0x6d3

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_b
    const/4 v1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    new-instance p2, Liol;

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

    :goto_d
    const v1, 0x1c

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

    :goto_e
    or-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p3, Lirc;->b:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p3, p2, p4}, Ltku;-><init>(Ljava/util/Map;Ltkq;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    :goto_13
    new-instance p2, Liol;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_15
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x6

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

    :goto_19
    sget-object p4, Lirc;->e:Ltkq;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Lscz;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1b
    iget-object p4, p2, Lirc;->c:Ltll;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    invoke-direct {p2, p3}, Liol;-><init>(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p2, Lirc;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p4}, Ltll;->a()Ltll;

    move-result-object p4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1, p2}, Lsjf;->b(Ljava/util/function/Function;)Lsjf;

    move-result-object p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_24
    iput-wide p1, p3, Lirc;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_25
    sget-object p0, Liom;->a:Lsdb;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_26
    const-string p1, "Could not log fusion skip reasons."

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_27
    invoke-direct {p2, v1}, Liol;-><init>(I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Ltkg;->m()Ltkb;

    move-result-object p0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

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

    nop

    :goto_2a
    check-cast p0, Lirc;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p3, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2c
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    :goto_2e
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2f
    new-instance p3, Ltku;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_3

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    :goto_32
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p2, p2, Lirc;->c:Ltll;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_34
    invoke-virtual {p1, p2}, Lsjf;->c(Ljava/util/function/Function;)Lsjf;

    move-result-object p1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Lsjf;->e()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_36
    check-cast p1, Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_37
    iget-object p2, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_38
    invoke-static {p1}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_39
    iget-object p3, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput v0, p3, Lirc;->b:I

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

    nop

    nop

    :goto_3b
    invoke-virtual {p3}, Ltkg;->C()Z

    move-result p3

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

    :goto_3c
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3d
    sget-object p0, Lirc;->a:Lirc;

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
    iget-object p1, p4, Lioy;->b:Lryh;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
