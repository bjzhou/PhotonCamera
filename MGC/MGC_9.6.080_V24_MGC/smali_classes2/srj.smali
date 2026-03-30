.class public final synthetic Lsrj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    nop

    :goto_3
    new-array v0, v0, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lsrj;->a:[I

    nop

    nop

    :try_start_0
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    nop

    nop

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lsrj;->a:[I

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    aput v2, v0, v1

    nop
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lsrj;->a:[I

    nop

    nop

    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lsrj;->a:[I

    nop

    nop

    nop

    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    nop

    nop

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

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

    nop
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lsrj;->a:[I

    nop

    nop

    nop

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lsrj;->a:[I

    nop

    nop

    sget-object v1, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x6

    nop

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lsrj;->a:[I

    nop

    nop

    nop

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    nop

    nop

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    nop

    nop

    const/4 v2, 0x7

    nop

    aput v2, v0, v1

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lsrj;->a:[I

    nop

    nop

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    const/16 v2, 0x8

    nop

    nop

    aput v2, v0, v1

    nop

    nop

    nop
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method
