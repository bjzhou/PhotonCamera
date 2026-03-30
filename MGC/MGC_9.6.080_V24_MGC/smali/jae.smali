.class public final Ljae;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lhco;

.field public final b:Lmwy;

.field public final c:Lnxc;

.field public d:Lenp;

.field public final e:Lfdn;

.field private final f:Lowu;

.field private final g:Loyd;

.field private h:Lpci;


# direct methods
.method public constructor <init>(Lfdn;Lhco;Lmwy;Lnxc;Lowu;Loyd;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p6, p0, Ljae;->g:Loyd;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iput-object p3, p0, Ljae;->b:Lmwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ljae;->e:Lfdn;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Ljae;->c:Lnxc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput-object p2, p0, Ljae;->a:Lhco;

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

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Ljae;->f:Lowu;

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
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/lang/Runnable;Lows;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iget-object p1, p0, Ljae;->f:Lowu;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Ljae;->g:Loyd;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    const v1, 0xb

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x11

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ljae;->h:Lpci;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v2, 0x8

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p3, p1}, Lows;->d(Lpci;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, v1, p1}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_d
    iput-object p1, p0, Ljae;->h:Lpci;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, p0, p2, p1, v2}, Lfvh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v1, Lfvh;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    invoke-interface {v0}, Lpci;->close()V

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
