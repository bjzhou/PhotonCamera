.class public final Lqzb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lqzb;


# instance fields
.field public final b:Z

.field public final c:Z

.field public final d:Lryb;

.field public final e:Lryb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lqza;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lqyz;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lqza;->a()Lqzb;

    goto/32 :goto_1b

    nop

    nop

    :goto_4
    goto :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move v1, v2

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-direct {v0}, Lqza;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, v3}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Lqza;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Lqza;->b(Lqzd;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lqza;->a()Lqzb;

    goto/32 :goto_18

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lqza;->c()V

    goto/32 :goto_2

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    :goto_11
    const-string v3, "A SourcePolicy can only set internal() or external() once."

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_23

    nop

    nop

    :goto_14
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    sput-object v0, Lqzb;->a:Lqzb;

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

    :goto_16
    invoke-direct {v1}, Lqyz;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    new-instance v0, Lqza;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    return-void

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lqza;->c()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lqza;->a()Lqzb;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v1, v0, Lqza;->a:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    new-instance v0, Lqza;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x6

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_23
    new-instance v0, Lqza;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_24
    iget-object v1, v0, Lqza;->a:Ljava/lang/Boolean;

    nop

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
.end method

.method public constructor <init>(ZZLryb;Lryb;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lqzb;->e:Lryb;

    nop

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

    nop

    :goto_2
    iput-boolean p2, p0, Lqzb;->c:Z

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

    :goto_3
    iput-boolean p1, p0, Lqzb;->b:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lqzb;->d:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method
