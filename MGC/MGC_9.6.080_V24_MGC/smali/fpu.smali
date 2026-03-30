.class public abstract Lfpu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lfpu;

.field public static final b:Lfpu;

.field public static final c:Lfpu;

.field public static final d:Lfpu;

.field public static final e:Lfpu;

.field public static final f:Lfjo;

.field static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v3, v0, v2}, Lfjo;-><init>(Ljava/lang/String;Ljava/lang/Object;Lfjn;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lfpq;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lfps;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lfpu;->a:Lfpu;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lfpu;->b:Lfpu;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Lfpt;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lfps;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Lfjo;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
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

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_c
    const-string v3, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v1, Lfpu;->d:Lfpu;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    sget-object v2, Lfjo;->a:Lfjn;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Lfpr;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    sput-object v0, Lfpu;->e:Lfpu;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    sput-boolean v0, Lfpu;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    invoke-direct {v1}, Lfpt;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lfpq;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    new-instance v0, Lfpr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    sput-object v1, Lfpu;->f:Lfjo;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sput-object v0, Lfpu;->c:Lfpu;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_9

    nop

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

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method


# virtual methods
.method public abstract a(IIII)F
.end method

.method public abstract b(IIII)I
.end method
