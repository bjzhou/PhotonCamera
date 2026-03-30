.class Lkrd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lksl;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Llqo;

.field public final c:Landroid/graphics/Rect;

.field public final d:Ljava/util/concurrent/Executor;

.field private final e:Lfxj;

.field private final f:Lgvg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sput-object v0, Lkrd;->a:Lsdb;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "krd"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Lfxj;Llqo;Lkxj;Lgvg;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lkrd;->f:Lgvg;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkrd;->d:Ljava/util/concurrent/Executor;

    nop

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkrd;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const-string p1, "BckndYuvEx"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lkrd;->e:Lfxj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget-object p1, p3, Lkxj;->c:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Lkrd;->b:Llqo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llko;)Lksk;
    .locals 8

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v7}, Lkqt;-><init>(Lkrc;)V

    goto/32 :goto_f

    nop

    nop

    :goto_1
    new-instance v5, Lkrf;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lkrd;->e:Lfxj;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_4
    new-instance v0, Lkqt;

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

    :goto_5
    iget-object v0, p1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    move-object v2, p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    new-instance v7, Lkrc;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v1 .. v6}, Lkrc;-><init>(Lkrd;Llxa;Lpcg;Llqs;Lkrz;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v2, Lkrx;->b:Lkrx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    invoke-direct {v6, v1, v2}, Lkrz;-><init>(Ljava/util/Set;Lkrx;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lkrd;->f:Lgvg;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    move-object v1, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lfxj;->b()Lpcg;

    move-result-object v4

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

    nop

    :goto_f
    return-object v0

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    :goto_13
    new-instance v6, Lkrz;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, v1, Lgvg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x12

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

    nop

    :goto_19
    invoke-direct {v5, v0, v4}, Lkrf;-><init>(Llxa;Lpcg;)V

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    iget-object v3, p1, Llko;->d:Ljava/lang/Object;

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
.end method

.method public final b(Llko;)Lksk;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lkrd;->a(Llko;)Lksk;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method
