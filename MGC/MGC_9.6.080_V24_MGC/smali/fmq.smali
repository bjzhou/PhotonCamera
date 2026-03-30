.class final synthetic Lfmq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    sput-object v0, Lfmq;->a:[I

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

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
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lfmq;->a:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lfmq;->a:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    nop

    nop

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    nop

    nop

    const/4 v2, 0x3

    nop

    aput v2, v0, v1

    nop
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lfmq;->a:[I

    nop

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    nop

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    nop

    nop

    const/4 v2, 0x4

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
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    array-length v0, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_7
    new-array v0, v0, [I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
