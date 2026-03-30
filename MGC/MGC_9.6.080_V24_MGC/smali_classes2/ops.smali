.class public final Lops;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lnar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final b:Lolx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {v1, v2, v0, v3}, Lnar;-><init>(Ljava/lang/Object;Ljava/lang/Object;[B)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lopr;

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

    :goto_5
    const v0, 0x18

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

    :goto_6
    goto/32 :goto_2

    nop

    :goto_7
    const/4 v3, 0x0

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

    :goto_8
    sput-object v1, Lops;->a:Lnar;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Lopr;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_d
    new-instance v1, Lnar;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v0, Lops;->b:Lolx;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    :goto_11
    const-string v2, "Phenotype.API"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
