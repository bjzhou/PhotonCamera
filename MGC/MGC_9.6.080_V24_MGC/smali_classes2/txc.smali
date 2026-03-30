.class public final Ltxc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltxb;


# static fields
.field public static final a:Lqxp;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    const/4 v8, 0x0

    nop

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

    :goto_4
    invoke-static/range {v1 .. v8}, Lqxt;->c(Ljava/lang/String;Lqxs;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ZZZ)Lqxp;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "CLIENT_LOGGING_PROD"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v3, "EOgHGAM"

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

    :goto_9
    invoke-direct {v5, v0}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_d
    const-string v4, "com.google.android.libraries.performance.primes"

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

    :goto_e
    sget-object v0, Lsbn;->a:Lsbn;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v6, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x18

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

    :goto_13
    invoke-direct {v2, v0}, Lqxr;-><init>(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    const/4 v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    const-string v1, "17"

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

    :goto_16
    new-instance v5, Lsbt;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sput-object v0, Ltxc;->a:Lqxp;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_18
    new-instance v2, Lqxr;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Luqi;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lqxp;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    check-cast p0, Luqi;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    sget-object p0, Ltxc;->a:Lqxp;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
