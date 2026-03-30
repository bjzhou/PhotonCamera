.class public final Ltwk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltwj;


# static fields
.field public static final a:Lqxp;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    invoke-static/range {v1 .. v7}, Lqxt;->b(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZZ)Lqxp;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v3, "com.google.android.libraries.performance.primes"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x17

    nop

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

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    sput-object v0, Ltwk;->a:Lqxp;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    invoke-direct {v4, v0}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "45647278"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "CLIENT_LOGGING_PROD"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    const/4 v6, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    new-instance v4, Lsbt;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    :goto_12
    const v0, 0x16

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    sget-object v0, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lqxp;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Ltwk;->a:Lqxp;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop
.end method
