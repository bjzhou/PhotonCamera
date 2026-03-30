.class public final Lqza;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Z

.field private final c:Lrxw;

.field private final d:Lrxw;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lrxw;

    nop

    nop

    nop

    goto/32 :goto_4

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

    :goto_2
    iput-object v0, p0, Lqza;->d:Lrxw;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lrxw;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Lrxw;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lqza;->c:Lrxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Lqza;->b:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_9
    new-instance v0, Lrxw;

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final a()Lqzb;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrxw;->g()Lryb;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1, v2, v3, p0}, Lqzb;-><init>(ZZLryb;Lryb;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v3}, Lrxw;->g()Lryb;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    const v0, 0x10

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
    iget-object v1, p0, Lqza;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v3, p0, Lqza;->c:Lrxw;

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

    :goto_7
    new-instance v0, Lqzb;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

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

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    iget-boolean v2, p0, Lqza;->b:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_f
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lqza;->d:Lrxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    iget-object v0, p0, Lqza;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final b(Lqzd;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lrxw;->h(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqza;->c:Lrxw;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lqza;->a:Ljava/lang/Boolean;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lqza;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lqza;->a:Ljava/lang/Boolean;

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

    :goto_2
    const-string v2, "A SourcePolicy can only set internal() or external() once."

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xb

    nop

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

    nop

    :goto_9
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    :goto_d
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

    :goto_e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_f
    move v0, v1

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x1

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

    nop
.end method
