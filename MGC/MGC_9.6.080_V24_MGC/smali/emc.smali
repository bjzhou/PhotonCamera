.class public final Lemc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbox;

.field public static final b:Lbox;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    sget-object v1, Lbrg;->a:Lbrg;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_4
    sput-object v2, Lemc;->b:Lbox;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v2, Lemc;->a:Lbox;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    goto/32 :goto_13

    nop

    nop

    :goto_8
    sget-object v0, Ltx;->g:Ltx;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v2, v1, v0}, Lbmx;-><init>(Lbqt;Luaz;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    const v0, 0x20

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    invoke-direct {v2, v1, v0}, Lbmx;-><init>(Lbqt;Luaz;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v2, Lbmx;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    sget-object v0, Ltx;->f:Ltx;

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

    :goto_12
    new-instance v2, Lbmx;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop
.end method
