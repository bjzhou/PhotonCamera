.class public final Lrbo;
.super Lrbt;
.source "PG"


# static fields
.field public static final a:Lrbt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lrbo;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lrbo;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lrbo;->a:Lrbt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lrbt;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    const-string p0, "singleproc"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final synthetic b(Lrbg;Ljava/lang/String;Ljava/util/concurrent/Executor;Lhdn;)Lrbp;
    .locals 8

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v4, Lrbw;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Lrbp;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    return-object p1

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v1 .. v7}, Lrbp;-><init>(Ljava/lang/String;Lsui;Lrbw;Ljava/util/concurrent/Executor;Lhdn;Lrss;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    const v1, 0x17

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

    :goto_8
    iget-object p0, p1, Lrbg;->a:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    invoke-direct {v4, v0, p0}, Lrbw;-><init>(Ltlq;Ltjv;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    sget-object p0, Ltjv;->a:Ltjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p0, Ltlz;->a:Ltlz;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    const v0, 0xc

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_14
    move-object v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    iget-object v0, p1, Lrbg;->b:Ltlq;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    sget-object p0, Ltjv;->a:Ltjv;

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_18

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean p0, p1, Lrbg;->e:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    move-object v1, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    move-object v6, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v7, p1, Lrbg;->c:Lrss;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
