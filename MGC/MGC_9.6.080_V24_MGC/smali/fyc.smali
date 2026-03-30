.class public final Lfyc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final b:Lfyb;


# instance fields
.field public a:Lfyb;

.field private final c:Lowu;

.field private final d:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    sput-object v0, Lfyc;->b:Lfyb;

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

    nop

    :goto_2
    invoke-direct {v0}, Lfxo;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lfxo;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lowu;Liof;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lfyc;->d:Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p1, p0, Lfyc;->c:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lokp;)Lfyb;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    sget-object p0, Lfyc;->b:Lfyb;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x8

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lfyc;->c:Lowu;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Lfyb;->c()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lfyc;->a:Lfyb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p0, v1}, Lfxf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lfyc;->a:Lfyb;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_11

    nop

    :goto_10
    iget-object v0, p0, Lfyc;->a:Lfyb;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p1}, Liof;->I(Lokp;)Lfyb;

    move-result-object p1

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

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    iget-object v0, p0, Lfyc;->d:Liof;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lfxf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    :goto_1b
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    :goto_1c
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
