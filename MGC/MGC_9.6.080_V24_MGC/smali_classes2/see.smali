.class public final Lsee;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdr;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lsdr;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    const-string v3, "do_not_log_to_logcat"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

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
    goto/32 :goto_4

    nop

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
    const-class v1, Ljava/lang/Boolean;

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

    :goto_a
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lsee;->a:Lsdr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_d
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v3, v1, v2, v2}, Lsdr;-><init>(Ljava/lang/String;Ljava/lang/Class;ZZ)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
