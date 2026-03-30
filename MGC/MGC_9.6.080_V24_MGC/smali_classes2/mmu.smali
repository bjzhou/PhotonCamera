.class public Lmmu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;
.implements Lmmx;
.implements Ljpv;
.implements Ljpb;
.implements Ljpa;
.implements Ljoy;
.implements Ljoz;


# static fields
.field private static final c:Lsdb;


# instance fields
.field public final a:Ljava/util/List;

.field private final d:Lmmt;

.field private e:Z

.field private f:Lmmw;

.field private g:Lmmw;

.field private final h:Lmjv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lmmu;->c:Lsdb;

    nop

    nop

    goto/32 :goto_1

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "mmu"

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
.end method

.method public constructor <init>(Lmjv;Lmmt;Ljow;Lowu;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lmmu;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p4, p3, p0}, Ljmo;->a(Lowu;Ljow;Ljpv;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-boolean p1, p0, Lmmu;->e:Z

    nop

    nop

    nop

    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p0}, Lmmt;->b(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean p1, p0, Lmmu;->e:Z

    nop

    nop

    :cond_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lmmu;->h:Lmjv;

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

    :goto_8
    sget-object v0, Lmmw;->i:Lmmw;

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

    :goto_9
    sget-object v0, Lmmw;->i:Lmmw;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lmmu;->g:Lmmw;

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

    :goto_b
    iput-object p2, p0, Lmmu;->d:Lmmt;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p1, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lmmu;->f:Lmmw;

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const v0, 0x1f

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lmmu;->e:Z

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lmmu;->d:Lmmt;

    nop

    invoke-virtual {v0, p0}, Lmmt;->b(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    goto :goto_9

    nop

    :cond_1
    sget-object v0, Lmmu;->c:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v1, 0x1198

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v1, "Was already registered as ThermalStatusListener on AppStart"

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_9
    const/4 v0, 0x1

    nop

    iput-boolean v0, p0, Lmmu;->e:Z

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lmmt;->a()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    iget-object v0, p0, Lmmu;->d:Lmmt;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v1, Lmmu;->b:Ljava/util/Map;

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_d
    iput-object v0, p0, Lmmu;->g:Lmmw;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_f
    check-cast v0, Lmmw;

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

    :goto_10
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final c()V
    .locals 6

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v1, v1, -0x1

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

    :goto_1
    iput v5, v4, Lspq;->b:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lmmu;->h:Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_0
    goto/32 :goto_32

    nop

    :goto_4
    move-object v4, v3

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_5
    sget-object p0, Lmmu;->c:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_9
    iget v0, v1, Lspq;->b:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    or-int/lit8 v0, v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_b
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Lmjv;->l(Lspq;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, v4, Lspq;->b:I

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

    nop

    :goto_e
    iget v5, v4, Lspq;->b:I

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

    :goto_f
    or-int/lit8 v1, v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Lmmt;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0xf

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_14
    goto/16 :goto_3b

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_18
    move-object v4, v3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_1a
    iput v5, v4, Lspq;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v0, 0x1196

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v4, Lspq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_1f
    check-cast v4, Lspq;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

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

    :goto_21
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_23
    if-nez v1, :cond_3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_24
    check-cast v1, Lspq;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v1, v1, Lmmw;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_26
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v0, v0, Lmmw;->j:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v0, Lmmu;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_29
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    throw v5

    nop

    :goto_2d
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2e
    iput v1, v4, Lspq;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

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

    :goto_30
    iput v3, v1, Lspq;->c:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_31
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_35
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-string v0, "Skip logging due to unknown thermal status"

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_38
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v3, v2, Ltkb;->b:Ltkg;

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

    :goto_3a
    throw v5

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3c
    iput v1, v4, Lspq;->b:I

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

    :goto_3d
    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3f
    add-int/lit8 v3, v0, -0x1

    nop

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

    :goto_40
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_41
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_43
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_44
    iget-object v1, p0, Lmmu;->d:Lmmt;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, p0, Lmmu;->g:Lmmw;

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

    :goto_46
    check-cast v0, Lspq;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_47
    sget-object v2, Lspq;->a:Lspq;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_48
    if-eqz v3, :cond_5

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4a
    or-int/lit8 v5, v5, 0x10

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4b
    iput v0, v1, Lspq;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_4c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4d
    if-eqz v3, :cond_6

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_6
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_4e
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v0, Lmmw;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_7
    goto/32 :goto_30

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

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

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_4
    const v1, 0x4

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

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lmmu;->e:Z

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    iget-object v0, p0, Lmmu;->d:Lmmt;

    nop

    new-instance v1, Lmms;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0, p0}, Lmms;-><init>(Lmmt;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    iget-object v0, v0, Lmmt;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    sget-object v0, Lmmu;->c:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    const/16 v1, 0x119a

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v1, "Was not registered as ThermalStatusListener on AppStop"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lmmu;->e:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop
.end method

.method public final declared-synchronized e()Lmmw;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lmmu;->f:Lmmw;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final f(Lmmv;)Lpci;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    :goto_2
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    throw p1

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    new-instance v0, Ller;

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

    :goto_8
    return-object v0

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_c
    const v1, 0x14

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0, p1, v1}, Ller;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1, v0}, Lmmv;->d(Lmmw;)V

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v1, Lmmw;->i:Lmmw;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Lmmu;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmmu;->f:Lmmw;

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onThermalStatusChanged(I)V
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p1, p0, Lmmu;->f:Lmmw;

    nop

    if-ne v0, p1, :cond_0

    nop

    nop

    monitor-exit p0

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_0
    sget-object p1, Lspq;->a:Lspq;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ltkg;->m()Ltkb;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ltkb;->o()V

    :cond_1
    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    check-cast v2, Lspq;

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v3, v2, Lspq;->e:I

    nop

    iget v3, v2, Lspq;->b:I

    nop

    or-int/lit8 v3, v3, 0x10

    nop

    nop

    nop

    nop

    iput v3, v2, Lspq;->b:I

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lmmu;->f:Lmmw;

    nop

    nop

    nop

    nop

    iget v2, v2, Lmmw;->j:I

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    invoke-virtual {p1}, Ltkb;->o()V

    :cond_2
    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v3, v1

    nop

    nop

    nop

    nop

    check-cast v3, Lspq;

    nop

    add-int/lit8 v4, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    nop

    iput v4, v3, Lspq;->d:I

    nop

    nop

    iget v2, v3, Lspq;->b:I

    nop

    nop

    or-int/lit8 v2, v2, 0x8

    nop

    nop

    iput v2, v3, Lspq;->b:I

    nop

    nop

    nop

    iget v2, v0, Lmmw;->j:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    invoke-virtual {p1}, Ltkb;->o()V

    :cond_3
    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    check-cast v1, Lspq;

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v2, -0x1

    nop

    nop

    nop

    if-eqz v2, :cond_5

    nop

    nop

    iput v3, v1, Lspq;->c:I

    nop

    iget v2, v1, Lspq;->b:I

    nop

    nop

    or-int/lit8 v2, v2, 0x4

    nop

    nop

    nop

    nop

    iput v2, v1, Lspq;->b:I

    nop

    iput-object v0, p0, Lmmu;->f:Lmmw;

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->VNzyOtDdLwjO:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    check-cast v2, Lmmv;

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

    :goto_3
    invoke-virtual {p1}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    sget-object v0, Lmmu;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x119e

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lspq;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    sget-object v0, Lmmu;->b:Ljava/util/Map;

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

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    sget-object p0, Lmmu;->c:Lsdb;

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

    :goto_b
    invoke-virtual {v0, p1}, Lmjv;->l(Lspq;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_c
    throw p1

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    :goto_14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1d

    nop

    nop

    :goto_17
    throw p1

    nop

    nop

    :cond_5
    :try_start_1
    throw v5

    nop

    nop

    nop

    nop

    :cond_6
    throw v5

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lmmw;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object p1, p0, Lmmu;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lmmu;->f:Lmmw;

    nop

    nop

    monitor-exit p0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lt v1, p0, :cond_7

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_7
    goto/32 :goto_14

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

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lmmu;->h:Lmjv;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0, v0, p1}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v2, v0}, Lmmv;->d(Lmmw;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_29
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    :goto_2a
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x20

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
