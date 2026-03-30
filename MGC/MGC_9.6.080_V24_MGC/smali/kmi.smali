.class public Lkmi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmiu;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Lpdf;

.field private final c:Lhsp;

.field private final d:Lpoi;

.field private final e:Lhoh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "kmi"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    sput-object v0, Lkmi;->a:Lsdb;

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
.end method

.method public constructor <init>(Lpoi;Lpdf;Lhsp;Lhoh;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lkmi;->e:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lkmi;->c:Lhsp;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkmi;->d:Lpoi;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object p2, p0, Lkmi;->b:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 4

    goto/32 :goto_26

    nop

    nop

    :goto_0
    const v1, 0x13

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

    nop

    nop

    :goto_1
    const-string v1, "No back-facing camera found."

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    sget-object v3, Lpog;->b:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    :goto_6
    invoke-virtual {v2}, Lpoh;->z()Ljava/util/List;

    goto/32 :goto_29

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

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

    :goto_8
    iget-object v1, p0, Lkmi;->d:Lpoi;

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

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    const/16 v1, 0xbdd

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    invoke-virtual {v1, v0}, Lpoi;->f(Lpnx;)Lkog;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_1c

    nop

    nop

    :goto_10
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lpoh;->C()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "#cacheDeviceInfo"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3, v2}, Lpoi;->f(Lpnx;)Lkog;

    move-result-object v2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lpoh;->z()Ljava/util/List;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lkmi;->b:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lkmi;->c:Lhsp;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_17
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v2, Lpnx;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    :goto_1d
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, p0, Lkmi;->e:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1f
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lpoh;->A()Ljava/util/Set;

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1, v2, v3}, Lhsp;->b(Lpnv;Lhoh;Lpog;)Lpnx;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, p0, Lkmi;->d:Lpoi;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v0, Lkmi;->a:Lsdb;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

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

    :goto_26
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_27
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lkmi;->b:Lpdf;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_2f

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lkmi;->d:Lpoi;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Lpoh;->B()Ljava/util/Set;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_2f
    goto/32 :goto_d

    nop

    nop
.end method
