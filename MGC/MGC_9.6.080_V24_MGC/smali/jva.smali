.class final Ljva;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkag;


# instance fields
.field final synthetic a:Lkjh;

.field final synthetic b:Lkag;

.field final synthetic c:Ljvj;

.field final synthetic d:Lqem;

.field final synthetic e:Z

.field final synthetic f:J

.field final synthetic g:Ljvk;

.field final synthetic h:Lrbh;


# direct methods
.method public constructor <init>(Ljvk;Lkjh;Lkag;Lrbh;Ljvj;Lqem;ZJ)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    :goto_0
    iput-object p6, p0, Ljva;->d:Lqem;

    nop

    goto/32 :goto_4

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide p8, p0, Ljva;->f:J

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iput-boolean p7, p0, Ljva;->e:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Ljva;->h:Lrbh;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Ljva;->g:Ljvk;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Ljva;->b:Lkag;

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

    :goto_8
    iput-object p5, p0, Ljva;->c:Ljvj;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Ljva;->a:Lkjh;

    nop

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

    nop
.end method


# virtual methods
.method public final a(Ljzx;)V
    .locals 4

    goto/32 :goto_41

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    nop

    :goto_1
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, p1}, Lkag;->a(Ljzx;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    :goto_5
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Ljvj;->r:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_1
    goto/32 :goto_3a

    nop

    nop

    :goto_8
    iget-object v0, p0, Ljva;->a:Lkjh;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Ljva;->h:Lrbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1, v2}, Lj$/time/Duration;->of(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    iget-wide v0, p0, Ljva;->f:J

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_e
    iget-object v2, v2, Ljvk;->s:Loyn;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v0, 0xa50

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_3c

    nop

    nop

    :goto_11
    invoke-static {p1, v0}, Lj$/util/concurrent/DesugarTimeUnit;->convert(Ljava/util/concurrent/TimeUnit;Lj$/time/Duration;)J

    move-result-wide v0

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

    nop

    nop

    :goto_12
    invoke-interface {v0}, Lqem;->c()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Ljva;->g:Ljvk;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v0, "Didn\'t take second shot since UI resources are missing"

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

    nop

    :goto_15
    iget-object p1, p1, Ljvk;->x:Llko;

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

    nop

    :goto_16
    iget-object v0, p0, Ljva;->d:Lqem;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    if-gez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    :goto_18
    check-cast v0, Lfdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Ljva;->b:Lkag;

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

    :goto_1b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_44

    nop

    :goto_1e
    cmp-long v0, v0, v2

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1f
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p1, p1, Ljvj;->r:Lrss;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p1, p0, Ljvj;->r:Lrss;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v2, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, p0, Ljva;->c:Ljvj;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_b

    nop

    nop

    :goto_27
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v1, Landroid/util/Pair;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2a
    iget-object p0, p0, Ljva;->c:Ljvj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2b
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

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

    nop

    :goto_2c
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2d
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

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

    :goto_2e
    iput-object p1, v0, Ljvj;->u:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object p1, Ljvk;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v2, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_31
    iget-object v2, p0, Ljva;->g:Ljvk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_32
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_33
    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_34
    invoke-virtual {p1, v0}, Llko;->a(Lkbz;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v2, Landroid/util/Pair;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_36
    check-cast p1, Lscz;

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

    :goto_37
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_38
    iget-object v0, p0, Ljva;->c:Ljvj;

    nop

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

    :goto_39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_31

    nop

    nop

    :goto_3a
    iget-object p1, p0, Ljva;->g:Ljvk;

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

    :goto_3b
    sget-object p1, Ljvk;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3c
    iget-object p1, v0, Ljvk;->s:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Lrbh;->i()V

    goto/32 :goto_42

    nop

    nop

    :goto_3e
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3f
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_41
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_42
    iget-object v0, p0, Ljva;->c:Ljvj;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-boolean p1, p0, Ljva;->e:Z

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_46
    iget-boolean p1, p0, Ljva;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v0}, Lkjh;->a()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_49
    invoke-interface {p1, v1}, Loyn;->a(Ljava/lang/Object;)V

    :goto_4a
    goto/32 :goto_2f

    nop

    nop

    nop
.end method

.method public final b(JLkak;)V
    .locals 3

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Ljky;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, p1, p2}, Lkjh;->b(J)V

    goto/32 :goto_16

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ljva;->g:Ljvk;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_6
    iget-object p1, p0, Ljva;->h:Lrbh;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-static {p1}, Lrrf;->x(Z)V

    goto/32 :goto_2

    nop

    nop

    :goto_b
    iget-boolean p1, p2, Ljvj;->p:Z

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

    :goto_c
    iget-object p1, p2, Ljvj;->g:Lkji;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0, p1, p2, p3}, Lkag;->b(JLkak;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p0, Ljvk;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-wide/16 v1, 0x3a98

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lrbh;->i()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p0, p2, Ljvj;->r:Lrss;

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Ljva;->b:Lkag;

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

    :goto_17
    iget-object p0, p0, Ljvk;->l:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    nop

    nop

    :goto_19
    iget-object p2, p2, Ljvj;->a:Llxm;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_1
    goto/32 :goto_26

    nop

    :goto_1b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Ljva;->a:Lkjh;

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

    :goto_1d
    iget-object v0, p0, Ljvk;->l:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, p1, p3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto/32 :goto_c

    nop

    nop

    :goto_1f
    invoke-static {p1, p2, p0}, Ljvk;->f(Lkji;Llxm;Landroid/os/Handler;)V

    goto/32 :goto_8

    nop

    nop

    :goto_20
    iget-object p2, p0, Ljva;->c:Ljvj;

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

    nop

    :goto_21
    iput-object p1, p2, Ljvj;->s:Lrss;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 p3, 0xa

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_25
    invoke-direct {p1, p0, p2, p3}, Ljky;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_2a

    nop

    nop

    :goto_26
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_28
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_29
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2a
    iget-object p3, p2, Ljvj;->a:Llxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop
.end method
