.class public final synthetic Lges;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnmu;


# instance fields
.field public final synthetic a:Lowu;

.field public final synthetic b:Ljph;

.field public final synthetic c:Lgfh;

.field public final synthetic d:Loyd;

.field public final synthetic e:Lgfj;

.field public final synthetic f:Lfwv;


# direct methods
.method public synthetic constructor <init>(Lowu;Ljph;Lgfh;Lfwv;Loyd;Lgfj;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lges;->b:Ljph;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lges;->f:Lfwv;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p6, p0, Lges;->e:Lgfj;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lges;->c:Lgfh;

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

    :goto_6
    iput-object p1, p0, Lges;->a:Lowu;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Lges;->d:Loyd;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 5

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lges;->d:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lfwv;->i()Lows;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Lgfs;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x7

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v2, Lstd;->a:Lstd;

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

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lges;->f:Lfwv;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, v2, v3}, Lgfs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1, v2, v3, v4}, Lfzj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_a

    nop

    nop

    :goto_a
    iget-object v1, p0, Lges;->a:Lowu;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, v1, v2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    const v1, 0x18

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Lges;->e:Lgfj;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Lges;->c:Lgfh;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lges;->b:Ljph;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v0}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_7

    nop

    nop

    :goto_17
    new-instance v0, Lfzj;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_19
    const v0, 0x15

    nop

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

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method
