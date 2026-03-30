.class public final synthetic Lcdx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-array v0, v0, [I

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    nop

    nop

    invoke-virtual {v2}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result v2

    nop

    nop

    nop

    nop

    aput v1, v0, v2

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_15

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    :try_start_1
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    invoke-virtual {v2}, Landroid/graphics/Paint$Style;->ordinal()I

    move-result v2

    nop

    nop

    nop

    nop

    aput v1, v0, v2

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lcdx;->a:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    array-length v0, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lcdx;->b:[I

    nop

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

    :goto_5
    const v1, 0xd

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    array-length v0, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    new-array v0, v0, [I

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    array-length v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/graphics/Paint$Style;->values()[Landroid/graphics/Paint$Style;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :goto_e
    const v0, 0x5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    :goto_14
    new-array v0, v0, [I

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    sget-object v4, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    nop

    nop

    invoke-virtual {v4}, Landroid/graphics/Paint$Join;->ordinal()I

    move-result v4

    nop

    nop

    nop

    nop

    aput v1, v0, v4

    nop

    nop
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    nop

    nop

    invoke-virtual {v1}, Landroid/graphics/Paint$Join;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/graphics/Paint$Join;->ordinal()I

    move-result v1

    nop

    nop

    nop

    aput v3, v0, v1

    nop

    nop
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result v3

    nop

    aput v2, v0, v3

    nop
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v3, 0x3

    nop

    nop

    :try_start_6
    sget-object v4, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    nop

    nop

    invoke-virtual {v4}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result v4

    nop

    aput v3, v0, v4

    nop

    nop
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method
