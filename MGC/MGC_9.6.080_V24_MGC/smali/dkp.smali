.class public abstract Ldkp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldlv;

.field public static final b:Ldlj;

.field public static final c:Ldlj;

.field public static final d:Ldlj;

.field public static final e:Ldlj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "cursive"

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Ldkp;->d:Ldlj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ldlj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v2, "FontFamily.Serif"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "sans-serif"

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_6
    invoke-direct {v0, v1, v2}, Ldlj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    :goto_7
    invoke-direct {v0, v1, v2}, Ldlj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xc

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ldkh;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Ldkp;->b:Ldlj;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ldlj;

    nop

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

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ldkh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    const-string v1, "serif"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    const v0, 0x10

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    invoke-direct {v0, v1, v2}, Ldlj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_15
    new-instance v0, Ldlj;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, v1, v2}, Ldlj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sput-object v0, Ldkp;->c:Ldlj;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "monospace"

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Ldlj;

    nop

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

    :goto_1a
    sput-object v0, Ldkp;->a:Ldlv;

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

    :goto_1b
    const-string v2, "FontFamily.Cursive"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1c
    const-string v2, "FontFamily.Monospace"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1e
    sput-object v0, Ldkp;->e:Ldlj;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    const-string v2, "FontFamily.SansSerif"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method
