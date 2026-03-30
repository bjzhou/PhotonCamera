.class final Lqoo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lupm;

.field public final b:Ljava/lang/Long;

.field public final c:Ljava/lang/Long;

.field public final d:Ljava/lang/Long;

.field public final e:Ljava/lang/Long;

.field public final f:Lupc;

.field public final g:Ljava/lang/String;

.field public final h:Lupq;

.field public final i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lupm;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lupc;Ljava/lang/String;Lupq;Ljava/lang/Integer;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lqoo;->e:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p7, p0, Lqoo;->g:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object p4, p0, Lqoo;->d:Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lqoo;->c:Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iput-object p2, p0, Lqoo;->b:Ljava/lang/Long;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    iput-object p1, p0, Lqoo;->a:Lupm;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    iput-object p8, p0, Lqoo;->h:Lupq;

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

    nop

    nop

    :goto_9
    iput-object p6, p0, Lqoo;->f:Lupc;

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

    :goto_a
    iput-object p9, p0, Lqoo;->i:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    iget-object v3, p0, Lqoo;->e:Ljava/lang/Long;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lqoo;->c:Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "StatsRecord:\n  elapsed: %d\n  current: %d\n  Primes version: %d\n  version name #: %d\n  customName: %s\n"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Lqoo;->d:Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lqoo;->g:Ljava/lang/String;

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

    :goto_c
    iget-object v0, p0, Lqoo;->b:Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_10
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
