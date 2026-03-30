.class public final Lgay;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkuc;


# instance fields
.field private final a:Lkuc;

.field private final b:Loyd;

.field private final c:Loyd;

.field private final d:Loyd;

.field private final e:Loyd;


# direct methods
.method public constructor <init>(Loyd;Loyd;Loyd;Loyd;Lkuc;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lgay;->a:Lkuc;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput-object p3, p0, Lgay;->d:Loyd;

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

    :goto_2
    iput-object p4, p0, Lgay;->e:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-object p1, p0, Lgay;->b:Loyd;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    iput-object p2, p0, Lgay;->c:Loyd;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Loyd;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lgay;->a:Lkuc;

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

    :goto_1
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    aput-object v2, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    aput-object v2, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    new-array v0, v0, [Loyd;

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

    :goto_6
    iget-object p0, p0, Lgay;->e:Loyd;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aput-object v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    aput-object v2, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Loxz;->a(Loyd;)Loyd;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Lgay;->b:Loyd;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_12
    invoke-interface {v1}, Lkuc;->a()Loyd;

    move-result-object v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    :goto_14
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    iget-object v2, p0, Lgay;->c:Loyd;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aput-object p0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Lgay;->d:Loyd;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0}, Loyi;->c([Loyd;)Loyd;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x1b

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final b()Loyd;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lgay;->a:Lkuc;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lkuc;->b()Loyd;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final c(Lkub;Llko;)V
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
    invoke-interface {p0, p1, p2}, Lkuc;->c(Lkub;Llko;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgay;->a:Lkuc;

    nop

    goto/32 :goto_1

    nop

    nop
.end method
