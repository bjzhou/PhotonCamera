.class public final Lqts;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltxm;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p2, p0, Lqts;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqts;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Lqro;Ltud;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p2, p0, Lqts;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqts;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lqmf;)Ltkb;
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    move-object v2, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, v0, Ltkb;->b:Ltkg;

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

    :goto_6
    const/16 v2, 0x152b

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_7
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_8
    sget-object p1, Lqmo;->a:Lsdb;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v3, v2, Luqp;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    :goto_c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, v1, Luqp;->e:Ljava/lang/String;

    nop

    nop

    nop

    :goto_e
    :try_start_0
    sget-object p1, Luqh;->a:Luqh;

    nop

    invoke-virtual {p1}, Ltkg;->m()Ltkb;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lqts;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    check-cast v1, Lqro;

    nop

    nop

    iget-object v1, v1, Lqro;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Landroid/content/Context;

    nop

    nop

    nop

    invoke-static {v1}, Lqnz;->a(Landroid/content/Context;)Lqoa;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lqro;

    nop

    nop

    nop

    iget-object p0, p0, Lqro;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p0, Lhdn;

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Lhdn;->L(Lqoa;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v1}, Lqro;->b(ZLqoa;)Luqg;

    move-result-object p0

    nop

    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    invoke-virtual {p1}, Ltkb;->o()V

    :cond_0
    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v1, Luqh;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v1, Luqh;->c:Luqg;

    nop

    iget p0, v1, Luqh;->b:I

    nop

    nop

    nop

    nop

    or-int/2addr p0, v4

    nop

    nop

    nop

    nop

    iput p0, v1, Luqh;->b:I

    nop

    nop

    nop

    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_1
    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast p0, Luqp;

    nop

    nop

    invoke-virtual {p1}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    nop

    check-cast p1, Luqh;

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Luqp;->d:Luqh;

    nop

    nop

    nop

    nop

    nop

    iget p1, p0, Luqp;->b:I

    nop

    nop

    nop

    or-int/lit8 p1, p1, 0x2

    nop

    iput p1, p0, Luqp;->b:I

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean v4, v2, Luqp;->c:Z

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "Failed to get process stats."

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

    nop

    :goto_13
    goto/16 :goto_2a

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_15
    iput v3, v2, Luqp;->b:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    or-int/lit8 v2, v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    :goto_18
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    or-int/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1a
    iget v2, v1, Luqp;->b:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1b
    iget-object v1, v0, Ltkb;->b:Ltkg;

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

    :goto_1c
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1d
    iput v2, v1, Luqp;->b:I

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

    :goto_1e
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1f
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v0, Luqp;->a:Luqp;

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

    :goto_21
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_22
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v1, Luqp;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_24
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    :goto_25
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_27
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_29
    iget-object p1, p1, Lqmf;->a:Ljava/lang/String;

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_18

    nop

    :goto_2c
    if-eqz p1, :cond_6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto :goto_30

    nop

    nop

    :catch_0
    move-exception p0

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

    :goto_2e
    check-cast v2, Luqp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1, v2, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_30
    goto/32 :goto_b

    nop

    nop

    :goto_31
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop
.end method
