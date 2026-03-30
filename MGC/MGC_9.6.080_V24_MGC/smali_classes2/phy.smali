.class public final Lphy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lpgi;

.field public d:Z

.field public e:Lpro;

.field public f:Z

.field public g:Z

.field public h:Lpuq;

.field private final i:Lpdf;

.field private final j:Lhdn;


# direct methods
.method public constructor <init>(Lhdn;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lphy;->e:Lpro;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lphy;->h:Lpuq;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lphy;->c:Lpgi;

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

    :goto_5
    iget-object p1, p1, Lhdn;->a:Ljava/lang/Object;

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

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lphy;->i:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lphy;->j:Lhdn;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 4

    goto/32 :goto_35

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    const-string v3, "#onStarted"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v1, p0, Lphy;->f:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lphy;->c:Lpgi;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_4
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lpuq;->dN()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lpuq;->dO()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v1, p0, Lphy;->a:Z

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

    :goto_8
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lphy;->i:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-boolean v1, p0, Lphy;->b:Z

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

    :goto_d
    iput-boolean v1, p0, Lphy;->g:Z

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

    :goto_e
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, v0, Lhdn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Lpuq;->cK()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lphy;->i:Lpdf;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    iget-object v0, p0, Lphy;->j:Lhdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v1}, Lpdf;->g()V

    :goto_19
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_4

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

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-boolean v1, p0, Lphy;->f:Z

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lpuq;->dN()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1d
    invoke-interface {v0}, Lpdf;->g()V

    :goto_1e
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x0

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

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Lphy;->e:Lpro;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_22
    iput-object v0, p0, Lphy;->e:Lpro;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Lpuq;->cJ()V

    :goto_24
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v3, "#onImages"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-boolean v1, p0, Lphy;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_28
    iget-object v0, p0, Lphy;->h:Lpuq;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_29
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2a
    iput-object v0, p0, Lphy;->h:Lpuq;

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

    :goto_2b
    iget-object v1, p0, Lphy;->i:Lpdf;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p0, Lphy;->i:Lpdf;

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

    :goto_2d
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    :goto_2e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2f
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    :goto_30
    iget-object v1, p0, Lphy;->i:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Lphy;->i:Lpdf;

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_33
    iget-object v1, p0, Lphy;->c:Lpgi;

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

    :goto_34
    iget-object v1, v0, Lhdn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_35
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_36
    iput-boolean v1, p0, Lphy;->d:Z

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_37
    iget-boolean v1, p0, Lphy;->g:Z

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Lpuq;->cV()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const-string v3, "#onComplete"

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

    :goto_3a
    invoke-virtual {v0}, Lpuq;->dN()Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3b
    const/4 v0, 0x0

    nop

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

    :goto_3c
    iget-boolean v1, p0, Lphy;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3d
    iget-boolean v1, p0, Lphy;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3f
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_40
    throw p0

    nop

    :goto_41
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v1}, Lpuq;->cW(Lpro;)V

    :goto_43
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_45
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v1}, Lpdf;->g()V

    :goto_47
    goto/32 :goto_37

    nop

    nop

    nop
.end method
